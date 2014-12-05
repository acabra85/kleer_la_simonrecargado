Feature: "Ingresar Juego"

Como Jugador
Quiero un boton
Para ingresar al juego

Scenario: Bienvenido
	Given entro a la aplicacion
	Then debo ver "Bienvenido!<br/> Soy Simón Recargado!!"

Scenario: Boton ingreso
	Given entro a la aplicacion	
	Then debo ver "Jugar"

Scenario: ingresar al juego
	Given entro a la aplicacion
	And doy click en el boton "jugar"
	Then debo ver "Simón Recargado dice:"
