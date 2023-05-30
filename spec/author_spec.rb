require_relative 'author'

describe Author do
    before(:each) do
     @author = Author.new('Kayode', 'Olatunji')
    end

    context 'the add_items method should add' do
        it 'add the authors'
        expect(@author.first_name).to eql ('Kayode')
         end 
        it 'author/s last name'
        expect(@author.first_name).to eql ('Olatunji')
        end 
    end

