require "pry"

class School

attr_accessor :name, :roster, :grade

  def initialize(name)
     # @name = name
     @name = name
     @roster={}
end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
end
    def grade(grades)
      roster[grades]
end

    def sort

    roster.each do |grade, people|

         roster[grade] = people.sort
end
roster          

end

end

  # def grade(grades)
  #   roster[grades]
  #
  # end
