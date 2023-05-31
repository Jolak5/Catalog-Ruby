class Author
  attr_reader :id
  attr_accessor :author, :items, :first_name, :last_name

  def initialize(first_name, last_name, id: Random.rand(1..1000))
    super()
    @id = id
    @items = []
    @first_name = first_name
    @last_name = last_name
  end

  def add_items(item)
    @items << item unless @items.include?(item)
    item.author = self
  end
end
