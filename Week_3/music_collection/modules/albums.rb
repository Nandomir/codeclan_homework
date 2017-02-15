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

  def self.all()
    sql = "SELECT * FROM albums;"
    result = SqlRunner.run(sql)
    albums = result.map {|album_hash| Album.new(album_hash)}
    return albums
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artists_id};"
    result = SqlRunner.run(sql)
    artist_hash = result[0]
    artist = Artists.new(artist_hash)
    return artist
  end

  def self.delete_all
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end



end