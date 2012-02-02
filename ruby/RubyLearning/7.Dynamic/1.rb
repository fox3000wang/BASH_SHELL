class A
end

A.class_eval <<-EOF
  def say
    puts "Hello World!"
  end
EOF

A.new.say