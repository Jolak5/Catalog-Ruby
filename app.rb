class App
  def select_option(option)
    case option
    when '1'
      list_all_books
    when '2'
      list_all_music_albums
    when '3'
      list_all_games
    when '4'
      list_all_genre
    when '5'
      list_all_labels
    when '6'
      list_all_authors
    end
  end

  def add_items(option)
    case option
    when '7'
      add_book
    when '8'
      add_music_album
    when '9'
      add_game
    end
  end
end
