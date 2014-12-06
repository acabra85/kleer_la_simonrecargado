require 'sinatra'
require './lib/SimonRecargado'
set :public_folder, File.dirname(__FILE__) + './public'

configure do
  enable :sessions
end

get '/' do
	@@simon = SimonRecargado.new
	erb :index
end

get '/jugar/?:num?' do
	@@simon = SimonRecargado.new	
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
		@lista = @@simon.lista_respuesta
    @lista_generada = @@simon.lista_generada
		erb :perdio
	end
end

get '/public/?:folder?/?:name?/?:ext?' do
  send_file('./public/' + params[:folder] + '/' + params[:name] + '.' +  params[:ext])
end