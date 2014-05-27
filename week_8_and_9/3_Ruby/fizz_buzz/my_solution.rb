# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
 def super_fizzbuzz(array)
   array.each do |i|
     if i % 3 == 0 && i % 5 == 0
        i == "FizzBuzz"
     elsif i % 3 == 0
        i == "Buzz"
     elsif i % 5 == 0
        i == "Fizz"
     else i
     end
   end
 end
 

=end


# 3. Initial Solution

def super_fizzbuzz(array)
  array.each do |i|
    if i % 3 == 0 && i % 5 == 0
        i.to_s.replace "FizzBuzz"
    elsif i % 3 == 0
        i.replace "Fizz"
    elsif i % 5 == 0
        i.replace "Buzz"
    end
  puts array
  end
end

super_fizzbuzz([1,2,3])
super_fizzbuzz([1,2,5])
super_fizzbuzz([1,2,15])



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 