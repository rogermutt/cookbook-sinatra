require_relative './controller/controller'
Roger = Controller.new('./model/recipes.csv')

get '/' do
  @loaded_recipes = Roger.process
  p "************* > #{@local_recipes}"
  erb :index
end

get '/contact' do
  erb :contact
end

get '/about' do
  erb :about
end

get '/add_recipe' do
  erb :add_recipe
end

get '/registration' do
  @values = params
  erb :registration
end

post '/registration' do


  # csv = CSV.read('./model/recipes.csv')

  # p "ROOOOOOOOGER #{csv}"


  # query = params.map{|key, value| "#{key}=#{value}"}.join("&")

  erb :index
  # redirect "/registration?#{query}"

  redirect :registration
end
