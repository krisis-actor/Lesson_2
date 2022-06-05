# Создание хэша корзины
basket = {}

# Цикл ввода данных
loop do
  puts "Введите название товара"
  item = gets.chomp.capitalize
  # Условие выхода и вывода результатов
  if item == 'Стоп'
    break
  # Если товар уже был в списке
  elsif basket.has_key?(item.to_sym)
    puts "Введите количество товара #{item}"
    quantity = gets.chomp.to_f
    basket[item.to_sym][:quantity] += quantity
  # Добавление всей информации о товаре
  else
    puts "Укажите цену за единицу товара #{item}"
    price_per_unit = gets.chomp.to_f
    puts "Введите количество товара #{item}"
    quantity = gets.chomp.to_f
    # Создание хэша, представлящий корзину
    basket[item.to_sym] = {price_per_unit: price_per_unit, quantity: quantity}
  end
end

# Хэш в виде корзины
puts basket

# Сумма за товар отдельно
basket.each_key { |key| puts "#{key} - #{basket[key][:quantity] * basket[key][:price_per_unit]} руб." }

# Суммма общая
total = 0
basket.each { |key,value| total += basket[key][:quantity] * basket[key][:price_per_unit] }
puts "Всего: #{total}"
