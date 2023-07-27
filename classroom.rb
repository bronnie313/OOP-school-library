class Classroom
  attr_accessor :lable, :students

  def initialize(lable)
    @lable = lable
    @students = []
  end

  def add_student(student)
    student.Classroom = self
    @student << student
  end
end
