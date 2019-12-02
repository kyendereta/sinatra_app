require 'sinatra'
require 'sinatra/reloader'

get '/households' do
"Chair"
"Fridge"
"Peanut Butter"
end

get '/sum' do
    erb:sum 
end
post '/sum' do
    @first_number =params[:first_number].strip
    @second_number =params[:second_number].strip 
    @sum = @first_number.to_f + @second_number.to_f 
    File.open("results.txt", "a+") do |file|
      file.puts(@sum) 
      erb:calculation_results
    end
end

get'/all_results' do
    erb:all_results
end

post '/all_results' do
    def all_results
    return [] unless File.exist?("results.txt")
    File.read("results.txt").split("\n")
    end
    @all_results= all_results
    erb:all_results
  end


get "/all_users" do
    details = {
     "name" => ["Alice", "Michael", "Jane", "Clare", "Mary", "John"],
     "age" => [20, 23, 43, 32, 23, 44],
     "country" => ["Kenya", "Tanzania", "Ghana", "Uganda", "Ethiopia", "Egypt"]
}

@names = details["name"]
@ages = details["age"]
@countries = details["country"]
    erb :users
 end
get '/signup:age' do
    age = params["age"]
    @age = age.to_i
    erb:signup
end
__END__

