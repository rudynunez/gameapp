

# creates a funciton named 'cheese_and_crackers' and tells it to accept 2 args:
#    'cheese_count' and 'boxes_of_crackers', then print the output.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

# passes in args to cheese_and_crackers
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# creates variables and assigns them values
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

# calls the function and passes it 2 args which are the 2 variables created earlier
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# takes the values of the variables and adds 100 and 1000 respectively
puts "We can even do math inside, too:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

