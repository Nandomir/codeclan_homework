require_relative('../db/sql_runner.rb')

class Astronomer

attr_reader :id, :name, :observation_type

def initialize ( options )
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @observation_type = options['observation_type']
end

  def save()
    sql = "INSERT INTO astronomers (name, observation_type) VALUES ('#{@name}', '#{@observation_type}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM astronomers;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM astronomers;"
    data = SqlRunner.run(sql)
    return data.map{|astronomer| Astronomer.new(astronomer)}
  end

  def self.find(id)
    sql = "SELECT * FROM astronomers WHERE id = #{id};"
    data = SqlRunner.run(sql)
    return Astronomer.new(data.first)
  end


end