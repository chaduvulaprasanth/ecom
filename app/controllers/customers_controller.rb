class CustomersController < ApplicationController

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render status: :ok, json: {notice: "created successfully"}
    else
      render status: :unprocessable_entity, json: {errors: @customer.errors.full_messages}
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name)
  end
end
