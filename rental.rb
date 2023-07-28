require './person'
require './book'

class Rental
  attr_accessor :person, :book

  def initialize(person, book)
    @person = person
    @book = book

    person.rentals << self
    book.rentals << self
  end
end
