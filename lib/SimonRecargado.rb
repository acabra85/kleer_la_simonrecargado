class SimonRecargado
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo"]
	end

	def generarLista(num)
		secuenciaRetorno = ""
		$i = 0
		while $i < num.to_i do
			imagen = @imagenes[rand(4)-1]
		
			if(secuenciaRetorno.length == 0)
				secuenciaRetorno = imagen
			else
				secuenciaRetorno = secuenciaRetorno + "," + imagen
			end
			$i += 1	
		end
		secuenciaRetorno
	end
end
