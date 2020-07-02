#!/usr/bin/ruby

def funct(a,k)
  if (a != "0" and k != "0" and k != "1")
      a1 = a.to_i*k.to_i
      k1 = k.to_i - 1
      puts a1.to_s + "x ^ " + k1.to_s
  end
end
a = gets.chomp()
k = gets.chomp()

funct(a,k)
