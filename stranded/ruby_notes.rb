



# Challenge:Find out why the elsif for the final_choice didn't work

def death
  puts "You have died."
  puts "Start over?"
  puts "Y or N?"
  puts "---------------------------"
  

    print "> "
    choice = $stdin.gets.chomp
    case
    when choice == "y"
          puts "round we go!"
          death
      
    when choice == "n"
          puts "Are you sure you want to quit?"
          puts "Press Y or N"
          print "> "
          final_choice = $stdin.gets.chomp
    when final_choice = "n"
          puts "Finally! Jeezus!"
          death
    when final_choice = "y"    
        puts "Thank you for playing!"
      
          exit(0)
    end
  
end
 
death