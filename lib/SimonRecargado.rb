class SimonRecargado


	#attr_accessor :lista_generada
	
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo", "kleer"]
		@lista_generada = ""
	end

	def generarLista(num)
		secuenciaRetorno = ""
		$i = 0
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
		@lista_generada == listaRespuesta
	end
end
