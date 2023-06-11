# class ApplicationController < Sinatra::Base
#   set :default_content_type, 'application/json'
  
#   # Add your routes here
#   get "/" do
#     { message: "Good luck with your project!" }.to_json
#   end

# end



class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  

  # GET /restaurants
  get "/restaurants" do
    restaurants = Restaurant.all
    restaurants.to_json
  end

  # GET /restaurants/:id
  get "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

  # POST /restaurants
  post "/restaurants" do
    restaurant = Restaurant.create(name: params[:name], cuisine: params[:cuisine])
    restaurant.to_json
  end

  # PATCH /restaurants/:id
  patch "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.update(name: params[:name], cuisine: params[:cuisine])
    restaurant.to_json
  end


  get "/dishes" do
    dishes = Dish.all
    dishes.to_json
  end

  # DELETE /restaurants/:id
  delete "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    { message: "Restaurant deleted successfully" }.to_json
  end

  post "/orders" do
    order = Order.create(
      customer_name: params[:customer_name],
      dish_name: params[:dish_name],
      quantity: params[:quantity]
    )
    order.to_json
  end
delete "/orders/:id" do
    order = Order.find(params[:id])
    order.destroy
    { message: "order deleted successfully" }.to_json
  end

  put "/orders/:id" do
  order = Order.find(params[:id])
  order.update(
    customer_name: params[:customer_name],
    dish_name: params[:dish_name],
    quantity: params[:quantity]
  )
  order.to_json
end

  # GET /dishes
get "/dishes" do
  dishes = Dish.all
  dishes.to_json
end

# GET /dishes/:id
get "/dishes/:id" do
  dish = Dish.find(params[:id])
  dish.to_json
end

# POST /dishes
post "/dishes" do
  dish = Dish.create(name: params[:name], description: params[:description])
  dish.to_json
end

# PATCH /dishes/:id
patch "/dishes/:id" do
  dish = Dish.find(params[:id])
  dish.update(name: params[:name], description: params[:description])
  dish.to_json
end

# DELETE /dishes/:id
delete "/dishes/:id" do
  dish = Dish.find(params[:id])
  dish.destroy
  { message: "Dish deleted successfully" }.to_json
end




  # Add more routes for other models as needed

  not_found do
    { message: "Route not found" }.to_json
  end

  error do
    { message: "Internal server error" }.to_json
  end
end
