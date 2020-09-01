# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
QuoteJoin.destroy_all
Quote.destroy_all
#counter = 1

response = RestClient.get("https://thesimpsonsquoteapi.glitch.me/quotes?count=10")

data=JSON.parse(response)
data.map do |result|

    new_character = Character.find_or_create_by(name: result["character"]) do |new_character|
        new_character.image = result["image"]
    end

    new_quote = Quote.find_or_create_by(quote: result["quote"])

    QuoteJoin.create(character_id: new_character.id, quote_id: new_quote.id)
end

byebug

puts "Hello"



# Character.find_or_create_by(name: character ["character"]) do |new_character|
#     new_character.image = image
# end


# search_array.each do |search|
#     base_url
# end


# charecter_quotes = quotes.map do |quotes|
#     Quotes.find_or_create_by(name: quote["quote"])


#     byebug
#     puts "hello"
#     # Character.find_or_create_by(name: character ["character"])
# end

# characters = Charecter.map do |charecter| 

