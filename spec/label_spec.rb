require_relative '../classes/label'

describe Label do
  before :each do
    @label = Label.new('Enis', 'Blue')
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
end
