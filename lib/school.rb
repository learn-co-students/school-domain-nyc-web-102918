require 'pry'
class School

  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    # @roster = {1 => [student_name1,... ], 2 => []}
  end


  def add_student(student_name, grade)
    # add the student name as the value and the student grade  as the key of the roster hash
    # need the set the roster hash keys as the student grade
    if roster[grade]
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

def grade(student_grade)
  roster[student_grade]
end

def sort
  #iterate roster key/value,
  #sort the value array,
  #return the sorted array with hash
  #binding.pry
  sorted_roster = {}

  roster.map do |grade, student_name|

    sorted_roster[grade] = student_name.sort
  end

  #new hash variable for map
  #each hash assign to the new hash

  sorted_roster
end

end
