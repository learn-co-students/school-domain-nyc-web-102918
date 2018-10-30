# code here!
class School



  def initialize(school)
    @school = school
    @roster = {}
  end

def roster
@roster
end


  def add_student(name, grade)

      if @roster[grade]
        @roster[grade] << name

      else
        @roster[grade] = []
        @roster[grade] << name

      end

  end

  def grade(gradeNum)
    @roster[gradeNum]
  end

    def sort
        @roster.each do |grade, studentArray|
          studentArray = studentArray.sort!
        end
        @roster
    end

end
