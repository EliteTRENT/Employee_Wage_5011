wage_per_hr = 20
part_time = 4
full_time = 8
rng = Random.new
number = rng.rand(0..2)
if number == 0
  puts "Daily Wage: $0"
elsif number == 1
  puts "Daily Wage: $#{part_time*wage_per_hr}"
else 
  puts "Daily Wage: $#{full_time*wage_per_hr}"
end 

