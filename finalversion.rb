require 'colorize' #To introduce color
require 'colorized_string'#To introduce text color
require 'pry'

puts ColorizedString[" Welcome to Pizza Mania!!"].colorize(:color => :white, :background => :red)
puts # used empty 'puts' to create space between lines.
puts "Address: 9-21 Hanover St, Oakleigh VIC 3166, Phone No:(03) 8564 8320". colorize(:red)
puts
puts "Our pizzas are made with fresh dough, come in generous (read large) size and have dollops of cheese". colorize(:red)
puts

pizza_menu = { # Nested hash for pizza, crust and toppings
    "1" => {
        "name"=>"Veggie Supreme",
        "price"=> 10,
        "description"=> "Heavenly combination of pineapple, mushrooms, olives, tomato, onion on a crème fraiche base topped with late harvest jalapenos & chilli flakes."},
    "2" => {
        "name"=>"Pepperoni Delight",
        "price"=> 18,
        "description"=> "Authentic soft and foldable New York style dough topped with tasty pepperoni and mozzarella."}
}
crust_menu = {
  "1" => {
      "name"=>"CheeseStalker",
      "price"=> 5,
      "description"=> "Cheesy wonder with mayo surprise."},
  "2" => {
      "name"=>"Thin_is_in",
      "price"=> 5,
      "description"=> "Perfectly foldable delightful thin pizza with a tasty and slightly crispy crustwith th tasty pepperoni and mozzarella."}
}
toppings_menu = {
  "1" => {
      "name"=>"Pineapple",
      "price"=> 1
  },
  "2" => {
      "name"=>"Bacon",
      "price"=> 3}
}
def getUserInput(menu,item) # To access the values of pizza, crust and toppings we use methods
  selectedItem = "" # initialising selectedItem to empty string
  puts ("What #{item} would you like today?") #item corresponds to the value of pizza or crust or toppings
  puts ("Select an option from below (0 to cancel)")
  while selectedItem != "0" # As long as selected Item is not equal to 0, the loop will execute
    menu.each do |option_number, type|
      puts "#{option_number}. #{type['name']} $#{type['price']}" 
    end
    selectedItem = gets.chomp()# gets the input from the user
    if(selectedItem == "1" || selectedItem == "2")#compares if the input is 1 or 2
      puts "Your selected #{item} is #{menu[selectedItem]["name"]}" 
      price_of_the_selected_item = menu[selectedItem]["price"] # Assigns the value of price of each item to the variable price_of_the_selected_item
      price_of_the_selected_item = price_of_the_selected_item.to_i #converts the price to integer
    return price_of_the_selected_item # The price of each item is saved in the price_of_the_selected_item
    elsif(selectedItem != "0") #if the input is neither 1,2 nor 0, then this condition is executed.
      puts "Please enter a valid option or enter 0 to cancel"
    end
  end
end
class Order # To calculate the total price of all the order placed by the customer
    attr_accessor (:orderItems) # here no object is initialised since the price are calculated and pushed in to order items.
    def get_totalPrice() #get_totalPrice method is used to calculate the total price.
      final_total = 0; # initialising final_total variable to 0
        final_total = orderItems[0]+orderItems[1]+orderItems[2]# since all the prices are pushed in to an array, each index of the array is added to the next one, to display the total price.
    end
  end
selectedPizza = getUserInput(pizza_menu, "pizza") # Calling the method for pizza 
selectedCrust = getUserInput(crust_menu, "crust") # Calling the method for crust
selectedToppings = getUserInput(toppings_menu, "topping")# Calling the method for topping
order_object = Order.new() 
order_object.orderItems = [] #Creating an empty array for order_object.orderItems
order_object.orderItems.push(selectedPizza) #The price of pizza is pushed in to the empty array
order_object.orderItems.push(selectedCrust) #The price of crust is pushed in to the array that has the value of pizza
order_object.orderItems.push(selectedToppings) #The price of the toppings is pushed in to the array that already has the price of Pizza and crust in an array
puts " Total price : #{order_object.get_totalPrice}" # The class is called which calculates the total price.
