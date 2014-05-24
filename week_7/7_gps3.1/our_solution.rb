# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Sid Patel
# 2.
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add an item to my list.
# As a user, I want to remove an item from my list.
# As a user, I want to see my list.
# As a user, I want to categorize my list.
# As a user, I want to check it off the list.
 
# Pseudocode
# class Grocery
#   def initialize (list)
#   @list = list
#   end
#   def add (item)
#    if item is not in the list push into the list
#   end
# 
#   def remove (item)
#     if item is in the list we pop it out of the list
#   end
#
#   def view 
#     puts @list
#   end
#

# class Item
#   def initialize(name, category, checked = false)
#    @name=name
#    @category=category
#    @checked=checked
#   end
#   def category
#      dairy_array =[]
#      
#      if item = "milk","cheese", "yogurt" then push item into dairy_array
#      puts dairy_array
#
#   end
#
#   def check_item
#      checked = true
#   
#   end
# item = Item.new ("apples", "fruit")
# item.check_item
# Your fabulous code goes here....

class List
    def initialize
        @list = []
    end
    def add(item)
        @list << item
    end
    def remove(item)
        @list.delete(item)
    end
    def view(category)
        case category
          when "fruit"
            @list.each do |item| 
                if item.category == "fruit"
                  puts "#{item.name} #{item.checked}"
                end    
            end
          when "meat"
            @list.each do |item| 
                if item.category == "meat"
                  puts "#{item.name} #{item.checked}"
                end    
            end
           when "dairy"
            @list.each do |item| 
                if item.category == "meat"
                  puts "#{item.name} #{item.checked}"
                end    
            end
          else
            @list.each do |item|
                puts "#{item.name} #{item.checked}"
            end

        end
    end
end

class Item
  attr_reader :name, :category, :checked
    def initialize(name, category, checked=false)
        @name = name
        @category = category
        @checked = checked
    end
    
    
    def check_item
        @checked= true    
    end

end



# DRIVER CODE GOES HERE. 
 
item = Item.new("apples", "fruit")
item.check_item
pears = Item.new('pears', 'fruit')
chicken = Item.new('chicken', 'meat')
steak = Item.new('steak', 'meat')
sid_list = List.new
sid_list.add(pears)
sid_list.add(item)
#sid_list.view("fruit")
#sid_list.remove(item)
sid_list.add(chicken)
sid_list.add(steak)
sid_list.view('meat')
# sid_list.view

=begin
 What parts of your strategy worked? What problems did you face?
 I think initially I was creating a list class with an item already inside it. As I got in further into my pseudocode I realized I needed to create another item class. 
 I learned how driver code can be used to insert the item class into the list class.
 
 What questions did you have while coding? What resources did you find to help you answer them?
 It had been a while since I used attr_reader, so I wanted to know what we can do with such a command. I learned attr_reader :name is the equivalent of having to type def name....and write everything out.
 When you use driver code "item = Item.new("apples","fruit")" you are also inputting a method "name" which is "apples". When you create a new list, "sid_list" and use methods ".name" and ".category" in 
 the List class, it knows you are referring to the methods in the Item class. You join the two classes by typing "sid_list.add(item)". It adds the item to the list.
 
 So understanding how to use driver code properly like this was something I had a question about.
 
 What concepts are you having trouble with, or did you just figure something out? If so, what?
 Understanding this logic of how each class is supposed to show a set of behaviors that can be combined with another class's behaviors and attributes to give an object its functionality was important.
 
 Did you learn any new skills or tricks?
 I learned how to combine classes and write driver code to make this happen.
 
 
 
 How confident are you with each of the Learning Competencies?
 Very confident.
 
 
 Which parts of the challenge did you enjoy?
 I think creating the classes according the user story was a lot of fun.
 
 
 Which parts of the challenge did you find tedious?
 None really.

=end