require 'faker'

puts "Destroying everything"
Restaurant.destroy_all

puts "Adding new seeds"


5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

puts "seeds completed"
