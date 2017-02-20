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

def self.all()
  sql = "SELECT * FROM customers;"
  show_customers = SqlRunner.run(sql)
  result = show_customers.map{|customer| Customer.new(customer)}
  return result
end

def funds()
  sql = "SELECT funds FROM customers WHERE id = #{@id};"
  array_of_funds = SqlRunner.run(sql).first
  @id = array_of_funds['id'].to_i # why 0?
end

def films()
  sql = "SELECT films.title FROM films
        JOIN tickets
        ON tickets.film_id = films.id
        WHERE customer_id = #{@id}"
  result = SqlRunner.run(sql).last 
  return result.map {|films| Customer.new(films)}
end


# def films()
#   sql = "SELECT customers.name FROM customers
#         JOIN films.title from films 
#         ON tickets.customer_id = customer.id
#         WHERE film_id = #{@id}"
#   result = SqlRunner.run(sql) 
#   return result.map {|films| Customer.new(films)}
# end

end