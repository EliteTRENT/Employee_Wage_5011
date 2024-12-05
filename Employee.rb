wage_per_hr = 20
part_time = 4
full_time = 8
rng = Random.new
monthly_wage = 0
total_hours = 100
for i in 1..20
  number = rng.rand(0..2)
  if total_hours <= 0
    break
  elsif number == 0
    monthly_wage += 0
  elsif number == 1
    monthly_wage += (part_time*wage_per_hr)
    total_hours -= part_time
  else
    monthly_wage += (full_time*wage_per_hr)
    total_hours -= full_time
  end
end
puts "Monthly Wage: $#{monthly_wage}"
