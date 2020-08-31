require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

  def setup
    @store = stores(:prasanth)
    @customer = @store.customers.build(name: "firstcustomer")
  end

  test "name should not be empty" do
    @customer.name = ""
    assert_not @customer.valid?
  end

end
