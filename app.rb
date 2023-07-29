require './person'
require './student'
require './teacher'
require './book'
require './rental'

@people = []
@books = []

def list_of_books
  puts 'List of all books:'
  @books.each do |book, index|
    puts "#{index + 1} - Title: #{book.title}, Author: #{book.author}"
  end
end

def list_of_people
  puts 'List of all people (teachers and students):'
  @people.each do |person, index|
    puts "#{index + 1} - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
end

def create_person
  puts 'Do you want to create a student (1) or a teacher (2)? [input the number]: '
  choice = gets.chomp.to_i

  case choice
  when 1
    create_student
  when 2
    create_teacher
  else
    puts 'Invalid choice. Please enter 1 for student or 2 for teacher'
  end
end

def create_book
  puts 'Create a book: '
  print 'Title: '
  title = gets.chomp

  print 'Author: '
  author = gets.chomp

  book = Book.new(title, author)
  @books << book

  puts 'Book created successfully'
end

def create_rental
  print 'Select a book from the following list by number'
  book_index = gets.chomp.to_i
  book = @books[book_index]

  print 'Select a person from the following list by number (not id): '
  person_index = gets.chomp.to_i
  person = @people[person_index]

  puts 'Date: '
  date = gets.chomp

  Rental.new(date, person, book)

  puts 'Rental created successfully!'
end

def list_rentals_for_person
  puts 'ID of the person: '
  person_id = gets.chomp.to_i

  person = @people.find { |p| p.id == person_id }
  person.rentals.each do |rental|
    puts "Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author}"
  end
end

# Method to create student
def create_student
  puts 'Create a student:'
  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp

  print 'Has parent permission? [y/n]: '
  parent_permission_input = gets.chomp.downcase

  parent_permission = parent_permission_input == 'y'

  student = Student.new(age, name, parent_permission)
  @people << student

  puts 'Person created successfully'
end

# method to create teacher
def create_teacher
  puts 'Create Teacher:'
  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp

  print 'Specialization: '
  specialization = gets.chomp

  teacher = Teacher.new(specialization, age, name)
  @people << teacher

  puts 'Person created successfully!'
end
