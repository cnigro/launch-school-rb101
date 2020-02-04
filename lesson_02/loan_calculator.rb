require 'yaml'
MESSAGES = YAML.load_file('loan_calc_msgs.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

prompt(MESSAGES['welcome'])

loop do
  principle = nil
  apr = nil
  duration_num = nil
  duration = nil

  loop do
    prompt(MESSAGES['principle'])
    principle = gets.chomp

    if valid_number?(principle)
      break
    else
      prompt[MESSAGES['valid_number']]
    end
  end
  
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp

    if valid_number?(apr)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['duration'])
    duration = gets.chomp
    duration_num = duration.chop

    # meaningless check at this point
    if valid_number?(duration_num)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  monthly_duration = if duration.include?('y')
                       duration.to_i * 12
                     elsif duration.include?('m')
                       duration.to_i
                     end

  monthly_interest = (apr.to_f/monthly_duration.to_f)/100.0
  monthly_payment = principle.to_f * (monthly_interest/(1 - (1 + monthly_interest)**(-monthly_duration)))

  puts "Your monthly payment should be $#{monthly_payment.round(2)}."
  prompt(MESSAGES['another'])
  break unless gets.downcase.start_with?('y')
end

prompt(MESSAGES['exit'])
