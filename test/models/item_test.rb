require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @store = stores(:prasanth)
    @item = @store.items.build(name: "apple", cost: 20)
  end

  test "item should be valid" do
    assert @item.valid?
  end

 test "name should not be empty" do
   @item.name = ""
   assert_not @item.valid?
 end
end
