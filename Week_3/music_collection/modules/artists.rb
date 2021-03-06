require_relative('../db/sql_runner.rb')

class Artists

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i

  end

  def self.all()
    sql = "SELECT * FROM artists;"
    result = SqlRunner.run(sql)
    artists = result.map {|artist_hash| Artists.new(artist_hash)}
    return artists
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artists_id = #{@id};"
    result = SqlRunner.run(sql)
    albums = result.map {|album_hash| Album.new(album_hash)}
    return albums
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE artists SET (name) = ('#{name}') WHERE id = #{@id};"
    SqlRunner.run(sql)
    return "Artist updated"
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id};"
    array_of_artists = SqlRunner.run(sql)
    return Artists.new(array_of_artists.first)
  end

end