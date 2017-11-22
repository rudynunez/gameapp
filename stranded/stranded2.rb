class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end



class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Confirm_Quit < Scene
  
  def enter()
    puts "Are you sure you want to quit?"
    puts "Press 'Q' to quit now or"
    puts "press 'S' to start over."
    print "> "
    
    action = $stdin.gets.chomp
    
      if action == "q"
        puts "Thank you for playing!"
        exit(0)
        
        elsif action == "s"
        return 'intro'
        
      else
        puts "I'm sorry. I don't understand"
      end
  end
end

class Death < Scene

  def enter()
    puts "You have died."
    puts "Start over?"
    puts "Y or N?"
    puts "---------------------------"
    print "> "
    
    action = $stdin.gets.chomp
    
      if action == "y"
        return 'intro'
        
        elsif action == "n"
          return 'confirm_quit'
        
        else 
          puts "I'm sorry. I don't understand."
      end
    
  end
end


class Intro < Scene

  def enter()
      File.open("intro.txt").each do |line|
    puts line
  

    puts "1.  Search for shelter within the ruined city."
    puts "2.  Make camp in the woods."
    puts "---------------------------"

    action = $stdin.gets.chomp

    if action == "1"
      
      return 'shelter_ruins'

    elsif action == "2"
      
      return 'waking_trees'

    else
      puts "I'm sorry, I don't understand."
      return 'intro'
    end
  end
  end
end


class Shelter_Ruins < Scene
  
  def enter()
    File.open("shelter_in_city.txt").each do |line|
    puts line
  
    puts "Press ENTER to continue."
    print "> "
    
    action = $stdin.gets.chomp
    
      if action.empty?
        return 'waking_dry'
        
      else
        puts "I'm sorry, I don't understand."
        return 'shelter_ruins'
      end
    end
  end
end


class Waking_Dry < Scene

  def enter()
    File.open("waking_dry.txt").each do |line|
      puts line
    end
  
  puts "1.  Search the ruins for water."
  puts "2.  Search the forest for water."
  puts "---------------------------"
    
    
    action = $stdin.gets.chomp
    
    if action == "#{1}"
 
        return 'old_well'
        
        elsif action == "#{2}"
        
        return 'drink_forest'
    else
        puts "I'm sorry. I don't understand."
        return 'waking_dry'
     
    end
  end
end



class Old_Well < Scene

  def enter()
   File.open("old_well.txt").each do |line|
    puts line
  end
  
  puts "1.  Use something to lower down the jar."
  puts "2.  Continue searching the ruins."
  puts "3.  Look for water in the forest."
  puts "---------------------------"
  
    action = $stdin.gets.chomp

     if action == "#{1}"
          return 'get_vine_1'
    
      
        elsif action == "#{2}"
          File.open("search_ruins_death.txt").each do |line|
            puts line
          end
          return 'death'
          
          elsif action == "#{3}"
            return 'drink_forest'
  
        else
          puts "I'm sorry. I don't understand."
          return "old_well"
     end
  end
end


class Get_Vine_1 < Scene

  def enter()
    File.open("get_vine_1.txt").each do |line|
      puts line
    end
  
  puts "1.  Try again."
  puts "2.  Continue searching the ruins."
  puts "3.  Look for water in the forest."
  puts "---------------------------"
  
  print "> "
  
    action = $stdin.gets.chomp
    
    
      if action == "#{1}"
          File.open("try_death.txt").each do |line|
            puts line
          end
          return 'death'
      
        elsif action == "#{2}"
           File.open("search_ruins_death.txt").each do |line|
            puts line
           end
           return 'death'
          
          elsif action == "#{3}"
            return 'drink_forest'
        else
        
        puts "I'm sorry. I don't understand."
        return 'get_vine_1'
      
 
      end
  end
end


class Snatch_Locust < Scene

  def enter()
    File.open("snatch_locust.txt").each do |line|
    puts line
    end
  
  puts "1.  Kill it."
  puts "2.  ."
  puts "3.  ."
  puts "---------------------------"
  
  
  
    print "> "
    action = $stdin.gets.chomp
    
    
      if action == "#{1}"
          return 'locust_raw'
      
        elsif action == "#{2}"
          
          
          elsif action == "#{3}"
          
        else
         puts "I'm sorry. I don't understand."
         return 'snatch_locust'
 
      end
  end
end


