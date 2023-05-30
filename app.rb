require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './classes/music_list'
require_relative './classes/list_book'

class App
  def initialize
    @music = MusicList.new
    @list_book = ListBook.new
  end

  def select_option(option)
    case option
    when '1'
      @list_book.list_all_books
    when '2'
      @music.list_all_music_albums
    when '3'
      list_all_games
    when '4'
      @music.list_all_genre
    when '5'
      @list_book.list_all_labels
    when '6'
      list_all_authors
    end
  end

  def add_items(option)
    case option
    when '7'
      @list_book.add_book
    when '8'
      @music.add_music_album
    when '9'
      add_game
    end
  end
end
