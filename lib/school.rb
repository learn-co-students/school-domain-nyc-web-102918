class School
  def initialize(school)
      @name = school
      @roster = {}
    end

    def roster
      @roster
    end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.each do |grades, names|
      if grades == grade
      return names
      end
    end
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
      end
    end
  end
