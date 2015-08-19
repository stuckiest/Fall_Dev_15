
while true
  def user_input
    gets.strip
  end

  def calculation(first_number, second_number, operand)
    case operand
      when '+'
        puts first_number + second_number
      when '-'
        puts first_number - second_number
      when '*'
        puts first_number * second_number
      when '^'
        puts first_number ** second_number   
      when '/'
        if second_number == 0
          puts "undefined"
        else 
          puts first_number / second_number 
        end                 
    end
  end

  operators = ['+', '-', '*', '/', '^']

  puts "Enter your first number"
  first_number = user_input.to_f

  print "Enter your operator: "
  puts operators.join(" ")
  operand = user_input

  puts "Enter your second number"
  second_number = user_input.to_f

  print "Your answer is "
  calculation(first_number, second_number, operand)

  puts "Do you want to do another calculation? (y/n)"
 
  if user_input == "y"
    puts "Do you want to use your answer in a new calcualtion? (y/n)"
      user_input == "y" ? skip = true : skip = false
  else
    exit
  end    
end  