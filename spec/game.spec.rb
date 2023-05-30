require_relative '../classes/game'
require_relative '../classes/item'

describe Game do
  before(:each) do
    @game = Game.new(2, 1)
  end

  context 'When last played is greater than 2 years' do
    it 'return false' do
      expect(@game.can_be_archived?).to be true
    end
  end
end
