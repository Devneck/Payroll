############################################################
#
#  Name:        Sean Glover
#  Assignment:  Payroll
#  Date:        01/14/2013
#  Class:       CIS 282
#  Description: Prompt user for input to calculate payroll information of employee
#
############################################################

# Prompt and accept employee's name
print "Enter Employee's name: "
employee_name = gets.chomp.split(' ').map {|w| w.capitalize}.join(' ')

# Prompt and accept hours worked
print "Enter number of hours worked in a week: "
hours_worked = gets.to_f

# Prompt and accept hourly pay rate
print "Enter hourly pay rate: "
payrate = gets.to_f

# Calculate gross pay
gross_pay = payrate * hours_worked

# Prompt and accept federal withholding rate
print "Enter federal tax withholding rate: "
federal_tax_percentage = gets.to_f

# Calculate federal withholding amount
federal_withholding = gross_pay * federal_tax_percentage

# Prompt and accept state withholding rate
print "Enter state tax withholding rate: "
state_tax_percentage = gets.to_f

# Calculate state withholding amount
state_withholding = gross_pay * state_tax_percentage

# Calculate total deductions amount
total_deductions = federal_withholding + state_withholding

# Print output
puts
puts "Employee Name:  #{employee_name}"
puts "Hours Worked:  #{hours_worked}"
puts "Pay Rate:  #{sprintf("$%.2f", payrate)}"
puts "Gross Pay:  #{sprintf("$%.2f", gross_pay)}"
puts "Deductions:"
puts "  Federal Withholding (#{sprintf("%.1f%", (federal_tax_percentage * 100))}): #{sprintf("$%.2f", federal_withholding)}"
puts "  State Withholding (#{sprintf("%.1f%", (state_tax_percentage * 100))}): #{sprintf("$%.2f", state_withholding)}"
puts "  Total Deduction: #{sprintf("$%.2f", total_deductions)}"
puts "Net Pay:  #{sprintf("$%.2f", gross_pay - total_deductions)}"
