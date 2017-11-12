puts "How many people are there?"
people = gets.chomp

puts "How many cars are there?"
cars = gets.chomp

puts "How many trucks are there?"
trucks = gets.chomp

if cars > people
  puts "We should take the cars."
  elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too mant trucks."
  elsif trucks < cars
  puts "Maybe we could take the trucks."
else puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

    