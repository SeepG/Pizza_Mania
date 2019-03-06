# Pizza_Mania_app

require 'colorize'
require 'colorized_string'

# line_width = 70 # if we have to move Pizza Mania in center, we could use this.
# puts( "Welcome to Pizza Mania".center(line_width))

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
        "description"=> "Heavenly combination of pineapple, mushrooms, olives, tomato, onion on a crème fraiche base topped with late harvest jalapenos & chilli flakes."

    },
    "2" => {
        "name"=>"Pepperoni Delight",
        "price"=> 18,
        "description"=> "Authentic soft and foldable New York style dough topped with tasty pepperoni and mozzarella."
    }
}
crust_menu = {
  "1" => {
      "name"=>"CheeseStalker",
      "price"=> 5,
      "description"=> "Cheesy wonder with mayo surprise."

  },
  "2" => {
      "name"=>"Thin_is_in",
      "price"=> 5,
      "description"=> "Perfectly foldable delightful thin pizza with a tasty and slightly crispy crustwith th tasty pepperoni and mozzarella."
  }
}

toppings_menu = {
  "1" => {
      "name"=>"Pineapple",
      "price"=> 1
  },
  "2" => {
      "name"=>"Bacon",
      "price"=> 1
  }
}
