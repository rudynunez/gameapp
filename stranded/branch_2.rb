# Branch 2
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