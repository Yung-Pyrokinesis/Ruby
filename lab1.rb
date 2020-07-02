#!/usr/bin/ruby

    puts ("Enter name Montn : ")
    name_month = gets.chomp()
    name_month = name_month.downcase()
    if (name_month == "january" or name_month == "februaru" or name_month == "march") then
        puts "1"
    elsif (name_month == "april" or name_month == "may" or name_month == "june")
        puts "2"
    elsif (name_month == "july" or name_month == "august" or name_month == "september")
        puts "3"
    elsif (name_month == "october" or name_month == "november" or name_month == "december")
        puts "4"
    else
        puts "You made a mistake while typing"
              puts name_month
    end
sleep 5
