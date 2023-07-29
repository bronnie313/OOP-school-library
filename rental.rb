# require './person'
# require './book'

class Rental
  attr_accessor :person, :book, :date

  def initialize(person, book, date)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
