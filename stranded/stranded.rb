
require "./death.rb"
require "./branch_2.rb"

# Branch 1
def get_vine_1
  File.open("get_vine_1.txt").each do |line|
    puts line
  end
  
  puts "1.  Try again."
  puts "2.  Continue searching the ruins."
  puts "3.  Look for water in the forest."
  puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          File.open("try_death.txt").each do |line|
            puts line
          end
          death
      
        elsif choice == 2
          search_ruins_death
          
          elsif choice == 3
            drink_forest
        else
        puts "I'm sorry. I don't understand."
        
      end
  end
end  

     
     
     
# Branch 1      
def old_well
  File.open("old_well.txt").each do |line|
    puts line
  end
  
  puts "1.  Use something to lower down the jar."
  puts "2.  Continue searching the ruins."
  puts "3.  Look for water in the forest."
  puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          get_vine_1
    
      
        elsif choice == 2
          File.open("search_ruins_death.txt").each do |line|
            puts line
          end
          death
          
          elsif choice == 3
            drink_forest
  
        else
        puts "I'm sorry. I don't understand."
        
      end
  end
end

# Branch 1
def waking_dry
  File.open("waking_dry.txt").each do |line|
    puts line
  end
  
  puts "1.  Search the ruins for water."
  puts "2.  Search the forest for water."
  puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          old_well
    
      
        elsif choice == 2
          drink_forest
        
        else
        puts "I'm sorry. I don't understand."
      end
  end
end

  

# Branch 1
def shelter_ruins
  File.open("shelter_in_city.txt").each do |line|
    puts line
  end
  puts "Press ENTER to continue."
    
    while true 
    print "> "
    choice = $stdin.gets.chomp
    
    
      if choice.empty?
          waking_dry
    
        else
        puts "I'm sorry. I don't understand."
      end
    end
end
  


# The very start
def start
  File.open("intro.txt").each do |line|
    puts line
  end

  puts "1.  Search for shelter within the ruined city."
  puts "2.  Make camp in the woods."
  puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          shelter_ruins
    
      
        elsif choice == 2
          waking_trees
        
        else
        puts "I'm sorry. I don't understand."
      end
  end
end

start

