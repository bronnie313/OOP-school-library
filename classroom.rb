class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @lable = label
    @students = []
  end

  def add_student(student)
    student.classroom = self
    @student << student
  end
end
