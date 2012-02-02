(1..10).each {|x| puts x}

[1, 2, 3, 4, 5, 6].map {|x| x * 2}

File.open("somefile","w") do |file|
  file.puts "Line 1"
  file.puts "Line 2"
  file.puts "Third and final line"
end