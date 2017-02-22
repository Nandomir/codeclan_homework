require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :house_name, :logo

  def initialize( options )
    @id = options['id'].to_i
    @house_name = options['house_name']
    @logo = options['logo']
    @student_id = options['student_id'].to_i
  end

  def save()
    sql = "INSERT INTO houses ( house_name, logo ) VALUES ('#{house_name}', '#{logo}') RETURNING *;"
    house_array = SqlRunner.run(sql)
    @id = house_array.first['id'].to_i
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id = #{id};"
    house = SqlRunner.run(sql)
    result = House.new( house.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    house = SqlRunner.run(sql)
    result = house.map { |houses| House.new(houses) }
    return result
  end

end