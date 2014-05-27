# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
 
def is_fibonacci?(num)
   array = [0..num]
    new_array =[]
     array.each_with_index do |i, index|
        if array[index] = array[index-1] + array[index-2]
            then new_array << array[index]
        end
     end
    if array.include?(num)
        true
    else
        false
    end
end

 
 
 
end
 
=end



# 3. Initial Solution
=begin
def is_fibonacci?(num)
    array = [0..num]
    counter = 0
    fib = []
      while counter < array.length
          if array[counter] == array[counter-1] + array[counter-2]
            fib << array[counter]
          end
      end
        fib.include?(num)
end
=end



def is_fibonacci?(num)
    array = (0..num).to_a
    fib = []
    array.each_with_index do |i, index|
        if array[index] == array[index-1] + array[index-2]
            fib << array[index]
        end
    end
    fib.include?(num)
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
    raise "Assertion failed!" unless yield
end
=begin
def random_fibonacci
    [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

assert {is_fibonacci?(random_fibonacci) == true}
=end
assert {is_fibonacci?(8670007398507948658051921) == true}
assert {is_fibonacci?(random_fibonacci+100) == false}
assert {is_fibonacci?(927372692193078999171) == false}






# 5. Reflection 