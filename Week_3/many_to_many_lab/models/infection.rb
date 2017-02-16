require_relative('../db/sql_runner.rb')
require_relative('./host.rb')
require_relative('./parasite.rb')


class Infection

attr_accessor :name, :method_of_infection 
attr_reader :id, :host_id, :parasite_id

def initialize(options)
  @name = options['name']
  @method_of_infection = options['method_of_infection']
  @id = options['id'].to_i if options['id']
  @host_id = options['host_id'].to_i
  @parasite_id = options['parasite_id'].to_i
end

def save()
  sql = "INSERT INTO infections (name, method_of_infection, host_id, parasite_id) VALUES ('#{@name}', '#{@method_of_infection}', #{@host_id}, #{@parasite_id}) RETURNING *;"
  result = SqlRunner.run(sql)
    result_object = result.map {|infection| Infection.new(infection)}
    id_string = result_object[0].id
    @id = id_string.to_i
end

def self.delete_all
  sql = "DELETE FROM infections;"
  SqlRunner.run(sql)
end
  


end