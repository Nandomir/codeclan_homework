require_relative('../db/sql_runner.rb')

class Customer

attr_accessor :name, :funds
attr_reader :id

def initialize(options)
  @name = options['name']
  @funds = options['funds']
  @id = options['id'].to_i if options['id']
end

end