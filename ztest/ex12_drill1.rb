print "Please make your deposit: "
deposit = gets.chomp.to_f

change = deposit * 0.1
puts "Thank you! Your change is: $#{change}"
