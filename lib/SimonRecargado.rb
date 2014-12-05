class SimonRecargado
	def initialize
		@imagenes = ["estrella","triangulo","cuadrado", "circulo"]
	end

	def generarLista(num)
		imagenesRetorno = ""
		secuenciaRetorno = ""
		$i = 0
		while $i < num.to_i do
				imagen = @imagenes[rand(4)-1]
				imagenesRetorno =  imagenesRetorno + "<img class='imagenSeq' src='" + getUrl(imagen) + "' />"
				if(secuenciaRetorno.length == 0)
					secuenciaRetorno = imagen
				else
					secuenciaRetorno = secuenciaRetorno + "," + imagen
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
			img = "http://img2.wikia.nocookie.net/__cb20130620210048/inciclopedia/images/1/18/Estrella_amarilla.png"
		end
		img
	end
end
