require_relative 'book'
require_relative 'label'

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
end

def list_all_books
if @books.empty?
    puts 'No books in the library'
else
    @books.each do |book|
        puts "Publish date: #{book.publish_date}, Publisher: #{book.publisher}, Cover state: #{book.cover_state}"
    end
end
end

end