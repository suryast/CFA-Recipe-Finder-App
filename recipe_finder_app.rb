require './question_class'
require './cook_class'
require './takeaway_class'
require './food2fork'
require './credentials'

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

# Step 1
# create users questioner
user_1 = Questioner.new(questions_new, answers_new)
# call method to start questions
user_1.questions_ask

# Step 2
# create cook based on users answers
cook_1 = Cook.new(user_1.answers[:answers_1], user_1.answers[:answers_5], user_1.answers[:answers_6], user_1.answers[:answers_7], user_1.answers[:answers_2],user_1.answers[:answers_3])

# Step 3
# create new Google Places client
client = GooglePlaces::Client.new(get_google_credentials) # working

# create places search based on user input
cook_1_search = PlacesSearch.new(client, cook_1.postcode, cook_1.taste_preference)

# pull user coordinates based on postcode
client_coordinates = cook_1_search.get_client_coordinates(cook_1.postcode)

## NEED IF STATEMENT TO DETERMINE WHEN TO RECIPE, RESTAURANT LIST, OR SINGLE RESTAURANT AND TO END OR CONTINUE.

# return recipe based on users ingredients
puts recipe_1 = get_recipe(user_1.ingredients)

# gets and returns list of restaurants in the area
new_results = cook_1_search.get_spots(client, client_coordinates)

cook_1_search.place_search_details(new_results)

# gets and returns one random restaurant near the user
new_single_place = cook_1_search.single_place_search_details(new_results)
