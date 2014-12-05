Feature: "Jugar"

Como Jugador
Quiero ver la secuencia de imagenes
Para intentar recordarla

Scenario: ver la primera imagen
	Given entro a la aplicacion
	And doy click en el boton "jugar"
	Then debo ver una imagen
