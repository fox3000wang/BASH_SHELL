puts /^find_(all_by|by)_([_a-zA-Z]\w*)$/.match("find_by_name_and_age").captures.inspect

puts /^find_(all_by|by)_([_a-zA-Z]\w*)$/.match("find_by_name_and_age").captures.last
