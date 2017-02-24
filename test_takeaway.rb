require 'test/unit'
require_relative 'takeaway_class'
require_relative 'cook_class'


class PlacesSearchTest < Test::Unit::TestCase

  def test_get_client_coordinates
  #test case
  customer = PlacesSearch.new("client", "2010", "Italian")
  #assertion
  expected = "2010"
  actual = customer.postcode
  msg = "Looking for customer postcode 2010"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_location_non_postcode
  #test case
  customer = PlacesSearch.new("client", "2010", "Italian")
  #assertion
  expected = "2010"
  actual = customer.postcode
  msg = "Looking for error message"
  #expected
  assert_equal(expected, actual, msg)
  end

  def test_cuisine
  #test case
  customer = PlacesSearch.new("client", "2010", "Italian")
  #assertion
  expected = "Italian"
  actual = customer.cuisine
  msg = "Looking for cusine type"
  #expected
  assert_equal(expected, actual, msg)
  end


end
