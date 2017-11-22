class Parent
  
  def override()
    puts "PARENT override()"
  end
end

class Child < Parent 
  def omni()
    puts "Galactic Lactose"
  end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.omni()
