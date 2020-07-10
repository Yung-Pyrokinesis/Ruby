# Програма для використання коду Цезаря
# Цей вид кодування є дуже простим. Зображемо
# англійський алфавіт у кільці, де перед буквою a
# стоїть буква z. Суть полягає в тому,
# щоб переставити всі букви в слові на n вліво,
# або в право в кільці алфавіту. 

# код англійської букви a маленької = 97
# код англійської букви z маленької = 122
# код букви у кодувальній таблиці можна отримати
# за допомогою функції String.ord()
# Зворотня дія - функція String.chr()

# Ви маєте застосувати функції String.org та Integer.chr
# для, відповідно, отримання коду символу та отримання символу
# згідно його коду у таблиці ASCII 
# ( http://uk.wikipedia.org/wiki/ASCII ).
# І також, зреалізувати коду з назвою get_pair.
# 

class Caesar

  # функція normalize - перетворюватиме символи
  # в код та нормалізуватиме їх діапазон від 1 до 26
  # 
  # normilize a  => 1
  # normilize z  => 26
  
  def cipher( text, shift )

    result = ""

    first = 'A'.ord
    offset = ('z'.ord - 'A'.ord) + 1

    for c in text.split("")

        newChar = ' '

        if c != ' '

              index  = c.ord - first

            indexSh = index + shift
            while indexSh < 0 do indexSh += offset end

            newIndex = indexSh % offset

            newChar = (first + newIndex).chr
        end

        result += newChar
    end

    return result
end

def decipher( cipher, shift )

    cipher( cipher, shift * -1 )
end
puts "Enter sentence"
text = gets.chomp 
text = text.to_s
puts "Enter shift"
sh = gets.chomp 
sh = sh.to_i
puts cipherText = cipher( text, sh )
puts "Ciphered text: #{cipherText}"
puts "Deciphered text: #{decipher( cipherText, sh )}"
end 