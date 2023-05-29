require_relative 'item'
require_relative 'genre'

class MusicAlbum < Item
  attr_reader :on_spotify, :publish_date, :genre

  def initialize(on_spotify, publish_date, genre)
    super(publish_date: publish_date)
    @on_spotify = on_spotify
    @publish_date = publish_date
    @genre = genre
  end

  def can_be_archived?
    super && on_spotify == true
  end
end
