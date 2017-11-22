class Scene
  def enter()
    
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

class Death < Scene
  def enter()
    puts "You have died."
    puts "Sorry for your loss."
    exit(0)
  end
end


class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Beginning < Scene
  def enter()
    puts "Give me a sign."
    puts "Please input 1 or 2."
    print "> "
 
    player_input = $stdin.gets.chomp
    
      if  player_input == "#{1}"
        return 'finished'
      elsif player_input == "#{2}"
        return 'death'
      else 
        puts "i don't get it."
        return 'beginning'
      end
      
  end    
end


















class Map
  @@scenes = {
  'beginning' => Beginning.new(),
  'death' => Death.new(),
  'finished' => Finished.new(),
  
  
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

a_map = Map.new('beginning')
a_game = Engine.new(a_map)
a_game.play()