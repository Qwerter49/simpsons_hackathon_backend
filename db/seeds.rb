# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quotes.destroy_all
counter = 1

response = RestClient.get("https://thesimpsonsquoteapi.glitch.me/quotes?count=10")

data=JSON.parse(response)

quotes = data['results']

search_array.each do |search|
    base_url
end


charecter_quotes = quotes.map do |quotes|
    Quotes.find_or_create_by(name: quote["quote"])


    byebug
    puts "hello"
    # Character.find_or_create_by(name: character ["character"])
end

# characters = Charecter.map do |charecter| 

