require_relative './music_album'
require_relative './genre'
require 'json'

class MusicList
  attr_accessor :albums, :genres

  def initialize
    @albums = []
    @genres = []
  end

  def list_all_genre
    puts 'No genre added' if @genres.empty?
    @genres.each { |genre| puts "id: #{genre.id}. #{genre.name}" }
    puts ''
  end

  def list_all_music_albums
    puts 'No music added' if @albums.empty?
    @albums.each do |album|
      puts "id: #{album.id}, Publish date: #{album.publish_date}, On spotify: #{album.on_spotify}"
    end
    puts ''
  end

  def add_music_album
    print 'Publish date:'
    publish_date = gets.chomp
    print 'On spotify (true,false) :'
    on_spotify = gets.chomp

    music_album = MusicAlbum.new(on_spotify, publish_date)
    @albums << music_album
    puts 'Album created successfully'
    puts ''

    print 'Add genre (Comedy, Horror) : '
    name = gets.chomp
    @genres << Genre.new(name)
    puts "#{name} genre created successfully"
    puts ''
  end
end
