# Програма для перевірки, чи дане число є простим.
# використовується решето Ерастрофена з оптимізацією
# Оптимізація полягає в початку висіювання наступного
# не викресленого числа з його квадрату.

# Ви маєте зреалізувати логіку для формування масиву-шерета,
# його просіювання та виведення інформації, чи вказане число є простим.
class Calculator


def input_sieve(n)
  sieve = (0..n).to_a
  
  sieve[0] = sieve[1] = nil

  count = 0
  sieve.each do |i|
    
    next unless i

    
    break if i*i > n
    count += 1
   
    (i*i).step(n,i) { |j| sieve[j] = nil }
  end

  

  sieve.compact
end

def sieve_prime?(n)
  input_sieve(n).include?(n)
end
puts "Enter n"
n = gets.chomp
n = n.to_i 
puts sieve_prime?(n)
end 