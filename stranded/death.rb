def confirm_quit
  puts "Are you sure you want to quit?"
  puts "Press 'Q' to quit now or"
  puts "press 'S' to start over."
  print "> "
  choice = $stdin.gets.chomp
  if choice == "q"
    puts "Thank you for playing!"
    exit(0)
    elsif choice == "s"
    start
  else
    puts "I'm sorry. I don't understand"
  end

          
end


def death
  puts "You have died."
  puts "Start over?"
  puts "Y or N?"
  puts "---------------------------"
  
  while true
    print "> "
    choice = $stdin.gets.chomp
    if choice == "y"
      start
      
      elsif choice == "n"
        confirm_quit
      
      else 
        puts "I'm sorry. I don't understand."
    
    end
  end
end