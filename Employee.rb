wage_per_hr = 20
part_time = 4
full_time = 8
rng = Random.new
number = rng.rand(0..2)
type = ""
case number
when 0
  type = "No Time"
when 1
  type = "Part Time"
when 2
  type = "Full Time"
else
  0
end

if type == "No Time"
  puts "Daily Wage: $0"
elsif type == "Part Time"
  puts "Daily Wage: $#{part_time*wage_per_hr}"
else 
  puts "Daily Wage: $#{full_time*wage_per_hr}"
end 
