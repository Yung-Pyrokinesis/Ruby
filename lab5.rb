#!/usr/bin/ruby

puts "Enter num1 : "
num1 = gets.chomp().to_i
puts "Enter num2 : "
num2 = gets.chomp().to_i
puts "Enter num3 : "
num3 = gets.chomp().to_i

if ((num1 > 0 and num1 < 11) and (num2 > 0 and num2 < 11) and (num3 > 0 and num3 < 11))
    if (num1 == 1 and num2 == 1 and num3 == 1)
          puts "Sum = 3"
    elsif (num1 == 1)
      sum =  (num1+num2)*num3
      puts "Sum = " + sum.to_s
    elsif (num3 == 1)
      sum =  (num3+num2)*num1
      puts "Sum = " + sum.to_s
    elsif (num2 == 1)
      if (num1 > num3)
          sum =  (num3+num2)*num1
      else
          sum =  (num1+num2)*num3
      end
      puts "Sum = " + sum.to_s
    else
      sum = num3*num2*num1
      puts "Sum = " + sum.to_s
    end

end
