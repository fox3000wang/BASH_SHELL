def takeBlock(p)
  if block_given?
    yield(p)
  else
    puts p
  end
end

takeBlock "a"
takeBlock("a") {|x| puts "++++++++++" + x}