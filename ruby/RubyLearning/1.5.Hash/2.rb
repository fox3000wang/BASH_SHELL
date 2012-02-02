a = {1 => "a", 2 => "b", 3 => "c"}

puts "1: "
a.each {|key, value| puts "#{key} = #{value}"}

puts "2: "
a.each_key {|key| puts "key: #{key}"}

puts "3: "
a.each_value {|value| puts "value: #{value}"}