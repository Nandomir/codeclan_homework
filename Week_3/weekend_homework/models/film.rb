require_relative('../db/sql_runner.rb')

class Film

attr_accessor :title, :price
attr_reader :id

def initialize(options)
  @title = options['title']
  @price = options['price'].to_i
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING *;"
  return_value = SqlRunner.run(sql).first
  @id = return_value['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM films;"
  result = SqlRunner.run(sql)
end

def update()
  sql = "UPDATE films SET (title, price) = ('#{@title}',#{@price} WHERE id = #{@id})"
  SqlRunner.run(sql)
  return "Movie details updated"
end

def delete()
  sql = "DELETE FROM film WHERE id = #{@id}"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM films;"
  show_films = SqlRunner.run(sql)
    result = show_films.map{|customer| Customer.new(customer)}
    return result  #an array of new objects
end

end