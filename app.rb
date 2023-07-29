require './person'
require './book'
require './rental'

def list_of_books
    puts "List of all books:"


end

def list_of_people
    puts "List of all people (teachers and students):"

end

def create_person
    puts "Do you want to create a student (1) or a teacher (2)? [input the number]: "
    choice = gets.chomp.to_i

    case choice
    when 1
        create_student
    when 2
        create_teacher
    else
        puts "Invalid choice. Please enter 1 for student or 2 for teacher"
    end
end

def create_book

end

def create_rental

end

def list_rentals_for_person(person_id)

end

#Method to create student
def create_student
    puts "Create a student:"
    print "Age: "
    age = gets.chomp.to_i

    print "Name: "
    name = gets.chomp

    print "Has parent permission? [y/n]: "
    parent_permission_input = gets.chomp.downcase

    parent_permission = parent_permission_input == 'y'
    
    student = Student.new(nil, age, name, parent_permission: parent_permission)

    puts "Person created successfully"
end

#method to create teacher
def create_student
    puts "Create Teacher:"
    print "Age: "
    age = gets.chomp.to_i

    print "Name: "
    name = gets.chomp

    print "Specialization: "
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name)

    puts "Person created successfully!"
end