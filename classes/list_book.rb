require_relative 'book'
require_relative 'label'
require 'json'

class ListBook
  attr_accessor :books, :labels

  def initialize
    @books = []
    @labels = []
  end

  def add_book
    puts 'Enter the book you want to add: '
    title = gets.chomp
    puts 'Enter the color of the book: '
    color = gets.chomp
    puts 'Enter the publish date of the book(dd/mm/yyyy): '
    publish_date = gets.chomp
    puts 'Enter the publisher of the book: '
    publisher = gets.chomp
    puts 'Enter the cover state of the book: '
    cover_state = gets.chomp
    book = Book.new(publish_date, publisher, cover_state)
    label = Label.new(title, color)
    @books.push(book)
    @labels.push(label)
    puts 'Book added'
    store_book(book)
  end

  def store_book(book)
  obj = {
    id: book.id,
    publisher: book.publisher,
    publish_date: book.publish_date,
    cover_state: book.cover_state
  }

  stored_book = File.size("store/books.json").zero? ? [] : JSON.parse(File.read("store/books.json"))
  stored_book << obj
  File.write("store/books.json", stored_book.to_json)
  end


  def list_all_books
       @books = File.size("store/books.json").zero? ? [] : JSON.parse(File.read("store/books.json"))
      @books.each do |book|
        puts "Publish date: #{book["publish_date"]}, Publisher: #{book["publisher"]}, Cover state: #{book["cover_state"]}"
      end
    end

  def list_all_labels
    if @labels.empty?
      puts 'No labels in the library'
    else
      @labels.each do |label|
        puts "Title: #{label.title}, Color: #{label.color}"
      end
    end
  end
end
