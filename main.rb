require_relative 'app'

def list_options
  puts 'Welcome to School library App!'
  puts "
      Please choose an option by entering a number:
      1- List all books
      2- List all person
      3- Create a person
      4- Create a book
      5- Create a rental
      6- List all rentals for a given person id
      7- Exit"
end

def options(app)
  loop do
    list_options
    option = gets.chomp.to_i
    case option
    when 1
      app.books_list
    when 2
      app.persons_list
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.rental_list_by_id
    else
      break
    end
  end
end

def main
  app = App.new
  options(app)
end

main
