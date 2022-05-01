/*
 * OJO:El unico método polimorfico de las remiseras es precioViaje(cliente,kms)
 * El resto de los métodos es propio de cada objeto, en este caso no deben estar replicados vacios en todos los objetos
 */
import clientes.*

/*
 * definir remiseras y clientes.
 */

object roxana {
	
	method precioViaje(cliente,kms) {
		return cliente.valorViaje() * kms
	}
}

object gabriela {
	
	method precioViaje(cliente,kms) {
		return (cliente.valorViaje() * kms) * 1.2
	}
	
}

object mariela {
	
	method precioViaje(cliente,kms) {
		return 50.max(cliente.valorViaje() * kms)
	}
	
}

object juana {
	
	method precioViaje(cliente,kms) {
		if(kms <= 8) {
			return 100
		} else {
			return 200
		}
	}
	

}

object lucia {
	var reemplazaA
	
	method precioViaje(cliente,kms) {
		return reemplazaA.precioViaje(cliente,kms)
	}
	
	method reemplazaA(remisera) {
		reemplazaA = remisera
	}
	
	method reemplazaA() = reemplazaA
}