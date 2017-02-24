# running this code:
#  create client passing get_credentials API key
#  create new search, pass user postcode and preferred category

require 'google_places'
require './credentials'
require 'Geocoder'
require 'terminal-table/import'
require 'paint'

class Client
  def initialize(api)
    @api = api
    @spots = spots
    @spot = spot
  end

  attr_accessor :api, :spot

end

class PlacesSearch
  def initialize(client, postcode, cuisine)
    @client = client
    @postcode = postcode
    @cuisine = cuisine
    @place_id = place_id
    @place_name = place_name
    @place_address = place_address
    @place_rating = place_rating
    @results = []
  end

  attr_accessor :client, :postcode, :cuisine, :place_id, :place_name, :place_address, :place_rating, :results

  def get_client_coordinates(postcode)
    Geocoder.coordinates("#{postcode}" + " AU")
  end

  def get_spots(client, client_coordinates)
    client.spots(client_coordinates[0], client_coordinates[1], :types => ['restaurant','food'], :exclude => 'lodging')
  end

  def single_place_search_details(results)
    random_place = results.sample { |place| place.place_id}

    #pull random place from results
    random_place_id = random_place.place_id #{ |place| place.place_id}

    # pull place_id from random
    spot = client.spot("#{random_place_id}")
    reviews = spot.reviews.sample #[0]

    # pull place details with random_place_id
    place_name = spot.name
    place_address = spot.vicinity
    place_rating = spot.rating
    place_url = spot.url
    place_hours = spot.opening_hours
    place_city = spot.city
    place_url = spot.website
    place_phone = spot.formatted_phone_number
    place_review = "#{reviews.author_name}  says... \n\ #{reviews.text}"

    # place_ratings = spot.user_total_ratings
    place_days = place_hours[2]
    category = ["Name", "Address", "Rating", "Phone ", "Website", "Review"]
    details = [place_name, place_address, place_rating, place_phone, place_url, place_review.scan(/.{1,80}/).join("\n")]
    rows = [category, details].transpose
    table = Terminal::Table.new :title => Paint["Screw it! Just get takeaway from #{place_name} in #{place_city}", :yellow, :underline], :rows => rows,:style => {:border_i => "x"}

    # system("clear")
    puts table
  end

  def place_search_details(results)

    place_id = results.map { |place| place.place_id}
    place_name = results.map { |place| place.name}
    place_address = results.map { |place| place.vicinity}
    place_rating = results.map { |place| place.rating}
    place_city = results.map { |place| place.city}


    rows = [place_name, place_address, place_rating].transpose
    table = Terminal::Table.new :title => Paint["Restaurants Nearby", :yellow] , :headings => ['Name', 'Address', 'Rating'], :rows => rows, :style => {:border_i => "x"}
      #:width => 80,  -> width stopped working

    puts table
  end
end # end PlaceSearch class
