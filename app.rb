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
	#@@simon = SimonRecargado.new	
	@secuencia = @@simon.generarLista(params[:num])

	erb :jugar
end

get '/perdio' do
	erb :perdio
end

get '/validar/?:num?/?:campoRespuesta?' do
	#@@simon.lista_generada = params[:campoOriginal]
	res = @@simon.validarLista(params[:campoRespuesta])
	if(res)
		@secuencia = @@simon.generarLista(params[:num])
		erb :jugar
	else
		erb :perdio
	end
end
