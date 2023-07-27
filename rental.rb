require './person'
require './book'

class Rental
  attr_accessor :date, :person, :book

  def initialize(person, book, date)
    @date = date
    @person = person
    @book = book

    person.add_rental(self)
    book.add_rental(self)
  end
end
