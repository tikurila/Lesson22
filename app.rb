#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello!!!!!! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end	


get '/contacts' do
	erb :contacts
end	

get '/visit' do
	erb :visit
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@data_time = params[:data_time]
	@barber = params[:barber]

	erb "Хорошо, #{@username},будем ждать вас #{@data_time} . Если что мы свяжемся с вами по номеру #{@phone} . Ваш парикмахер: #{@barber}"
end	


