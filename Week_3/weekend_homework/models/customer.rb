require_relative('../db/sql_runner.rb')

class Customer

attr_accessor :name, :funds
attr_reader :id

def initialize(options)
  @name = options['name']
  @funds = options['funds'].to_i
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING *;"
  # array_of_objects = SqlRunner.run(sql)
  # one_object_saved = array_of_objects.map {|customer| Customer.new(customer)}
  # id_string = one_object_saved[0].id
  # @id = id_string.to_i


  customer = SqlRunner.run(sql).first
  @id = customer['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM customers;"
  result = SqlRunner.run(sql)
end

def update()
  sql = "UPDATE customers SET (name, funds) = ('#{@name}', #{@funds}) WHERE id = #{@id};"
  SqlRunner.run(sql)
  return "Customer details updated"
end

def delete()
  sql = "DELETE FROM customers WHERE id = #{@id}"
  SqlRunner.run(sql)
  return "Customer deleted"
end

end