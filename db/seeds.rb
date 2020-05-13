# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", phone_number: "01 42 55 88 77", category: "french", review: "" )
tour_d_argent.save!

bim = Restaurant.new(name: "Bim", phone_number: "01 42 55 88 77", category: "japanese", review: "" )
bim.save!

bam = Restaurant.new(name: "Bam", phone_number: "01 42 55 88 76", category: "french", review: "" )
bam.save!

boum = Restaurant.new(name: "Boum", phone_number: "01 42 55 88 75", category: "chinese", review: "" )
boum.save!

bram = Restaurant.new(name: "Bram", phone_number: "01 42 55 88 74", category: "belgian", review: "" )
bram.save!
puts 'Finished!'
