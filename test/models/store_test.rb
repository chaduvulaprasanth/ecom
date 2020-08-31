require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  def setup
    @store = Store.new(name: "chaduvla")
    @store.save
  end

 test "name should not be empty" do
   @store.name = ""
   assert_not @store.valid?
 end

 test "name should not be too small" do
    @store.name = "a" * 4
    assert_not @store.valid?
  end
  
  test "name should not be too long" do
    @store.name = "a" * 51
    assert_not @store.valid?
  end
end
