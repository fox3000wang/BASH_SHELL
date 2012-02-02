a = 3

str = case a
  when -10..-1 then "-10 < a < 0"
  when 0 then "a == 0"
  when 1..10 then "1 < a < 10"
  else "unknown"
end

puts str