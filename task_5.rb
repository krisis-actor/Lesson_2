# Ввод данных
puts "Введите число в формате dd"
day = gets.chomp.to_i
puts "Введите месяц в формате mm"
month = gets.chomp.to_i
puts "Введите год в формате yyyy"
year = gets.chomp.to_i

# Представление календаря в виде хэша
calendar = {1=> 31, 2=> [28, 29], 3=> 31, 4=> 30, 5=> 31,
            6=> 30, 7=> 31, 8=> 31, 9=> 30, 10=> 31,
            11=> 30, 12=> 31}

# Проверка года на вискосность, выбор количества дней в феврале
if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
  calendar[2] = calendar[2][1]
else
  calendar[2] = calendar[2][0]
end

# Подсчет дней в месяцах, не включая текущий
month_days = 0
calendar.each { |key,value|
  if key < month
    month_days += value
  end
 }

# Расчет и вывод результат
order_date = day + month_days
puts order_date
