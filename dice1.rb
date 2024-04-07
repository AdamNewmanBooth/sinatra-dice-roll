# /dice.rb

require "sinatra"
gem "better_errors"
gem "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

pp "hey!"

get("/") do
  "Dice Roll"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/girafe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

