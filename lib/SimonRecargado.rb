class SimonRecargado
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo"]
	end

	def generarLista(num)
		
		imagenesRetorno = ""
		$i = 0
		while $i < num.to_i do
			if(imagenesRetorno.length == 0)
				imagenesRetorno =  @imagenes[rand(4)-1]
			else
				imagenesRetorno = imagenesRetorno + "," + @imagenes[rand(4)-1]
			end
			$i += 1	
		end
		imagenesRetorno
	end
end
