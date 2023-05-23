# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# movies = Movie.create([{ name: "Star Wars" }, { synopsis: "Lord of the Rings" }, { director: "Lord of the Rings" }])
# 10.times do
#     movie = Movie.new(
#       name: Faker::Movie.title,
#       synopsis: Faker::Lorem.paragraph,
#       director: Faker::Name.name
#     )
#     movie.save
#   end
# movies = Movie.create([{ name: "Star Wars" }, { synopsis: "Lorem havjavsjas ABkadIAa iAUSHiahsASHasAS" }, { director: "Director 1" }])

# 10.times do |i|
#     Movie.create( name:"Name #{i + 1}", synopsis: rand(0..100), director:"Director #{i + 1}")
# end
10.times do
    Movie.create(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph,
      director: Faker::Name.name
    )
end

10.times do
    Serie.create(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph,
      director: Faker::Name.name
    )
end
10.times do
    DocumentaryFilm.create(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraph,
      director: Faker::Name.name
    )
end
  