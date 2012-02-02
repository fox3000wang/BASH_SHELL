for i in 1..100
  print "Now at #{i}. Restart? "
  retry if gets =~ /^y/i
end