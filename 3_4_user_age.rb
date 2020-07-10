# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

#class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"

      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day
    	# Алгоритм

      month = Array[31,28,31,30,31,30,31,31,30,31,30,31]
      if (dob_day.to_i > current_day.to_i)
        current_day = current_day.to_i + month[dob_month.to_i - 1].to_i
        current_month = current_month.to_i - 1
      end
      if (dob_month.to_i > current_month.to_i)
        current_year = current_year.to_i - 1
        current_month = current_month.to_i + 12
      end
      #calculated_day.to_i = current_day.to_i - dob_day.to_i
      #calculated_month.to_i = current_month.to_i - dob_month.to_i
      #calculated_year.to_i = current_year.to_i - dob_year.to_i
    if (current_year.to_i - dob_year.to_i) > 0
      puts ("Present " + (current_day.to_i - dob_day.to_i).to_s + " day " + (current_month.to_i - dob_month.to_i).to_s + " month " + (current_year.to_i - dob_year.to_i).to_s + " year ")
    else
        puts "-1"
    end
      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.

  end
#end
console_calculator
