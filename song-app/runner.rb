require_relative("song")
require_relative("list")


sec = Song.new("60 second love","Lil Milli Sexx",100,"My love is in it to win it minute by minute")
hot = Song.new("Hot in herre","Nelly",110,"So take off all your clothes")
laf = Song.new("Laffy Taffy","D4L",210,"Shake that laffy taffy oh!")


p laf.friendly_duration

list = List.new

list.add_song(sec)
list.add_song(hot)
list.add_song(laf)

p list.playlist
p list.shuffle

p "-------"
p list.duration
