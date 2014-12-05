class SimonRecargado
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo"]
	end

	def generarLista(num)
		
		imagenesRetorno = ""
		secuenciaRetorno = ""
		$i = 0
		while $i < num.to_i do
			if(imagenesRetorno.length == 0)
				imagen = @imagenes[rand(4)-1]
				imagenesRetorno =  imagenesRetorno + "<img class='imagenSeq' src='" + getUrl(imagen) + "' />"
				if(secuenciaRetorno.length == 0)
					secuenciaRetorno = imagen
				else
					secuenciaRetorno = secuenciaRetorno + "," + imagen
				end
			end
			$i += 1	
		end
		imagenesRetorno + "&&" + secuenciaRetorno
	end

	def getUrl(llave)
		img = ""
		if(llave == 'circulo')
			img = "http://www.arquba.com/curso-sketchup-gratis/entidades-de-circulo/index_ren-Circle.jpg"
		elsif (llave == 'cuadrado')
			img = "http://doc.qt.digia.com/4.6/images/used-in-examples/widgets/tooltips/images/square.png"
		elsif (llave == 'triangulo')
			img = "http://img3.wikia.nocookie.net/__cb20121214140518/uncyclopedia/images/8/88/Triangle%28shape%29.jpg"
		else
			img = "http://png-4.findicons.com/files/icons/1018/pixelicious/32/star.png"
		end
		img
	end
end
