# Сформувати масив всіх ключів вхідного хешу, які підпадають під визначений критерій

# Ви маєте записати у змінну results множину ключів хешу input_hash,
# довжина яких строго більше 3 символів

class Calculator
  def hash_key_criteria input_hash

    # вхідний хеш записуватиметься у змінну temp
    temp = input_hash

    # вибираємо всі ключі з хешу
    temp = temp.keys

    # формуємо множину ключів, довжина яких більше 3 символів
    result = temp.select{|elem| elem.to_s.length > 3}
    # тут його слід вивести
    puts result

  end
  input_hash = {"One"=>1, "Two"=>2, "Three"=>3, "Four"=>4, "Five"=>5, "Six"=>6, "Seven"=>7}
end