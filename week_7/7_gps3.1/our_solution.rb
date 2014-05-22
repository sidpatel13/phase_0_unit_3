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