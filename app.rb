require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # get "/goodbye/:name" do 
  #   @name = params[:name]
  #   "Goodbye, #{@name}."
  # end 

  # get "goodbye/multiply/:num1/:num2" do 
  #   @product  = params[:num1].to_i * params[:num2].to_i
  #  "#{@product}"
  # end 


  # Code your final two routes here:

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    # : whatever will be a string
    # so convert number to integer
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @product = (@num1 * @num2)
    "#{@product}"
  end


end