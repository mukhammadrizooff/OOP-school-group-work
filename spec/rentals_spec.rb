require './person_file'
require './student_file'
require './teacher_file'
require './rental_file'
require './book_file'
require 'rspec'

RSpec.describe Rental do
  describe '#rentals' do
    it 'Should return an empty array' do
      person = Person.new([])
      expect(person.rentals).to eq([])
    end
  end

  describe 'initialize' do
    it 'Should initialize a rental with a date' do
      book = Book.new('Harry Potter', 'J.K. Rowling')
      student = Student.new(name: 'David', parent_permission: true)
      rental = Rental.new('20220428', book, student)
      expect(rental.date).to eq('20220428')
    end
  end

  describe 'book' do
    it 'Should return a book' do
      book = Book.new('Harry Potter', 'J.K. Rowling')
      student = Student.new(name: 'Dennis', parent_permission: true)
      rental = Rental.new('20220428', book, student)
      expect(rental.book).to eq(student)
    end
  end

  describe 'person' do
    it 'Should return a person' do
      book = Book.new('Harry Potter', 'J.K. Rowling')
      student = Student.new(name: 'Daniel', parent_permission: true)
      rental = Rental.new('20220428', book, student)
      expect(rental.person).to eq(book)
    end
  end
end