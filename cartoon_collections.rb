require 'pry'

def roll_call_dwarves(array)
  array.each_with_index{|name, index| puts "#{index+1} #{name}"}
end

def summon_captain_planet(array)
  planet_array = array.collect do |planet| 
    planet[0] = planet[0].upcase 
    planet + "!" 
  end 
  return planet_array 
end

def long_planeteer_calls(array)
  array.each do |word| 
    if word.length > 4
      return true
    end   
  end
  return false 
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  new_array = []
  array.each do |ingredient| 
    if cheese_types.include?(ingredient) == true
    new_array << ingredient  
    end
  end 
  if new_array.length > 0
    return new_array[0]
  else 
    return nil
  end 
end
