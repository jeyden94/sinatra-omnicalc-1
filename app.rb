require "sinatra"
require "sinatra/reloader"

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = Math.sqrt(@the_num)

  erb(:square_root_results)
end



get("/payment/new") do
  erb(:new_payment_calc)
end

get("/payment/results") do
  
  @the_APR = params.fetch("users_apr").to_f
  @the_rate = params.fetch("users_apr").to_f / 100 / 12
  @the_num_of_years = params.fetch("users_num_of_years").to_i  
  @the_n = params.fetch("users_num_of_years").to_i * 12 
  @the_principal = params.fetch("users_principal").to_f

  @the_numerator = (@the_rate) * (@the_principal)
  @the_denominator = 1 - ((1 + (@the_rate)) ** (@the_n * -1))

  @the_result = (@the_numerator / @the_denominator).round(2)


  erb(:payment_results)
end



get("/random/new") do
  erb(:hello)
end

get("/random/results") do
  erb(:bye)
end






get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
