class Employee
  @@wage_per_hr = 20
  @@part_time = 4
  @@full_time = 8
  @@total_working_days = 20
  @@max_working_hours = 100

  def initialize
    @monthly_sal = 0
    @total_hours = 0
  end

  def status
    rng = Random.new
    number = rng.rand(0..1)
    return number == 0 ? "Employee is absent." : "Employee is present."
  end

  def cal_daily_wage
    rng = Random.new
    number = rng.rand(0..2)
    case number
    when 0
      "Daily Wage: $0"
    when 1
      "Daily Wage: $#{@@part_time * @@wage_per_hr}"
    when 2
      "Daily Wage: $#{@@full_time * @@wage_per_hr}"
    end
  end

  def cal_monthly_wage
    rng = Random.new
    @monthly_sal = 0
    @total_hours = 0

    for i in 1..@@total_working_days
      break if @total_hours >= @@max_working_hours

      number = rng.rand(0..2)
      case number
      when 0
        next
      when 1
        hours = @@part_time
      when 2
        hours = @@full_time
      end

      if @total_hours + hours > @@max_working_hours
        hours = @@max_working_hours - @total_hours
      end

      @monthly_sal += hours * @@wage_per_hr
      @total_hours += hours
    end

    "Monthly Wage: $#{@monthly_sal} (Total Hours Worked: #{@total_hours})"
  end
end

rng = Random.new
emp = Employee.new

puts emp.status
puts emp.cal_daily_wage
puts emp.cal_monthly_wage
