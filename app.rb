require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
  @user_name = params[:name]
  @reversable = @user_name.to_s 
  @reversable.reverse!
    @reversable
  end

    get '/square/:number' do
  @number = params[:number]
  @squarable = @number.to_i

  status 200
  (@squarable**2).to_s

  end

get '/say/:number/:phrase' do

  @number = params[:number]
  @phrase = params[:phrase]
  @num = @number.to_i
  @say = @phrase.to_s
  #binding.pry
  @string = ""
  @num.times do |x|
      @string += "#{@say}\n"
    end 
  status 200

  @string 
  end 
#  binding.pry
get '/say/:word1/:word2/:word3/:word4/:word5' do

  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  #binding.pry
  status 200

  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end 

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1]
   @number2 = params[:number2]
   @num1 = @number1.to_f
   @num2 = @number2.to_f
   @op = @operation.to_s
   
   @final_num = 0
   case @op 
   when "add"
      @final_num = @num1 + @num2 
    when "subtract"
      @final_num = @num1 - @num2
    when "multiply"
      @final_num = @num1 * @num2 
    when "divide"
      @final_num = @num1 / @num2 
    else 
      "what?"
    end 
  status 200
  "#{@final_num}"

  end 

end