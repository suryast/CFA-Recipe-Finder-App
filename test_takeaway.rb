require 'test/unit'
require_relative 'takeaway_class'


class TakeAwayTest < Test::Unit::TestCase

  def test_location
  #test case
  customer = PlacesSearch.new("client", "2010", "Italian")
  #assertion
  expected = "2010"
  actual = customer.location
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_location_non_postcode
  #test case
  customer = PlacesSearch.new("client","earth", "Italian")
  #assertion
  expected = "nope"
  actual = customer.location
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_cuisine
  #test case
  customer = PlacesSearch.new("client", "2010", "Italian")
  #assertion
  expected = "Italian"
  actual = customer.cuisine
  msg = "#{customer.location}, #{customer.allergen}, #{customer.cuisine}, #{customer.suitable_age_group}"
  #expected
  assert_equal(expected, actual, msg)
  end


end
