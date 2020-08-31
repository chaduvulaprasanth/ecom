class StoresController < ApplicationController
  
  def create 
    @store = Store.new(store_params)
    if @store.save
      render status: :ok, json: { notice: "successfully create"}
    else
      render status: :unprocessable_entity, json: {errors: @store.errors.full_messages}
    end
  end

  private

  def store_params
    params.require(:store).permit(:name)
  end
end
