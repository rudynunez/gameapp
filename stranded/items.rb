  # can be 'taken' by Player. A taken object is moved to the 
  # Player's inventory
  #}
  # Number horsepower
   #Characters type_of_tank
   #Number Capacity
  # Function speeding {
   #}
   
  # Function driving {
  # }
   
   #Function halting {
   #}
#}






class Item
  def initialize(item_id, shown_name, true_name, item_type, item_quantity, item_location)
    @id = item_id
    @name = shown_name
    @t_name = true_name
    @type = item_type
    @quantity = item_quantity
    @location = item_location
  end
end



