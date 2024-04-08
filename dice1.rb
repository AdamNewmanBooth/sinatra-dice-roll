# /dice.rb

require "sinatra"
gem "better_errors"
gem "binding_of_caller"


pp "hey!"

get("/") do
  "Dice Roll"
  url1 = "https://supreme-invention-v65p99q6ww7hpvg5-4567.app.github.dev/dice/2/6"
  text1 = "2 - 6 sided dice"
  
  hyperlink1 = "<a href=\"#{url1}\">#{text1}</a>"
  
  puts hyperlink1


  url2 = "https://supreme-invention-v65p99q6ww7hpvg5-4567.app.github.dev/dice/2/10"
  text2 = "2 - 10 sided dice"
  
  hyperlink2 = "<a href=\"#{url2}\">#{text2}</a>"
  
  puts hyperlink2


end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/girafe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end
