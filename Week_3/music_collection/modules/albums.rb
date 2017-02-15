require_relative('../db/sql_runner.rb')

class Album

  attr_accessor :name, :genre
  attr_reader :id, :artists_id

  def initialize ( options )
    @name = options['name']
    @genre = options['genre']
    @artists_id = options['artists_id']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO albums (name, genre, artists_id) VALUES ('#{@name}', '#{@genre}', #{@artists_id}) RETURNING *;"
    result = SqlRunner.run(sql)
    id = result[0]['id'].to_i
  end



end