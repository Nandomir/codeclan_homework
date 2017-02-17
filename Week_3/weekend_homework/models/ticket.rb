require_relative('../db/sql_runner.rb')

class Ticket

attr_accessor :customer_id, :film_id
attr_reader :id


def initialize(options)
  @customer_id = options['customer_id'].to_i
  @film_id = options['film_id'].to_i
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO tickets (customer_id, film_id) VALUES (#{@customer_id}, #{@film_id}) RETURNING *;"
  ticket = SqlRunner.run(sql).first
  @id = ticket['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM tickets;"
  result = SqlRunner.run(sql)
end

def update()
  sql = "UPDATE tickets SET (customer_id, film_id) = ('#{@customer_id}',#{@film_id} WHERE id = #{@id})"
  SqlRunner.run(sql)
  return "Ticket details updated"
end

def update()
  sql = "DELETE FROM film WHERE id = #{@id}"
  SqlRunner.run(sql)
end

end