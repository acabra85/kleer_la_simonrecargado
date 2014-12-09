class SimonRecargado


	attr_accessor :lista_generada
	attr_accessor :lista_respuesta
	attr_accessor :player_name
	
	def initialize
		@imagenes = ["img_00","img_01","img_02", "img_03", "img_04", "img_05"]
		@lista_generada = ""
		@lista_respuesta = ""
		@player_name = ""
	end

	def generarLista(num)
		secuenciaRetorno = @lista_generada    
    $cant = @lista_generada.split(',').length
		$i = $cant
		while $i < num.to_i do
			imagen = @imagenes[rand(@imagenes.length)-1]
		
			if(secuenciaRetorno.length == 0)
				secuenciaRetorno = imagen
			else
				secuenciaRetorno = secuenciaRetorno + "," + imagen
			end
			$i += 1	
		end
		@lista_generada = secuenciaRetorno
		secuenciaRetorno
		
	end

	def validarLista(listaRespuesta)
		@lista_respuesta = listaRespuesta
		@lista_generada == @lista_respuesta
	end
  
  def getPlayerName()
    @player_name
  end
  
  def setPlayerName(playerName)
    @player_name = playerName
  end
end
