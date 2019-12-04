require "pry"

$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0 
while director_index < source.length do 
  directors_name = source[director_index]
  result[directors_name[:name]] = gross_for_director(directors_name)
  
  director_index += 1 
end
return result 
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
x = 0 
box = []
while x < source.length do 
  list_of_Ds = source[x][:name]
  box << list_of_Ds
 #
  x += 1 
end

return box 

end 

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  #binding.pry
  di_index = 0
  javalin = 0 
  total = 0 
  names = list_of_directors(source)
  bunch = directors_totals(source)
    
     
     while javalin < bunch.length do 
       dir_name = names[di_index]
       total += bunch[dir_name]
       
      # binding.pry
      di_index += 1  
     javalin += 1 
   end
     
   
     return total
     
end


