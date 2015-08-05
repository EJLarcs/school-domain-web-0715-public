# Write code here
class School


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def grade(grade)
    @grade = @roster[grade]
  end

 def sort
   new_hash = {}
   sorting_roster = @roster.sort.to_h
   sorting_roster.each { |key, value| new_hash[key] = sorting_roster[key].sort }
   new_hash 
 end


  def add_student(student, grade)
    if roster.has_key?(grade)
    @roster[grade] << student
    else
    @roster[grade] = [student]
    end
  end

end