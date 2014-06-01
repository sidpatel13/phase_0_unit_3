# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
 def super_fizzbuzz(array)
  new_array = array
   array.each do |i|
     if i % 3 == 0 && i % 5 == 0
        new_array == "FizzBuzz"
     elsif i % 3 == 0
        new_array == "Buzz"
     elsif i % 5 == 0
        new_array == "Fizz"
     else new_array == i
     end
   end
  new_array
 end
 

=end


# 3. Initial Solution

def super_fizzbuzz(array)
  new_array =[]
  array.each do |i|
    if i % 3 == 0 && i % 5 == 0
        new_array << "FizzBuzz"
    elsif i % 3 == 0
        new_array << "Fizz"
    elsif i % 5 == 0
        new_array << "Buzz"
    else 
        new_array << i
    end
  end
  new_array
end

 


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 