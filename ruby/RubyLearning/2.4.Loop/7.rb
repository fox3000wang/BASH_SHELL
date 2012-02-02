i = 0
j = 0
loop do
  i += 1
  puts i
  next if not i > 3
  puts "i > 3"
  redo if i >= 6 and i <= 9
  puts "i < 6 or i > 9"
  break if i == 10 
end