require 'test/unit'
require_relative 'recipe_class'

class RecipeTest < Test::Unit::TestCase

  def test_recipe_class
    #test case
    recipe_1 = Recipe.new("eggs", 1, "Vegan", 1, 25)
    expected = "eggs", 1, "Vegan", 1, 25
    actual = recipe_1.food_items, recipe_1.difficulty, recipe_1.allergy, recipe_1.taste_preference, recipe_1.cooking_duration
    assert_equal(expected, actual)
  end

  def test_recipe_ingredients
    #test case
    recipe_1 = Recipe.new("eggs", 1, "Vegan", 1, 25)
    #assertion
    expected = "eggs"
    actual = recipe_1.food_items

    #expected
    assert_equal(expected, actual)
  end

  def test_recipe_difficuly
    #test case for difficulty
    recipe_1 = Recipe.new("eggs", 1, "Vegan", 1, 25)
    #assertion
    expected = 1
    actual = recipe_1.difficulty
    assert_equal(expected, actual)
  end
end