# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster.include?(grade) ? roster[grade] << student : roster[grade] = [student]
  end

  def grade(grade)
    roster[grade] 
  end

  def sort
    roster.each do |grade, array|
      array.sort!
    end
  end
end