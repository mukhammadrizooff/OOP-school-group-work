require 'json'
require_relative 'app'
require_relative 'teacher_file'
require_relative 'student_file'
require_relative 'person_file'

def save_books(books)
  data = []
  books.each do |book|
    data.push({ id: book.id, title: book.title, author: book.author })
  end
  File.write('books.json', JSON.generate(data))
end




