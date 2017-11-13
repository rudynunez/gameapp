i = 0
numbers = []
puts "Choose a limit no higher than 100"
print "> "
snur = $stdin.gets.chomp.to_i

while snur > 101
  puts "That number is too high"
  puts "Choose a limit no higher than 100"
print "> "
snur = $stdin.gets.chomp.to_i
end

puts "Now choose an increment (less than 101): "
increment = $stdin.gets.chomp.to_i
while increment > 101
  puts "That number is too high"
  puts "Choose a limit no higher than 100"
print "> "
increment = $stdin.gets.chomp.to_i
end


while i < snur
  puts "At the top i is #{i}"
  numbers.push(i)
  
  i += increment
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }
