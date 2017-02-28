require_relative('../db/sql_runner.rb')
require_relative('./discovery.rb')
require_relative('./astronomer.rb')
require_relative('./exoplanet.rb')

class Detection

attr_reader :discoverer, :observation_type, :planet, :type, :habitable, :mass, :discovery

def initialize( options )
  @discoverer = options['discoverer']
  @observation_type = options['observation_type']
  @planet = options['planet']
  @type = options['type']
  @habitable = options['habitable']
  @mass = options['mass'].to_f
  @discovery = options['discovery']
end

end