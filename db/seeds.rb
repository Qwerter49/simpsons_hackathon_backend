QuoteJoin.destroy_all
Character.destroy_all
Quote.destroy_all
User.destroy_all

10.times do

    response = RestClient.get("https://thesimpsonsquoteapi.glitch.me/quotes?count=10")

    data = JSON.parse(response)
    data.map do |result|

        new_character = Character.find_or_create_by(name: result["character"]) do |new_character|
            new_character.image = result["image"]
        end

        new_quote = Quote.find_or_create_by(quote: result["quote"])

        if !QuoteJoin.find_by(quote_id: new_quote.id)
            QuoteJoin.create(character_id: new_character.id, quote_id: new_quote.id)
        end
    end
end

10.times do
    name = Faker::Name.name
    email = Faker::Internet.email
    password = Faker::Name.unique.name
    user = User.create(
    name: name,
    email: email,
    password: password
    )
end





