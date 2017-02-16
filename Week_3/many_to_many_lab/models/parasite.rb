require_relative('../db/sql_runner.rb')

class Parasite

  attr_accessor :id
  attr_reader :name, :effect

  def initialize(options)
    @name = options['name']
    @effect = options['effect']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO parasites (name,effect) VALUES ('#{@name}', '#{@effect}') RETURNING *;"
    result = SqlRunner.run(sql)
      result_object = result.map {|parasite| Parasite.new(parasite)}
      id_string = result_object[0].id
      @id = id_string.to_i
  end

  def self.delete_all
    sql = "DELETE FROM parasites;"
    SqlRunner.run(sql)
  end

  def hosts()
    sql = "SELECT h.* FROM hosts h
          INNER JOIN infections ON infections.host_id = h.id
          WHERE parasite_id = #{@id}"
    result = SqlRunner.run(sql)
    result_object = result.map {|parasite| Parasite.new(parasite)}
    return result_object
  end
  
end