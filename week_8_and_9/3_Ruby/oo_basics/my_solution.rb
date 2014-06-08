# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @scores = scores
    @first_name = first_name
  end

  def first_name
  	@first_name
  end

  def average
  	@scores.inject {|sum, n| sum + n}/@scores.length
  end

  def letter_grade
  	case letter_grade
  	  when @scores.inject {|sum, n| sum + n}/@scores.length >= 90
  	  	"A"
  	   when @scores.inject {|sum, n| sum + n}/@scores.length >= 80
  	   	"B"
  	   when @scores.inject {|sum, n| sum + n}/@scores.length >= 70
  	    "C"
  	   when @scores.inject {|sum, n| sum + n}/@scores.length >= 60
  	   	"D"
  	   else 
  	   	"F"

  	 end
  end
  
  

end

  



students = Array.new
students[0] = Student.new("Alex",[100,100,100,0,100])
students[1] = Student.new("Simon",[])
students[2] = Student.new("John",[])
students[3] = Student.new("Sam",[])
students[4] = Student.new("Johnson",[])



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 