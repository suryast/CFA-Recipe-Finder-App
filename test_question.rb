require 'test/unit'
require_relative 'question_class'


class TakeAwayTest < Test::Unit::TestCase

  def test_create_object
  #test case
  questions_new = {
  #question hash for asking all the questions.
  question_1: "What is your name?",
  question_2: "What is your age?",
  question_3: "What is your postcode",
  question_4: "Do you have any dietery requirements?
    1. Yes
    2. No",
  question_5: "What are your dietery requirements?\n
    1. Vegan\n
    2. GF\n
    3. DF\n
    4. No restrictions",
  question_6: "What type of food would you prefer?(1-3)\n
    1. Spicy\n
    2. Sweet\n
    3. Savoury",
  question_7: "How would you rate your cooking ability? (1-5)\n
    1. Poor, don't make me boil more than water\n
    2. Alright, can boil eggs\n
    3. Average, I can cook most foods\n
    4. Good, my mum thinks so atleast\n
    5. Amazing, I can do anything",
  question_8: "How many ingredients do you have?",
  question_9: "What ingredients do you have?"
}

answers_new = {
  #answers for all the questions stored in an empty hash
  :answers_1 => "",
  :answers_2 => "",
  :answers_3 => "",
  :answers_4 => "",
  :answers_5 => "",
  :answers_6 => "",
  :answers_7 => "",
  :answers_8 => "",
  :answers_9 => ""
}
  #assertion
  user_test = Questioner.new(questions_new, answers_new)
  expected = true
  actual = user_test.is_a?(Object)
  #expected
  assert_equal(expected, actual)
  end

  def test_using_nil_for_initialization
  #test case
  #assertion
  user_test = Questioner.new(nil,nil)
  expected = true
  actual = user_test.is_a?(Object)
  #expected
  assert_equal(expected, actual)
  end
end
