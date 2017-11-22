# Branch 2 & 3

def no_fruit
  File.open("no_fruit.txt").each do |line|
    puts line
   end
puts "1.  Keep searching through the forest."
puts "2.  Go hunting instead."
puts "3.  Ignore your stomach and go explore the ruins."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
        
        
        elsif choice == 2
          go_hunting
          
          elsif choice == 3
            no_fruit
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end
def no_locust
  File.open("no_locust.txt").each do |line|
    puts line
   end
puts "1.  Try the brown fruit."
puts "2.  Try the blue fruit."
puts "3.  Try neither."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
        brown_fruit
        
        elsif choice == 2
          blue_fruit
          
          elsif choice == 3
            no_fruit
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def locust_roast
  File.open("locust_roast.txt").each do |line|
    puts line
   end
puts "1.  Go check out the ruins."
puts "2.  Go foraging."
puts "3.  Sleep."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
        back_to_ruins
          
    
      
        elsif choice == 2
          try_forage
          
          elsif choice == 3
            go_sleep
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def locust_raw
  File.open("locust_raw.txt").each do |line|
    puts line
   end
   puts "<<BRANCH ENDS>> Story under construction."
puts "1.  ."
puts "2.  ."
puts "3.  ."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp
    
    
      if choice.empty?
        death
        
    
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def make_net
  File.open("make_net.txt").each do |line|
    puts line
   end
puts "1.  Take them to camp and roast them."
puts "2.  Eat one raw."
puts "3.  Let them go."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          locust_roast
    
      
        elsif choice == 2
          locust_raw
          
          elsif choice == 3
            no_locust
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def go_hunting
  File.open("go_hunting.txt").each do |line|
    puts line
   end
puts "1.  try to snatch one from the branch?"
puts "2.  take some time to make a net?"
puts "3.  forget about it...I'm not eating locusts."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          snatch_locust
    
      
        elsif choice == 2
          make_net
          
          elsif choice == 3
            no_locust
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def brown_fruit
  File.open("brown_fruit.txt").each do |line|
    puts line
   end
puts "1.  ."
puts "2.  ."
puts "3.  ."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          
    
      
        elsif choice == 2
          
          
          elsif choice == 3
            
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def blue_fruit
  File.open("brown_fruit.txt").each do |line|
    puts line
   end
puts "1.  Keep eating the blue fruit."
puts "2.  Eat some of the brown fruit."
puts "3.  Look for something else to eat."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          File.open("blue_death.txt").each do |line|
           puts line
          end
          death
      
        elsif choice == 2
          brown_fruit
          
          elsif choice == 3
            something_else
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def try_forage 
  File.open("try_forage.txt").each do |line|
    puts line
   end
puts "1.  Try the brown fruit."
puts "2.  Try the blue fruit."
puts "3.  Try neither."
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          brown_fruit
    
      
        elsif choice == 2
          blue_fruit
          
          elsif choice == 3
            try_neither
        
        else
        puts "I'm sorry. I don't understand."
      end
  end  
end

def drink_forest 
   File.open("drink_forest.txt").each do |line|
    puts line
   end
puts "1.  Go hunting."
puts "2.  Try your luck foraging."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          go_hunting
    
      
        elsif choice == 2
          try_forage
        
        else
        puts "I'm sorry. I don't understand."
      end
  end 
end

def search_ruins_death
  File.open("search_ruins_death.txt").each do |line|
    puts line
  end
  death
end


def waking_trees
  File.open("waking_trees.txt").each do |line|
    puts line
  end
puts "1.  Go hunting."
puts "2.  Try your luck foraging."
puts "---------------------------"
  
  
  while true 
    print "> "
    choice = $stdin.gets.chomp.to_i
    
    
      if choice == 1
          go_hunting
    
      
        elsif choice == 2
          try_forage
        
        else
        puts "I'm sorry. I don't understand."
      end
  end
end

def camp_woods
  File.open("camp_woods.txt").each do |line|
    puts line
    puts '\n'
    puts '\n'
  end
    puts "Press ENTER to continue."
    
    while true 
    print "> "
    choice = $stdin.gets.chomp
    
    
      if choice.empty?
          waking_trees
    
        else
        puts "I'm sorry. I don't understand."
      end
    end
end