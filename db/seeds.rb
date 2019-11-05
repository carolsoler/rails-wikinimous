# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 10 articles...'
10.times do |i|
  article = Article.create!(
    title: Faker::Movies::PrincessBride.character,
    content: Faker::TvShows::TheITCrowd.quote
  )
  puts "#{i + 1}. #{article.title}"
end
puts 'Finished!'
