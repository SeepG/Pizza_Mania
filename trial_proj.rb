
class Pizza
  attr_accessor(:pizza_number, :pizza_name, :pizza_crust, :pizza_price, :pizza_toppings)
    def initialize(pizza_number, pizza_name, pizza_crust, pizza_price, pizza_toppings)
      @pizza_number = pizza_number
      @pizza_name = pizza_name
      @pizza_crust = []
      @pizza_price = pizza_price
      @pizza_toppings = []
    end
    def add_pizza_topping(topping)
      @toppings << topping
    end
    def add_pizza_crust(pizza_crust)
      @crusts << crust
    end
  end
  vegesupreme = Pizza.new("1","vegesupreme","cheesy_crust",25,['mushroom','olives','pineapple'])
  margharita = Pizza.new("1","vegesupreme","cheesy_crust",15,['mushroom','olives','pineapple'])
class Order
    attr_accessor(:final_order)
    def initialize()
      @final_order = final_order
    end
  end
  p vegesupreme.pizza_name
  a = vegesupreme.pizza_price
    b = margharita.pizza_price
    c = a + b
    p c
---------------------------------------------------------------------------------------------------------------------------------
class Object
  def instance_variables_hash
    Hash[instance_variables.map {|name| [name, instance_variable_get(name)]}]
  end
end
instance_variables_hash =
{:@name=>"Dan", :@gender=>"M",}
p Object.instance_variables_hash
  




