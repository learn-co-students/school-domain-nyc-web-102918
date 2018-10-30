class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)

    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end

    @roster[grade] << student_name
  end

  def roster
    @roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_school = @roster
    sorted_school.map do |grade, students|
      sorted_school[grade] = students.sort
    end
    sorted_school
  end

end
