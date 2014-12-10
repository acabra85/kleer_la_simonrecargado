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

post '/' do
	@@simon = SimonRecargado.new
	erb :index
end

post '/jugar/?:num?' do
	@@simon = SimonRecargado.new	
	@secuencia = @@simon.generarLista(params[:num])
	@nombre_jugador = params[:playerName]
  if(@nombre_jugador.length > 0)
    @@simon.setPlayerName(@nombre_jugador)
  else
    @nombre_jugador = @@simon.getPlayerName()
  end
	erb :jugar
end

post '/validar/?:num?/?:campoRespuesta?' do
	#@@simon.lista_generada = params[:campoOriginal]
	res = @@simon.validarLista(params[:campoRespuesta])
	@nombre_jugador = params[:playerName]
  if(@@simon.getPlayerName.length == 0)
    @@simon.setPlayerName(@nombre_jugador)
  end
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

get '/favicon.ico' do
  send_file('./public/img/favicon.ico')
end