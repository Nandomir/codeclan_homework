require_relative('../db/sql_runner.rb')

class Host

attr_accessor :name, :type
attr_reader :id

def initialize(options)
  @name = options['name']
  @type = options['type']
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO hosts (name,type) VALUES ('#{@name}', '#{@type}') RETURNING *;"
  result = SqlRunner.run(sql)
  result_object = result.map {|host| Host.new(host)}
  id_string = result_object[0].id
  @id = id_string.to_i
end

def self.delete_all
  sql = "DELETE FROM hosts;"
  SqlRunner.run(sql)
end

def parasites
  sql = "SELECT parasites.* FROM parasites 
  INNER JOIN infections ON infections.parasite_id = parasites.id 
  WHERE host_id = #{@id};"
  result = SqlRunner.run(sql)
  result_object = result.map { |parasite| Parasite.new(parasite)}
  return result_object
end

def information()
  sql = "
  SELECT 
  infections.name AS infection_name, 
  hosts.name AS host, 
  parasites.name AS parasite, 
  parasites.effect AS symptoms FROM hosts 
  INNER JOIN infections 
  ON infections.host_id = hosts.id
  INNER JOIN parasites
  ON infections.host_id = parasites.id;"
  SqlRunner.run(sql)
end

end