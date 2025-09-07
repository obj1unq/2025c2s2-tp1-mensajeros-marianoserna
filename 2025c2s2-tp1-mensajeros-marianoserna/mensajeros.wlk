object paquete {
	var property estadoDePago = true
	var property destino = matrix
	
	method puedeSerEntregadoPor(empleado){
		return (self.estadoDePago() && destino.empleadoCumpleConCodicion(empleado)) 
	}  

}

//destinos
object puenteBrooklyn {
  
	method empleadoCumpleConCodicion(empleado) {
		return empleado.peso() < 1000
	}

}

object matrix {
  method empleadoCumpleConCodicion(empleado) {
		return empleado.puedeLlamar()
	}
}

// mensajeros
object jeanGray {
	/* Posee poderes telepáticos y telequinesicos, 
	es decir que puede comunicarse con cualquier persona en cualquier momento (puede llamar siempre).
	Su peso es de 65 kg. */

	var property puedeLlamar = true
	var property peso = 65
}

object neo {
	/* Neo vuela, así que no pesa nada. Y anda
	 con celular, el muy canchero. El tema es que a veces no puede 
	 llamar porque se queda sin crédito. */

	const property peso = 0
	var property credito = 0
	method puedeLlamar(){
		return (self.credito() <= 0)
	}
}

object saraConnor {
	/* Tiene un peso propio que varía con el tiempo (es configurable). Viaja en moto ó camión.
	 A ese peso propio se le suma el peso de su vehículo. La moto pesa 100kg. 
	 En cambio, el camión pesa media tonelada. Si el camión tiene acoplados, 
	 hay que agregar media tonelada adicional por cada uno de ellos. Sara no puede llamar a nadie.
	 */

	var property pesoActual = 60
	var property transporte = moto
	var property puedeLlamar = false

	method peso(){
		return self.pesoActual() + transporte.peso()
	}
	
} 

object moto {
	var property peso = 100
}

object camion {
	var property acoplados = 0

	method peso(){
		return 500 + (500 * self.acoplados())
	}
}
