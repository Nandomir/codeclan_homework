require_relative('../db/sql_runner.rb')

class Film

attr_reader :id, :customer_id, :film_id


def initialize(options)
  @customer_id = options['customer_id'].to_i
  @film_id = options['film_id'].to_i
  @id = options['id'].to_i if options['id']
end

end