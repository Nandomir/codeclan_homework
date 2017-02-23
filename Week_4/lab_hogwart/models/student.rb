require_relative('../db/sql_runner.rb')
require_relative('./house.rb')

class Student

attr_reader :id, :first_name, :last_name, :house, :age


def initialize( options )
  @id = options['id'].to_i
  @first_name = options['first_name']
  @last_name = options['last_name']
  @house = options['house']
  @age = options['age'].to_i
end

def self.delete_all()
  sql = "DELETE FROM students;"
  SqlRunner.run(sql)
end


def self.all()
  sql = "SELECT * FROM students;"
  student = SqlRunner.run(sql)
  result = student.map { |students| Student.new(students) }
  return result
end

def self.find( id )
  sql = "SELECT * FROM students WHERE id = #{id};"
  student = SqlRunner.run(sql)
  result = Student.new( student.first )
  return result
end


def save()
  sql = "INSERT INTO students ( first_name, last_name, house, age ) VALUES ('#{first_name}', '#{last_name}', '#{house}', #{age}) RETURNING *;"
  student_array = SqlRunner.run(sql)
  @id = student_array.first['id'].to_i
end

def full_name()
  return "#{@first_name} #{@last_name}"
end

def age()
  return @age 
end

def house()
  return "#{@house}" 
end

def find_house()
sql = "SELECT * FROM houses WHERE house_name = '#{@house}';"
result = SqlRunner.run(sql)
hash_of_houses = result[0]
house = House.new(hash_of_houses)
return house
end

end