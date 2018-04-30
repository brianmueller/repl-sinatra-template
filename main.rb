require 'sinatra'
require_relative 'model.rb'

set :protection, :except => :frame_options
set :bind, '0.0.0.0'

get '/' do
  erb :index, :locals => { host: request.host }
end

post '/result' do
  # puts params
  user_input = params[:user_input]
  @user_input_caps = shout(user_input)
  erb :result
end