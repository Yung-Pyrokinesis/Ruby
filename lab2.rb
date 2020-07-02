#!/usr/bin/ruby

    puts ("Enter the price : ")
    price = gets.chomp()
    puts ("Enter the discount : ")
    discount = gets.chomp()
    puts ("Enter the quantity of goods : ")
    goods = gets.chomp()
    price_all = (((100-discount.to_f)*price.to_f)/100)*goods.to_i
    puts ("Price all = " + price_all.round().to_s)
sleep 5
