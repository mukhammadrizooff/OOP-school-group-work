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

def save_people(people)
  people_data = []
  people.each do |person|
    if person.instance_of?(Teacher)
      people_data.push({ id: person.id, age: person.age, name: person.name, specialization: person.specialization })
    elsif person.instance_of?(Student)
      people_data.push({ id: person.id, age: person.age, name: person.name,
                         parent_permission: person.parent_permission })
    end
  end
  File.write('person.json', JSON.generate(people_data))
end

def save_rentals(rentals)
  rentals_data = []
  rentals.each do |rental|
    rentals_data.push({ date: rental.date, person_id: rental.person.id, book_id: rental.book.id })
  end
  File.write('rentals.json', JSON.generate(rentals_data))
end
