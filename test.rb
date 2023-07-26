require './person'
require './capitalize'
require './trimmer'

# Test Person class
person = Person.new(22, 'maximilianus')
puts person.correct_name # Output: "maximilianus"

# Test CapitalizeDecorator
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name # Output: "Maximilianus"

# Test TrimmerDecorator
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name # Output: "Maximilian"
