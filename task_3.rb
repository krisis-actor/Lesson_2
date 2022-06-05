# Пустой массив для заполнения
fibonacci = [0, 1]

# Цикл со счетчиком для инициализации элементов массива
i = 1
loop do
    fibonacci[i+1] = fibonacci[i] + fibonacci[i-1]
    # Условия выхода из цикла
    if fibonacci[-1] + fibonacci[i] > 100
      break
    end
    i += 1
end

# Вывод результата
puts "#{fibonacci}"
