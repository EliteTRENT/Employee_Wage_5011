wage_per_hr = 20
part_time = 4
full_time = 8
rng = Random.new
monthly_wage = 0
for i in 1..20
  number = rng.rand(0..2)
  if number == 0
    monthly_wage += 0
  elsif number == 1
    monthly_wage += (part_time*wage_per_hr)
  else
    monthly_wage += (full_time*wage_per_hr)
  end
end
puts "Monthly Wage: $#{monthly_wage}"
