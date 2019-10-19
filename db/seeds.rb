# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "[Destroying songs]"

Song.all.each do |song|
    song.destroy
    puts "Destroying #{song.title}"
end

puts "[Destroying artists]"
Artist.all.each do |artist|
    artist.destroy
    puts "Destroying #{artist.name}"
end

puts "Creating Artists"
artist_name_array = %w(Cher OMD Madonna Erasure Depeche\ Mode)

artist_name_array.each do |artist_name|
    Artist.create(name: "#{artist_name}")
    puts "Created #{artist_name}"
end

song_title_array = %w(Believe Secret Cherish Somtimes Somebody)

puts "Creating Songs"

Song.create(title: "Believe", artist_id: 1)
Song.create(title: "Secret", artist_id: 2)
Song.create(title: "Cherish", artist_id: 3)
Song.create(title: "Soemtimes", artist_id: 4)
Song.create(title: "Somebody", artist_id: 5)



# song_title_array.each_with_index do |song_title, index|
#     Song.create(title: "#{song_title}", artist_id: index)
#     # artist = Artist.find(index)
#     puts Artist.first.id 
#      puts "Created #{song_title}, belonging to #{artist.name}"
# end

