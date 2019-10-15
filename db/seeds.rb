# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

a1 = Artist.create(name: "Artist1")
a2 = Artist.create(name: "Artist2")
a3 = Artist.create(name: "Artist3")

Song.create(title: "Song1", artist_id: a1.id)
Song.create(title: "Song2", artist_id: a2.id)
Song.create(title: "Song3", artist_id: a3.id)
Song.create(title: "Song4", artist_id: a1.id)
Song.create(title: "Song5", artist_id: a2.id)
Song.create(title: "Song6", artist_id: a3.id)
Song.create(title: "Song7", artist_id: a1.id)
