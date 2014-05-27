# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
def reverse_words(word)
    

end



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_word(length = 5)
    rand(36**length).to_s(36)
end

def assert
    raise "Assertion failed!" unless yield
end

word = random_word
assert{reverse_words(word).should eq word.reverse}
assert{ reverse_words("#{word1} #{word2}").should eq "#{word1.reverse} #{word2.reverse}"}
assert{reverse_words("Ich bin ein Berliner").should eq "hcI nib nie renilreB"}



# 5. Reflection 