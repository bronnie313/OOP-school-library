require './app'

def main
    puts "Wecome to School Library App!"
    
    loop do
        puts "\nPlease choose an option by entering a number:"
        puts "1 - List all books"
        puts "2 - List all people"
        puts "3 - Create a person (teacher or student)"
        puts "4 - Create a book"
        puts "5 - Create a rental"
        puts "6 - List all rentals for a given peson id"
        puts "7 - Exit"

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
            print "Enter person id: "
            person_id = gets.chomp.to_i
            list_rentals_for_person(person_id)
        when 7
            puts "Exiting the app"
            break
        else
            puts "Invalid choice. Please try again."
        end
    end
end 


main