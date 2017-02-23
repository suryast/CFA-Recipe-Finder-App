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
*Install following gems :    
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
*Run above gems in Ruby :  
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


 Clone files from Git with the following information:   

 `git clone https://github.com/ethankhoa/CFA-Recipe-Finder-App.git`

User must acquire own Google Token and input it into credentials.rb file


  ####In the terminal
  Open up directory that the files are downloaded to and run:

`   $ruby recipe_finder_app.rb  `

  
  ####Example of class use
 
 `$ruby projects.rb`
```
    class <FoodItem>
    def initialize(name_of_food_item, allergen)
      @name_of_food_item = name_of_food_item.to_s
      @allergen = allergen.to_s
    end
    attr_accessor :name_of_food_item, :allergen

    end
```


*e.g.type "apple"
> apple


## Design Journey/Process  
  
https://trello.com/b/MyQUz6GK/team-terminal-app-ethan-josh-surya-taka

### Document how your team designed your app  
  
Now uploading..  
  
  
