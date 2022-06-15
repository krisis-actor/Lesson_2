# Массив из букв алфавита
alphabet = ('a'..'z').to_a

# Массив из гласных букв
vowels = ['a', 'e', 'i', 'o', 'u', 'y']

# Создание хэша-алфавита путем итерации массива с счетчиком i
alphabet_hash = {}
i = 1
alphabet.each do 
  |x| alphabet_hash[x] = i 
  i += 1 
end

# Создание хэша-алфавита из гласных и вывод хэша
vowels_hash = alphabet_hash.select { |key,value| vowels.include?(key.to_s) }
puts vowels_hash
