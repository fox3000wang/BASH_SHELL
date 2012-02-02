begin
  5 / 0
rescue
  puts "Oops!"
else
  puts "Congratulations! No errors."
ensure
  puts "Here we go."
end