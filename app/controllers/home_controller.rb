class HomeController < ApplicationController
  def index
    food = ['apple', 'ban', 'cat', 'dog', 'ear']
    calories = [1000, 5000, 30000, 5, 100]
    @index = (0..4).to_a.sample(3)
    @breakfast = []
    @break_cal = []
    @sum_break_cal = 0
    
    @index2 = (0..4).to_a.sample(3)
    @lunch = []
    @lunch_cal = []
    @sum_lunch_cal = 0
    
    @index3 = (0..4).to_a.sample(3)
    @dinner = []
    @dinner_cal = []
    @sum_dinner_cal = 0
    
    @sum_calories = 0
    
    # breakfast
  for i in 0..2
    @breakfast.push(food[@index[i]]) 
    @break_cal.push(calories[@index[i]])
    @food = Food.new
    @food.food = food[@index[i]]
    @food.calories = calories[@index[i]]
    @food.save
    @sum_break_cal += calories[@index[i]]
  end
  
  # lunch
  for i in 0..2
    @lunch.push(food[@index2[i]])
    @lunch_cal.push(calories[@index2[i]])
    @food = Food.new
    @food.food = food[@index2[i]]
    @food.calories = calories[@index2[i]]
    @food.save
    @sum_lunch_cal += calories[@index2[i]]
  end
  
  # dinner
  for i in 0..2
    @dinner.push(food[@index3[i]])
    @dinner_cal.push(calories[@index3[i]])
    @food = Food.new
    @food.food = food[@index3[i]]
    @food.calories = calories[@index3[i]]
    @food.save
    @sum_dinner_cal += calories[@index3[i]]
  end
  
  #total calories
  @sum_calories = @sum_break_cal + @sum_lunch_cal + @sum_dinner_cal
  end
  def memory
    @foods = Food.all
    
  end
end
