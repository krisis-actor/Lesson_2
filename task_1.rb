# Хеш, содержащий месяцы и количество дней в месяце
calendar = { January: 31, February: 28, March: 31, April: 30, May: 31, June: 30,
            July: 31, August: 31, September: 30, October: 31, November: 30,
            December: 31}

# Хэш с месяцами, у которых количество дней ровно 30
selected_months = calendar.select { |key,value| value == 30 }

# Цикл вывода месяцев
selected_months.each_key { |key| puts key.to_s }
