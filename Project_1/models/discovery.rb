require_relative('../db/sql_runner.rb')
require_relative('./detection.rb')


class Discovery

attr_accessor :id, :astronomer_id, :exoplanet_id

def initialize( options )
  @id = options['id'].to_i if options['id']
  @astronomer_id = options['astronomer_id'].to_i
  @exoplanet_id = options['exoplanet_id'].to_i
end

def save()
  sql = "INSERT INTO discoveries (astronomer_id, exoplanet_id) VALUES (#{@astronomer_id}, #{@exoplanet_id}) RETURNING *;"
  data = SqlRunner.run(sql)
  @id = data[0]['id'].to_i
end

def self.all()
  sql = "SELECT * FROM discoveries;"
  data = SqlRunner.run(sql)
  return data.map{|discovery| Discovery.new(discovery)}
end

def self.delete_all()
  sql = "DELETE FROM discoveries;"
  SqlRunner.run(sql)
end

def self.delete(id)
  sql = "DELETE FROM discoveries WHERE id = #{id};"
  SqlRunner.run(sql)
end

# def self.astronomer()
#   sql = "SELECT * FROM astronomers a
#         INNER JOIN discoveries d
#         ON d.astronomer_id = a.id
#         WHERE a.id = #{@astronomer_id};"
#   results = SqlRunner.run(sql).first
#   return Discovery.new(results)
# end

def self.detections()
  sql = "SELECT 
        a.discoverer AS discoverer, a.observation_type,
        e.name AS planet, e.type, e.habitable, e.mass, e.discovery
        FROM discoveries d
        INNER JOIN astronomers a 
        ON a.id = d.astronomer_id
        INNER JOIN exoplanets e
        ON e.id = d.exoplanet_id;"
        data = SqlRunner.run(sql)
        return data.map{|discoveries| Detection.new(discoveries)}
end

def update()
  sql = "UPDATE discoveries SET (astronomer_id, exoplanet_id) = (#{astronomer_id}, #{exoplanet_id}) WHERE id = '#{@id}'"
  SqlRunner.run(sql)
end
end