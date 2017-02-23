require './question_class'
require './cook_class'
require './takeaway_class'
require './food2fork'
require 'terminal-table'
require 'paint'


# questions_new = {
#   #question hash for asking all the questions.
#   question_1: "What is your name?",
#   question_2: "What is your age?",
#   question_3: "What is your postcode",
#   question_4: "Do you have any dietery requirements?
#     1. Yes
#     2. No",
#   question_5: "What are your dietery requirements?\n
#     1. Vegan\n
#     2. GF\n
#     3. DF\n
#     4. No restrictions",
#   question_6: "What type of food would you prefer?(1-3)\n
#     1. Spicy\n
#     2. Sweet\n
#     3. Savoury",
#   question_7: "How would you rate your cooking ability? (1-5)\n
#     1. Poor, don't make me boil more than water\n
#     2. Alright, can boil eggs\n
#     3. Average, I can cook most foods\n
#     4. Good, my mum thinks so atleast\n
#     5. Amazing, I can do anything",
#   question_8: "How many ingredients do you have?",
#   question_9: "What ingredients do you have?"
#   }
#
#   answers_new = {
#     #answers for all the questions stored in an empty hash
#     :answers_1 => "",
#     :answers_2 => "",
#     :answers_3 => "",
#     :answers_4 => "",
#     :answers_5 => "",
#     :answers_6 => "",
#     :answers_7 => "",
#     :answers_8 => "",
#     :answers_9 => ""
#   }

#Questioner class
class Questioner
  def initialize(questions, answers)

  @questions = questions
  @answers = answers
  @ingredients = ingredients
  end

  attr_accessor :questions, :answers, :ingredients

    def questions_ask

      ingredients = []
      system("clear")
#beginning of questions/rules
#name
      puts questions[:question_1]
      answer = gets.chomp.to_s
      answers[:answers_1] = answer
          system "clear"
#age
      puts questions[:question_2]
      answer = gets.chomp.to_i
      answers[:answers_2] = answer
          system "clear"
#postcode
      puts questions[:question_3]
      answer = gets.chomp.to_i
      answers[:answers_3] = answer
          system "clear"
#do you have dietary requirements?
      puts questions[:question_4]
      answer = gets.chomp.to_i
      answers[:answers_4] = answer
          system "clear"

      if answer == 1
#if yes, specify, if no then it puts No restrictions.
      puts questions[:question_5]
      answer = gets.chomp.to_i
      # answers[:answers_5] = answer
        system "clear"
        if answer == "1"
          answers[:answers_5] = "vegan"
        elsif answer == "2"
          answers[:answers_5] = "gluten free"
        elsif answer == "3"
          answers[:answers_5] = "dairy free"
        else
          answers[:answers_5] = "no restrictions"
        end
      else answer == 2
        answers[:answers_5] = "no restrictions"
      end

#Specify type of food to cook
      puts questions[:question_6]
      answer = gets.chomp.to_i
      # answers[:answers_6] = answer
          system "clear"
        if answer == "1"
          answers[:answers_6] = "spicy"
        elsif answer == "2"
          answers[:answers_6] = "sweet"
        else
          answers[:answers_6] = "savoury"
        end

        system "clear"
  #Rate your cooking ability
      puts questions[:question_7]
      answer = gets.chomp.downcase
      # answers[:answers_7] = answer
        system "clear"

      if answer == ("1" || "poor")
        answers[:answers_7] = "poor"

      elsif answer == ("2" || "alright")
        answers[:answers_7] = "alright"

      elsif answer == ("3" || "average")
        answers[:answers_7] = "average"

      elsif answer == ("4" || "good")
        answers[:answers_7] = "good"

      elsif answer == ("5" || "amazing")
        answers[:answers_7] = "amazing"
      else
        "Sorry, please choose again"
        puts questions[:question_7]
      end
      system "clear"

#Total no. of ingredients
      puts questions[:question_8]
      answer = gets.chomp.to_i
      answers[:answers_8] = answer
        system "clear"
#User inputs ingredients one at a time, ingredients are then stored in the answers hash as an array.
      answers[:answers_8].times do
        puts questions[:question_9]
        answer = gets.chomp
        #stored in the ingredients array
        ingredients << answer
        answers[:answers_9] = ingredients
        system "clear"
      end


    puts "Hi #{Paint[answers[:answers_1], :red]}, thanks for using the Recipe Finder App \n"
    puts "\nCan you please confirm that the below is what you had entered?"
    puts "\nYour age is #{Paint[answers[:answers_2], :blue]}, and your postcode is #{Paint[answers[:answers_3], :green]}"
    puts "\nYour cooking skills are #{answers[:answers_7]} and you are craving some #{answers[:answers_6]} food.\n"
    puts "You have the following ingredients:\n"
    puts insert_table(ingredients)
    puts "Your food considerations are: #{answers[:answers_5]}"

  end

  #insert table function, displays ingredients that they have provided.
  def insert_table(ingredients)
    @ingredients = ingredients
    rows = [ingredients].transpose
    table = Terminal::Table.new headings: %w(Ingredients), rows: rows
    puts Paint[table, :red]
  end
end



# user_1 = Questioner.new(questions_new, answers_new)
#
# user_1.questions_ask
