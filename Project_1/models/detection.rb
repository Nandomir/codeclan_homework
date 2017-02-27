require_relative('../db/sql_runner.rb')
require_relative('./discovery.rb')
require_relative('./astronomer.rb')
require_relative('./exoplanet.rb')

class Detection

attr_reader :id, :astronomer_id, :exoplanet_id, :astronomer_name, :astronomer_observation, :exoplanet_name, :exoplanet_type, :exoplanet_habitable, :exoplanet_mass, :exoplanet_discovery

def initialize( options )
  @id = options['id'].to_i if options['id']
  @astronomer_id = options['astronomer_id'].to_i
  @exoplanet_id = options['exoplanet_id'].to_i
  @astronomer_name = options['astronomer_name']
  @astronomer_observation = options['astronomer_observation']
  @exoplanet_name = options['exoplanet_name']
  @exoplanet_type = options['exoplanet_type']
  @exoplanet_habitable = options['exoplanet_habitable']
  @exoplanet_mass = options['exoplanet_mass']
  @exoplanet_discovery = options['exoplanet_discovery']
end

def self.detection()
  sql = "SELECT 
        a.name AS Discoverer, a.observation_type,
        e.name AS Planet, e.type, e.habitable, e.mass, e.discovery
        FROM discoveries d
        INNER JOIN astronomers a 
        ON a.id = d.astronomer_id
        INNER JOIN exoplanets e
        ON e.id = d.exoplanet_id;"
        data = SqlRunner.run(sql)
        return data.map{|discoveries| Detection.new(discoveries)}

end