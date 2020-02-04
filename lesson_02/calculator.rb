require 'yaml'
MESSAGES = YAML.load_file('calculator_messags.yml')

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

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end
  operation
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  left = nil
  loop do
    prompt(MESSAGES['left_operand'])
    left = gets.chomp

    if valid_number?(left)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  right = nil
  loop do
    prompt(MESSAGES['right_operand'])
    right = gets.chomp

    if valid_number?(right)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  prompt(MESSAGES['op_prompt'])

  operator = nil
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
           when '1'
             left.to_i + right.to_i
           when '2'
             left.to_i - right.to_i
           when '3'
             left.to_i * right.to_i
           when '4'
             left.to_f / right.to_f
           end

  prompt("The result is #{result}")
  prompt(MESSAGES['another'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt(MESSAGES['exit'])
