require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @puppies = Puppy.all
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(name = params[:name], breed = params[:breed], months_old = params[:age])
    # why can these not be in /get puppy??
    @name = @puppy.name
    @breed = @puppy.breed
    @age = @puppy.months_old
    #
    erb :display_puppy
  end

  get '/puppy' do
    erb :display_puppy
  end

end
