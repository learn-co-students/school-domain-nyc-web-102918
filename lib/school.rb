class School 

def initialize(school_name)
  @school_name= school_name
  @roster = {}
end

def roster
  @roster
end

def add_student(student, grades)
 @student = student
 @grades = grades
 if @roster.include?(grades)== false 
   @roster[grades] = []
 end 
 @roster[grades]<< student
end
 
  def grade(grades)
    @roster.each {|key, value| 
      if @roster.include?(grades)}
  end
    
def sort 
  @roster.each {|k,v|
  v.sort!}
end
end

