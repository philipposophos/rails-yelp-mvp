# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating restaurants...'
sapori_e_delizie = {
  name: 'Sapori e Delizie', address: 'Via Giovanni Lanza 102 00184 Roma', phone_number: 4_875_450, category: 'italian'
}

da_enzo = {
  name: 'Da Enzo', address: 'Via dei Vascellari 29 00153 Roma', phone_number: 5_812_260, category: 'italian'
}

tre_scalini = {
  name: 'Ai Tre Scalini', address: 'Via Panisperna 251 00184 Roma', phone_number: 48_907_495, category: 'italian'
}

da_fortunata = {
  name: 'Osteria Da Fortunata', address: 'Via del Pellegrino 11 00186 Roma', phone_number: 60_667_391,
  category: 'italian'
}

cavaliere = {
  name: 'Osteria del Cavaliere', address: 'Via Alba 32 00182 Roma', phone_number: 12_345_678,
  category: 'italian'
}

[sapori_e_delizie, da_enzo, tre_scalini, da_fortunata, cavaliere].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
