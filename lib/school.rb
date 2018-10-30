# code here!
require "pry"

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster_array = sorted_roster.sort{ |a,b| b <=> a }
    sorted_roster_array.to_h
  end
end
