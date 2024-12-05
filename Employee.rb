class Employee
  @@wage_per_hr = 20
  @@part_time = 4
  @@full_time = 8
  def initialize(type)
    @type = type
    @monthly_sal = 0
  end

  def cal_daily_wage()
    if @type == 1
      return "$0"
    elsif @type == 2
      return "$#{4*20}"
    else
      return "$#{8*20}"
    end
  end

  def cal_monthly_wage()
    for i in 1..20
      rng = Random.new
      number = rng.rand(1..3)
      if number == 1
        @monthly_sal += 0
      elsif number == 2
        @monthly_sal += @@part_time*@@wage_per_hr
      else 
        @monthly_sal += @@full_time*@@wage_per_hr
      end
    end
    return "$#{@monthly_sal}"
  end
end

rng = Random.new
number = rng.rand(1..3)
emp = Employee.new(number)
puts "Daily Wage: #{emp.cal_daily_wage}"
puts "Monthly Wage: #{emp.cal_monthly_wage}"