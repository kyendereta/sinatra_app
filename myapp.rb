require 'sinatra'
require 'sinatra/reloader'

#Example
get '/' do
    'Hello World!'
end
get '/signup' do
        'I am trying to sign in'
end
get '/signup/not_allowed' do
        "Hello World!"
end
get '/cars:name' do
    "This car is a #{params["name"]}"
end
#Creating my app
get '/' do
    'my name'
end
get '/myname' do
    'yourname'
end
get '/myname/yourname:name' do
     "#{params["name"].upcase} is nice (smiley)"
end     
get '/currenttime' do
    "It is #{Time.now}"
end

#Embedding with erb
get '/age_bracket:age' do

    age_sum =  "Hello you are :<%if params[:age].to_i >= 18; %>
    <p> <%='Over age'%><p>
    <%else%>
    <p> <%='Underage'%> <p> 
    <%end%>"
    erb age_sum
  end 

=begin 
Create a route which will url localhost:9292/sum/2/2 and the sum of give interger in this case 4. 
Your display should like so:
"The sum of numbers 2 and 2 is 4". Display your results in a template(erb)
=end

get '/sum/:number1/:number2' do 
    sum = "Your answer is <%=#{params[:number1]} + #{params[:number2]}%>"
    erb sum
  end
