require_relative '../classes/author'
require_relative '../classes/item'
require_relative '../classes/book'

describe Author do
  before :each do
    @author = Author.new('Ermiyas', 'Demsew')
  end

  it 'Should return the correct value for the first_name attribute' do
    expect(@author.first_name).to eq('Ermiyas')
  end

  it 'Should return the correct value for the last_name attribute' do
    expect(@author.last_name).to eq('Demsew')
  end
end
