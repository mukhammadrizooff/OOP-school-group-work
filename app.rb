require_relative 'book_file'
require_relative 'rental_file'
require_relative 'teacher_file'
require_relative 'student_file'
require_relative 'storage_file'
require_relative 'read_files'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = read_books
    @people = read_people
    @rentals = read_rentals(@books, @people)
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2): '
    choice = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    case choice
def app_options
  puts 'Welcome to School library App!'
  puts "
    Please choose an option by entering a number:
    1- List all books
    2- List all patron
    3- Create a person
    4- Create a book
    5- Create a rental
    6- List all rentals for a given person id
    7- Exit"
end

def options(books, patron, rentals)
  loop do
    app_options
    option = gets.chomp.to_i
    case option
    when 1
      print 'Has parent permission? [Y/N]: '
      input = gets.chomp
      case input.upcase
      when 'Y'
        permission = true
      when 'N'
        permission = false
      end
      people.push(Student.new(age, name: name, parent_permission: permission))
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      people.push(Teacher.new(specialization, age, name))
    end
    puts 'Person created successfully.'
    save_people(people)
  end

  def create_rental
    puts 'Select a book from the following list by number'
    books.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
    book_input = gets.chomp.to_i

    puts 'Select a person from the following list by number (Not ID): '
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_input = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    rentals.push(Rental.new(date, people[person_input], books[book_input]))
    puts 'Rental created successfully.'
    save_rentals(rentals)
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    books.push(Book.new(title, author))
    puts 'Book created successfully.'
    save_books(books)
  end

  def persons_list
    people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end

  def rental_list_by_id
    print 'ID of person: '
    person_id = gets.chomp.to_i
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == person_id
    end
  end

  def books_list
    books.each { |book| puts "Title '#{book.title}', Author #{book.author}" }
  end
end
