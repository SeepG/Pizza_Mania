require 'colorize'
require 'colorized_string'
require 'pry'

puts ColorizedString[" Welcome to Pizza Mania!!"].colorize(:color => :white, :background => :red)
puts # used empty 'puts' to create space between lines.
puts "Address: 9-21 Hanover St, Oakleigh VIC 3166, Phone No:(03) 8564 8320". colorize(:red)
puts
puts "Our pizzas are made with fresh dough, come in generous (read large) size and have dollops of cheese". colorize(:red)
puts

pizza_menu = {
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
def getUserInput(menu,item) 
  selectedItem = "" 
  puts ("What #{item} would you like today?")
  puts ("Select an option from below (0 to cancel)")
  while selectedItem != "0"
    menu.each do |option_number, type|
      puts "#{option_number}. #{type['name']} $#{type['price']}"
    end
    selectedItem = gets.chomp()
    if(selectedItem == "1" || selectedItem == "2")
      puts "Your selected #{item} is #{menu[selectedItem]["name"]}"
      price_of_the_selected_item = menu[selectedItem]["price"]
      price_of_the_selected_item = price_of_the_selected_item.to_i
    return price_of_the_selected_item
    elsif(selectedItem != "0")
      puts "Please enter a valid option or enter 0 to cancel"
    end
  end
end
class Order
    attr_accessor (:orderItems) 
    def get_totalPrice()
      total = 0;
        final_total = orderItems[0]+orderItems[1]+orderItems[2]
    end
  end
selectedPizza = getUserInput(pizza_menu, "pizza")
selectedCrust = getUserInput(crust_menu, "crust")
selectedToppings = getUserInput(toppings_menu, "topping")
order_object = Order.new()
order_object.orderItems = []
order_object.orderItems.push(selectedPizza) 
order_object.orderItems.push(selectedCrust) 
order_object.orderItems.push(selectedToppings) 
puts " Total price : #{order_object.get_totalPrice}"