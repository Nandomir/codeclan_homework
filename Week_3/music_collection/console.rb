require('pg')
require('pry')
require_relative('./modules/artists.rb')
require_relative('./modules/albums.rb')

artist1 = Artists.new(
  {'name' => "David Bowie"} 
  )
artist2 = Artists.new(
  {'name' => "Bonobo"}
  )

binding.pry
nil