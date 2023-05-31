require_relative 'item'

class Game < Item
  attr_reader :id, :publish_date
  attr_accessor :last_played_at, :multiplayer

  def initialize(last_played_at, multiplayer, publish_date, id: Random.rand(1..1000))
    super(publish_date)
    @id = id
    @last_played_at = last_played_at
    @multiplayer = multiplayer
  end

  def can_be_archived?
    super || Date.today > Date.iso8601(@last_played_at).next_year(2)
  end
end

game = Game.new(3, '2012-04-03', '2012-04-03')
puts game.publish_date
puts Time.now - (2 * 365 * 24 * 60 * 60)
