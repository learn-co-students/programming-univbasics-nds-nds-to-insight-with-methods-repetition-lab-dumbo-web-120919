$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


# [{:name=>"Larry"}, {:name=>"Curly"}, {:name=>"Moe"}, {:name=>"Iggy"}]

def list_of_directors(source)
 counter = 0 
 director_name = source[counter][:name]
 resultArray = []

  while counter < source.count do 
   director_name = source[counter][:name]
   counter += 1 
   resultArray << director_name 
  end 

 resultArray 
end 

def total_gross(source)

  total = 0 
  directors_totals(source).each {|key,value| total += value}
  total 

end 

def gross_for_director(source)
  movie_index = 0 
  counter = 0 
  total_gross = 0 
  
    while counter < source[:movies].length
    total_gross += source[:movies][movie_index][:worldwide_gross]
    counter += 1 
    movie_index += 1 
    end 

  total_gross
end 
  
def list_of_directors(source)
  counter = 0 
  director_name = source[counter][:name]
  resultArr = []

    while counter < source.count do 
     director_name = source[counter][:name]
     counter += 1 
     resultArr << director_name 
    end 

  resultArr  
end

def directors_totals(source)
  director_counter = 0 
  result = {
  } 
 
  while director_counter < source.length do 
   director_name = source[director_counter][:name] 
   movie_counter = 0
   result[director_name] = 0 
  
    while movie_counter < source[director_counter][:movies].count do 
     result[director_name] += source[director_counter][:movies][movie_counter][:worldwide_gross]
     movie_counter += 1 
    end 
  
    director_counter += 1 
  end 
  
  result
end


