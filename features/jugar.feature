Feature: "Jugar"

Como Jugador
Quiero ver la secuencia de imagenes
Para intentar recordarla

Scenario: ver la primera imagen
	Given entro a la aplicacion
	And doy click en el boton "jugar"
	Then debo ver la imagen "http://png-4.findicons.com/files/icons/1018/pixelicious/32/star.png"
