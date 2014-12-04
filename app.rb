require 'sinatra'
require './lib/SimonRecargado'

configure do
  enable :sessions
end

get '/' do
	@@simon = SimonRecargado.new
	erb :home
end

get '/jugar' do
	erb :jugar
end

get '/gano' do
	erb :gano
end

get '/perdio' do
	erb :perdio
end

get '/images/?:num?' do
	@@simon = SimonRecargado.new
	@@simon.generarLista(params[:num])
end
