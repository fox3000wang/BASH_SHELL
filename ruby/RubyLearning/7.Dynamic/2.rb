class A
  ['a', 'b', 'c'].each do |method_name|
    define_method(method_name) {puts "Method #{method_name} invoked!"}
  end
end

[:a, :b, :c].each do |m|
  A.new.send(m)
end