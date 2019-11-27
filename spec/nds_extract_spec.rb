def list_of_directors(source)
  # Write this implementation
  source.map{ |d| d[:name] }
  names = []
  i = 0

  while i < source.length do
    names << source[i][:name]
    i += 1
  end

  names
end

def total_gross(source)
  # Write this implementation
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  list_of_directors(source).reduce(0){|total, name| total +=  directors_totals(source)[name]}
  dir_to_earnings_hash = directors_totals(source)
  dir_names = list_of_directors(source)
  i = 0

  total = 0

  while i < dir_names.length do
    dir_name = dir_names[i]
    total += dir_to_earnings_hash[dir_name]
    i += 1
  end

  total
end