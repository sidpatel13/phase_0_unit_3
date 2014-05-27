# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
=begin
First, start with a hash and create key and values for 1 to 20, 30, 40, 50, 60, 70, 80, 90, 100
if hash.has_key?(num)
 hash[num]
elsif num < 100
 hash[num-num % 10] + hash[num % 10]
else argument error
 
 
=end


# 3. Initial Solution

def in_words(num)
    hash = {0=> "zero",1=>"one",2=> "two", 3=> "three", 4=> "four", 5=> "five", 6=>"six", 7=>"seven", 8=>"eight", 9=> "nine", 10=> "ten", 11=> "eleven", 12 => "twelve", 13 => "thirteen", 14=> "fourteen", 15 => "fifteen", 16=> "sixteen", 17=>"seventeen", 18=> "eighteen", 19=> "nineteen", 20=> "twenty", 30=> "thirty", 40=> "fourty", 50=> "fifty", 60=> "sixty", 70=> "seventy", 80=> "eighty", 90=> "ninety", 100=> "hundred"}
    if hash.has_key?(num)
        hash[num]
    elsif num < 100
        hash[num - num % 10] + " " + hash[num % 10]
    else
        raise ArgumentError.new("Number not in the specified range")
    end
    
end
        



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
    raise "Assertion failed!" unless yield
end

assert{ in_words(4) == "four"}
assert{ in_words(27) == "twenty seven"}
assert{ in_words(92) == "ninety two"}



# 5. Reflection 