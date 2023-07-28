require './person'
require './book'

class Rental
  attr_accessor :person, :book, :date

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    person.rentals << self
    book.rentals << self
  end
end
