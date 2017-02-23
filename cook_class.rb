require './question_class'
require './cook_class'
require './takeaway_class'
require './food2fork'

class Cook
    def initialize (name,allergy,taste_preference,ability_rating,age,postcode)
        @name = name.to_s
        @allergy = allergy.to_s
        @taste_preference = taste_preference.to_i
        @ability_rating = ability_rating.to_i
        @age = age.to_i
        @postcode = postcode.to_s
    end

    attr_accessor :name, :allergy, :taste_preference, :ability_rating, :age, :postcode
end
