require_relative 'config/environment'
require_relative 'models/puppy'
set :views, '/views'
set :method_override, true
class App < Sinatra::Base
    get '/' do 
        erb :index
    end
    get '/puppy' do 
        erb :index
    end

    get '/puppy/new' do 
        erb :create_puppy
    end 

    post '/puppy' do
        @puppy = Puppy.new(name: params[:name],breed: params[:breed], age: params[:age])
        erb :display_puppy
    end

    get '/puppy/display_puppy' do 
        @puppy = Puppy.find(params[:id])
        erb :display_puppy
    end
end
