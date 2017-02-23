require 'test/unit'
require_relative 'fooditems'

class FoodItems_test < Test::Unit::TestCase

  def test_name_of_food_item
    customer = FoodItem.new("chicken_meat", "eggs")
    actual = customer.name_of_food_item
    expected = "chicken_meat"
    msg = "checkin_meat not correct"
    assert_equal(expected, actual, msg)
  end
  def test_allergen
    customer = FoodItem.new("chicken_meat", "eggs")
    actual = customer.allergen
    expected = "eggs"
    msg = "eggs not working"
    assert_equal(expected, actual, msg)
  end
end