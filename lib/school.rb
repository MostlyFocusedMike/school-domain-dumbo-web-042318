# code here!
class School
  attr_accessor :roster
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade_num)
    @roster[grade_num]
  end
  
  def sort
    @roster.sort.to_h.each do |grade,students|
      students.sort!
    end
  end
end