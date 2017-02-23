require 'test/unit'
require_relative 'cook_class'

class CookTest < Test::Unit::TestCase

  def test_full_name_object_is_complete
    #test case
    customer = Cook.new("Peter", "egg", 1, 4, 30, "2010")
    #assertion
    expected = "Peter, egg, 1, 4, 30, 2010"
    
    output = "#{customer.name}, #{customer.allergy}, #{customer.taste_preference}, #{customer.ability_rating}, #{customer.age}, #{customer.postcode}"
    #expected
    assert_equal(expected, output)
  end

  def test_ability_rating_is_integer
    #test_case
    customer = Cook.new("Peter", "egg", 1, 4, 30, "2010")
    #assertion
    expected = 4

    output = customer.ability_rating
    #expected
    assert_equal(expected,output)
  end

  def test_age_is_integer
    #test_case
    customer = Cook.new("Peter", "egg", 1, 4, 30, "2010")
    #assertion
    expected = 30

    output = customer.age
    #expected
    assert_equal(expected,output)
  end
end