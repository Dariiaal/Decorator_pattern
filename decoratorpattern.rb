# Абстрактный компонент
class Beverage
  def description
    "Неизвестный напиток"
  end

  def cost
    0.0
  end
end

# Конкретный компонент - кофе
class Coffee < Beverage
  def description
    "Кофе"
  end

  def cost
    1.5
  end
end

# Декоратор - добавка с молоком
class Milk < Beverage
  def initialize(beverage)
    @beverage = beverage
  end

  def description
    @beverage.description + ", с молоком"
  end

  def cost
    @beverage.cost + 0.5
  end
end

# Декоратор - добавка с сахаром
class Sugar < Beverage
  def initialize(beverage)
    @beverage = beverage
  end

  def description
    @beverage.description + ", с сахаром"
  end

  def cost
    @beverage.cost + 0.2
  end
end

# Создаем кофе с добавками
coffee = Coffee.new
coffee_with_milk = Milk.new(coffee)
coffee_with_milk_and_sugar = Sugar.new(coffee_with_milk)

# Выводим информацию о кофе с добавками
puts "Напиток: #{coffee_with_milk_and_sugar.description}"
puts "Цена: #{coffee_with_milk_and_sugar.cost}"

