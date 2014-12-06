class SimonRecargado


	attr_accessor :lista_generada
	attr_accessor :lista_respuesta
	
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo", "kleer", "estrella2"]
		@lista_generada = ""
		@lista_respuesta = ""
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
		@lista_respuesta = listaRespuesta
		@lista_generada == @lista_respuesta
	end
end
