# Build a program that displays when the user will retire and how many years
# she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

print "What is your current age? "
current_age = gets
print "At what age would you like to retire? "
retirement_age = gets
years_left = retirement_age.to_i - current_age.to_i
current_year = Time.now.year
puts "It's #{current_year}. You will reture in #{current_year + years_left}"
puts "You have only #{years_left} years of work to go!"

