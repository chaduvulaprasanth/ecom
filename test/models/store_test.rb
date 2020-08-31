require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  def setup
    @store = Store.create!(name: "chaduvla")
  end

 test "name should not be empty" do
   @store.name = ""
   assert_not @store.valid?
 end
end
