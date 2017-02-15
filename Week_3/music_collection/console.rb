require('pg')
require('pry')
require_relative('./modules/artists.rb')
require_relative('./modules/albums.rb')

Album.delete_all
Artists.delete_all


artist1 = Artists.new(
  {'name' => "David Bowie"} 
  )

artist1.save

artist2 = Artists.new(
  {'name' => "Bonobo"}
  )

artist2.save

album1 = Album.new({
  'name' => 'Hunky Dory',
  'genre' => 'rock',
  'artists_id' => artist1.id
})

album1.save

album2 = Album.new({
  'name' => 'Greatest Hits',
  'genre' => 'experimental',
  'artists_id' => artist2.id
  })

album2.save


binding.pry
nil