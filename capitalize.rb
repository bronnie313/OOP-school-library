require './decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name
  end
end