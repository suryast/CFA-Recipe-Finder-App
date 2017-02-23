require 'test/unit'
require_relative 'takeaway_class'


class TakeAwayTest < Test::Unit::TestCase

  def test_location
  #test case
  customer = TakeAway.new("2010", "Dairy", "Italian", "30")
  #assertion
  expected = "2010"
  actual = customer.location
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_location_non_postcode
  #test case
  customer = TakeAway.new("earth", "Dairy", "Italian", "30")
  #assertion
  expected = "nope"
  actual = customer.location
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_cuisine
  #test case
  customer = TakeAway.new("2010", "Dairy", "Italian", "30")
  #assertion
  expected = "Italian"
  actual = customer.cuisine
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_takeaway_suggestion
  #testing customer with no allergies
  customer = TakeAway.new("2060", "", "Italian", "30")
  expected = ""
  actual = customer.allergen
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  assert_equal(expected, actual, msg)
  end

end