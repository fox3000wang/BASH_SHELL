a = -1

begin
  if a < 0
    raise "a < 0!"
  end
rescue RuntimeError => e
  puts e
else
  puts "Congratulations! No errors."
ensure
  puts "Here we go."
end