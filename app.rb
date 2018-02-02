require "sinatra"

get '/' do
	erb :home
end

post '/names' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  redirect 'hello?first_name=' + first_name + '&last_name=' + last_name + '&street=' + street + '&city=' + city +'&state=' + state +'&zip=' + zip
end  

get '/hello' do
   first_name = params[:first_name]	
   last_name = params[:last_name]
   street = params[:street]
   city = params[:city]
   state = params[:state]
   zip = params[:zip]
   erb :hello, :locals => {:first_name => first_name, :last_name => last_name, :street => street, :city => city, :state => state, :zip => zip}
end   
