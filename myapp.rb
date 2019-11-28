require 'sinatra'
require 'sinatra/reloader'

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

get "/these_users" do
    their_dets = [
{name: "Alice",country: "Kenya", age:  20} ,
{ name: "Michael",  age:  23, country: "Tanzania"},
{name: "Jane", age: 43, country: "Ghana"},
{name: "Clare", age: 32, country: "Uganda"},
{ name: "Mary",      age:  23,country:  "Ethiopia"},
{name: "John",age:   4, country: "Egypt"}
]
@x = their_dets.each do |s| 
    puts s[:name]
end

@y = their_dets.each do |c| 
    puts c[:country]
end

@z = their_dets.each do |a| 
    puts a[:age]
end

erb :these_users
end

    
__END__

@@users

<table>

<tr>
<th>name</th>
<th>age</th>
<th>country</th>
</tr>

<tr>
<td><%=@names[0]%></td>
<td><%=@ages[0]%></td>
<td><%=@countries[0]%></td>
</tr>

<tr>
<td><%=@names[1]%></td>
<td><%=@ages[1]%></td>
<td><%=@countries[1]%></td>
</tr>

<tr>
<td><%=@names[2]%></td>
<td><%=@ages[2]%></td>
<td><%=@countries[2]%></td>
</tr>

<tr>
<td><%=@names[3]%></td>
<td><%=@ages[3]%></td>
<td><%=@countries[3]%></td>
</tr>

<tr>
<td><%=@names[4]%></td>
<td><%=@ages[4]%></td>
<td><%=@countries[4]%></td>
</tr>

<tr>
<td><%=@names[5]%></td>
<td><%=@ages[5]%></td>
<td><%=@countries[5]%></td>
</tr>

</table>

@@these_users

<table>
<tr>
<th>Name</th>
<th>Country</th>
<th>Age</th>
</tr>

<tr>
<td><%=@x%></td>
<td><%=@y%></td>
<td><%=@z%></td>
</tr>

</table>