class Back_Ruins < Scene

  def enter()
    File.open("back_to_ruins.txt").each do |line|
     puts line
    end
  puts "1.  Keep examining the pictograms."
  puts "2.  Search the ruins for something else."
  puts "3.  Other."
  puts "---------------------------"

    print "> "
    action = $stdin.gets.chomp
    
    
      if action == "#{1}"
        return 'examine_pictograms'
          
    
      
        elsif action == "#{2}"
          return 'ruins_search_again'
          
          elsif action == "#{3}"
            
        
        else
        puts "I'm sorry. I don't understand."
        return 'back_ruins'
      end
  end  
end

class Camp_Woods < Scene
  def enter()
    File.open("camp_woods.txt").each do |line|
     puts line
    end
    puts '\n'
    puts '\n'
    
  
    puts "Press ENTER to continue."
    
    
    print "> "
    action = $stdin.gets.chomp
    
    
      if action.empty?
          return 'waking_trees'
    
        else
        puts "I'm sorry. I don't understand."
        return 'camp_woods'
      end
  end
end

class Waking_Trees < Scene
  def enter()
    File.open("waking_trees.txt").each do |line|
      puts line
    end
  puts "1.  Go hunting."
  puts "2.  Try your luck foraging."
  puts "---------------------------"
    
  
  
    print "> "
    action = $stdin.gets.chomp
    
    
      if action == "#{1}"
          return 'go_hunting'
    
      
        elsif action == "#{2}"
          return 'try_forage'
        
        else
        puts "I'm sorry. I don't understand."
        return 'waking_trees'
      end
  end
end  



class Drink_Forest < Scene
  def enter()
     File.open("drink_forest.txt").each do |line|
      puts line
     end
  puts "1.  Go hunting."
  puts "2.  Try your luck foraging."
  puts "---------------------------"
    
    
    
    print "> "
    action = $stdin.gets.chomp
      
      
      if action == "#{1}"
          return 'go_hunting'
    
      
        elsif action == "#{2}"
          return 'try_forage'
        
        else
        puts "I'm sorry. I don't understand."
        return 'drink_forest'
      end
  end  
end

class Try_Forage < Scene
  def enter()
    File.open("try_forage.txt").each do |line|
      puts line
    end
      puts "1.  Try the brown fruit."
      puts "2.  Try the blue fruit."
      puts "3.  Try neither."
    
      print "> "
      action = $stdin.gets.chomp
      
      
        if action == "#{1}"
            return 'brown_fruit'
      
        
          elsif action == "#{2}"
            return 'blue_fruit'
            
            elsif action == "#{3}"
              return 'try_neither'
          
          else
          puts "I'm sorry. I don't understand."
          return 'try_forage'
        end
  end  
end

class Blue_Fruit < Scene
  def enter()
    File.open("blue_fruit.txt").each do |line|
      puts line
     end
  puts "1.  Keep eating the blue fruit."
  puts "2.  Eat some of the brown fruit."
  puts "3.  Look for something else to eat."
  puts "---------------------------"
    
  
  
    print "> "
    action = $stdin.gets.chomp
    
    
      if action == "#{1}"
          File.open("blue_death.txt").each do |line|
           puts line
          end
          return 'death'
      
        elsif action == "#{2}"
          return 'brown_fruit'
          
          elsif action == "#{3}"
            return 'something_else'
        
        else
        puts "I'm sorry. I don't understand."
        return 'blue_fruit'
      end
  end  
end

class Brown_Fruit < Scene
  def enter()
    File.open("brown_fruit.txt").each do |line|
      puts line
     end
  puts "1.  ."
  puts "2.  ."
  puts "3.  ."
  puts "---------------------------"
    
    
    
      print "> "
      action = $stdin.gets.chomp
    
    
      if action == "#{1}"
          
    
      
        elsif action == "#{2}"
          
          
          elsif action == "#{3}"
            
        
        else
        puts "I'm sorry. I don't understand."
        return 'brown_fruit'
      end
  end
end

class Go_Hunting < Scene
  def enter()
    File.open("go_hunting.txt").each do |line|
      puts line
     end
  puts "1.  try to snatch one from the branch?"
  puts "2.  take some time to make a net?"
  puts "3.  forget about it...I'm not eating locusts."
  puts "---------------------------"
    
    
    
      print "> "
      action = $stdin.gets.chomp
      
    
      if action == "#{1}"
          return 'snatch_locust'
    
      
        elsif action == "#{2}"
          return 'make_net'
          
          elsif action == "#{3}"
            return 'no_locust'
        
        else
        puts "I'm sorry. I don't understand."
        return 'go_hunting'
      end
  end  
