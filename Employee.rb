rng = Random.new
number = rng.rand(0..1)
if number == 0
  puts "Employee is absent."
else 
  puts "Employee is present."
end