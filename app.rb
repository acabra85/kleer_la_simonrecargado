require 'sinatra'
require './lib/SimonRecargado'

configure do
  enable :sessions
end

get '/' do
	@@simon = SimonRecargado.new
	erb :home
end

get '/jugar/?:num?' do
	@@simon = SimonRecargado.new	
	@secuencia = @@simon.generarLista(params[:num])

	erb :jugar
end

get '/gano' do
	erb :gano
end

get '/perdio' do
	erb :perdio
end

get '/images/?:num?' do
	#TODO validar si es necesario en cada metodo del app instanciar @@simon
	
	erb :jugar
end
