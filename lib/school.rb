# code here!
require 'pry'

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(student_name, grade_number)
    if @roster.has_key?(grade_number)
      @roster[grade_number] << student_name
    else
      @roster[grade_number] = []
      @roster[grade_number] << student_name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, student_array|
      @roster[grade] = student_array.sort
    end
  end
  
end
