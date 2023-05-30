require_relative '../classes/label'

describe Label do
    before :each do
        @label = Label.new('Enis', 'Blue')
        @item = Item.new('2018')
        @label.add_items(@item)

    end
    
    it 'Check for the instance of the label' do
        expect(@label).to be_instance_of Label
    end

    it 'Check for the label title' do 
        expect(@label.title).to eq('Enis')
    end

    it 'Check for the label color' do
        expect(@label.color).to eq('Blue')
    end

    # it 'check for the item' do
    #     label = @item.label
    #     expect(label).to eq @label
    # end
end
