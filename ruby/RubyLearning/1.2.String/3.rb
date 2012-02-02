print "1: "
str = <<EOS
  This is a newline: \n.
EOS
puts str

print "2: "
str = <<'EOS'
  This isn't a newline: \n.
EOS
puts str

print "3: "
str = <<-EOS
  This is a newline: \n.
  EOS
puts str