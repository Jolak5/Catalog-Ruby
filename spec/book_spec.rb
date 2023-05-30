require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('01/06/2023', 'Enis', 'Good')
  end
  it 'Initialize instance of book Class' do
    expect(@book).to be_instance_of Book
  end

  it 'Checking the publisher' do
    expect(@book.publisher).to eq('Enis')
  end

  it 'Checking the of being published' do
    expect(@book.publish_date).to eq('01/06/2023')
  end
  it 'Check the cover state of the book' do
    expect(@book.cover_state).to eq('Good')
  end
end