end

class Make_Net < Scene
  def enter()
    File.open("make_net.txt").each do |line|
      puts line
     end
  puts "1.  Take them to camp and roast them."
  puts "2.  Eat one raw."
  puts "3.  Let them go."
  puts "---------------------------"
    
    
    
      print "> "
      action = $stdin.gets.chomp
      
    
      if action == "#{1}"
          return 'locust_roast'
    
      
        elsif action =="#{2}"
          return 'locust_raw'
          
          elsif action == "#{3}"
            return 'no_locust'
        
        else
        puts "I'm sorry. I don't understand."
        return 'make_net'
      end
  end  
end

class Locust_Raw < Scene
  def enter()
    File.open("locust_raw.txt").each do |line|
      puts line
     end
     puts "<<BRANCH ENDS>> Story under construction."
  puts "1.  ."
  puts "2.  ."
  puts "3.  ."
  puts "---------------------------"
    
      print "> "
      action = $stdin.gets.chomp
    
    
      if action.empty?
        return 'death'
        
    
        else
        puts "I'm sorry. I don't understand."
        return 'locust_raw'
      end
  end  
end

class Locust_Roast < Scene
  def enter()
    File.open("locust_roast.txt").each do |line|
      puts line
     end
  puts "1.  Go check out the ruins."
  puts "2.  Go foraging."
  puts "3.  Sleep."
  puts "---------------------------"
    
    
    
      print "> "
      action = $stdin.gets.chomp
      
    
      if action == "#{1}"
        return 'back_to_ruins'
          
    
      
        elsif action == "#{2}"
          return 'try_forage'
          
          elsif action == "#{3}"
            
        
        else
        puts "I'm sorry. I don't understand."
        return 'locust_roast'
      end
  end  
end

class No_Locust < Scene
  def enter()
    File.open("no_locust.txt").each do |line|
      puts line
     end
  puts "1.  Try the brown fruit."
  puts "2.  Try the blue fruit."
  puts "3.  Try neither."
  puts "---------------------------"
    
    
    
      print "> "
      action = $stdin.gets.chomp
    
    
      if action == "#{1}"
        return 'brown_fruit'
        
        elsif action == "#{2}"
          return 'blue_fruit'
          
          elsif action == "#{3}"
            return 'no_fruit'
        
        else
        puts "I'm sorry. I don't understand."
        return 'no_locust'
      end
  end  
end

class No_Fruit < Scene
  def enter()
    File.open("no_fruit.txt").each do |line|
      puts line
     end
  puts "1.  Keep searching through the forest."
  puts "2.  Go hunting instead."
  puts "3.  Ignore your stomach and go explore the ruins."
  puts "---------------------------"
    
  
    
      print "> "
      action = $stdin.gets.chomp
    
    
      if action == "#{1}"
        
        
        elsif action == "#{2}"
          return 'go_hunting'
          
          elsif action == "#{3}"
            return 'no_fruit'
        
        else
        puts "I'm sorry. I don't understand."
        return 'no_fruit'
      end
  end  
end







class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end


class Map
  @@scenes = {
  'intro' => Intro.new(),
  'shelter_ruins' => Shelter_Ruins.new(),
  'waking_dry' => Waking_Dry.new(),
  'old_well' => Old_Well.new(),
  'get_vine_1' => Get_Vine_1.new(),
  'snatch_locust' => Snatch_Locust.new(),
  'back_ruins' => Back_Ruins.new(),
  'camp_woods' => Camp_Woods.new(),
  'waking_trees' => Waking_Trees.new(),
  'try_forage' => Try_Forage.new(),
  'blue_fruit' => Blue_Fruit.new(),
  'brown_fruit' => Brown_Fruit.new(),
  'go_hunting' => Go_Hunting.new(),
  'make_net' => Make_Net.new(),
  'locust_raw' => Locust_Raw.new(),
  'locust_roast' => Locust_Roast.new(),
  'no_locust' => No_Locust.new(),
  'no_fruit' => No_Fruit.new(),
  'drink_forest' => Drink_Forest.new(),
  'death' => Death.new(),
  'finished' => Finished.new(),
  'confirm_quit' => Confirm_Quit.new()
  
  
  }

  
  def initialize(start_scene)
    @start_scene = start_scene
  end
  
  
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end
  
  
  
  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('intro')
a_game = Engine.new(a_map)
a_game.play()

