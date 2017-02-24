# CFA-Recipe-Finder-App

## About CFA-Recipe-Finder-App  
  With some easy questions, this application will support you to decide your meal and show its recipe. 
  The recipe finder app takes input from a user depending on what ingredients they have in their cupboard and then uses a     google API to search for recipes which include those ingredients.
  If you have any allergies then we are able to tailor the search results based around your food rqeuirements and preferred     food tastes.
  (reference: All recipes are pulled using the food2fork API which gives you access to a socially ranked recipe database and which includes ingredient search function.

## Features
  *	Utilises Google search to be able to search the internet for recipes based on the input from the user.
  *	This program uses the Nokogiri gem to skim html code and pull the relevant information out from a website.
  *	Different Ruby Gems like Sanitize and display tables allows the app to format the html code and strip/recondition it so that it is user friendly output.
  *	The main final output will produce a recipe which includes the ingredients and the method to make the recipe. On top of this, the app provides the user possible restaurants in their area and reviews of those restaurants if they would prefer to eat out instead.


### Installation instruction
* Install following gems :    
```
gem 'terminal-table'  
gem 'paint'  
gem 'Geocoder'  
gem 'nokogiri'  
gem 'open-uri'  
gem 'open_uri_redirections'  
gem 'rest-client'  
gem 'food2fork'  
gem 'html_to_plain_text'  
 ```  
* Run above gems in Ruby :  
```
require 'terminal-table'  
require 'paint'  
require 'Geocoder'  
require 'nokogiri'  
require 'open-uri'  
require 'open_uri_redirections'  
require 'rest-client'  
require 'food2fork'  
require 'html_to_plain_text'  
```  

### Usage instructions

* Clone files from Git with the following information:   
  
 `git clone https://github.com/ethankhoa/CFA-Recipe-Finder-App.git`
  
  
  User must acquire own Google Token and input it into credentials.rb file
  
  

* Open up directory that the files are downloaded to and run:

`   $ruby recipe_finder_app.rb  `

  
 * For example :  
 
   `$ruby projects.rb`
```
require './question_class'  
require './cook_class'  
require './takeaway_class'  
require './food2fork'  
require './credentials'  
require 'Paint'  
  
questions_new = {  
  #question hash for asking all the questions.  
  question_1: "What is your name?",  
  question_2: "What is your age?",  
  question_3: "What is your postcode",  
  question_4: "Do you have any dietery requirements?  
    1. Yes  
    2. No",  
 ```  
 ```
  answers_new = {  
  #answers for all the questions stored in an empty hash  
  :answers_1 => "",  
  :answers_2 => "",  
  :answers_3 => "",  
  :answers_4 => "",      
```
* Step 1
 create users questioner
```
user_1 = Questioner.new(questions_new, answers_new)
```  
 call method to start questions
```
cook_1 = Cook.new(user_1.answers[:answers_1], user_1.answers[:answers_5])
```

* Step 2
 create cook based on users answers
```
client = GooglePlaces::Client.new(get_google_credentials)  
```  

* Step 3
 create new Google Places client  
```
client = GooglePlaces::Client.new(get_google_credentials)
```  
 create places search based on user input  
```
cook_1_search = PlacesSearch.new(client, cook_1.postcode, cook_1.taste_preference)
```  
 pull user coordinates based on postcode  

```client_coordinates = cook_1_search.get_client_coordinates(cook_1.postcode)
```
 return recipe based on users ingredients  
```
puts recipe_1 = get_recipe(user_1.ingredients)
```  
 gets and returns list of restaurants in the area  
```
new_results = cook_1_search.get_spots(client, client_coordinates)  
  
cook_1_search.place_search_details(new_results)  
```
 gets and returns one random restaurant near the user  
```
new_single_place = cook_1_search.single_place_search_details(new_results)  
```


## Design Journey/Process  
  Please refer to the following web site.  
https://trello.com/b/MyQUz6GK/team-terminal-app-ethan-josh-surya-taka

### Document how your team designed your app  
  
![alt tag](recipe_whiteboard.jpg)
  
  
