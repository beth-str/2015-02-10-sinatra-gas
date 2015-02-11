require "sinatra"
require 'activesupport'

get "/" do
  erb :homepage, :layout => :boilerplate
end

get "/calc" do
  erb :calculator, :layout => :boilerplate
end

get "/result" do
  @result = (params[:amount].to_f.round(2) / params[:gallons].to_f.round(2))
  
  erb :result, :layout => :boilerplate
end

#
#
# get "/" do
#   # Find the ERB file in views/welcome.erb and return it.
#   erb :welcome, :layout => :boilerplate
# end
#
# get "/greet" do
#   # Example of params:
#   # {"fav_color" => "Purple"}
#
#   logger.info params
#
#   "Hello. Your favorite color is #{params["color"]}."
# end