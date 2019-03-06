require 'pry'

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
      return selectedItem
    elsif(selectedItem != "0")
      puts "Please enter a valid option or enter 0 to cancel"
    end
  end
end
selectedPizza = getUserInput(pizza_menu, "pizza")
selectedCrust = getUserInput(crust_menu, "crust")
selectedToppings = getUserInput(toppings_menu,"toppings")
