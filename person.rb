require './Nameable'
require './rental'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super(name, age, parent_permission)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
