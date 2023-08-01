require './app'

class Library
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def start
    puts 'Wecome to School Library App!'

    trap('INT') do
      puts "\nExiting the app"
      exit
    end

    loop do
      display = Display.new
      display.display_menu

      choice = gets.chomp.to_i

      case choice
      when 1
        list_of_books
      when 2
        list_of_people
      when 3
        create_person
      when 4
        create_book
      when 5
        create_rental
      when 6
        list_rentals_for_person
      when 7
        puts 'Thank you for using this application'
        break
      else
        puts 'Invalid choice. Please try again.'
      end
    end
  end
end

class Display
  def display_menu
    puts "\nPlease choose an option by entering a number:"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person (teacher or student)'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given peson id'
    puts '7 - Exit'
  end
end
