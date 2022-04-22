import clientes.*

/*
 * definir remiseras y clientes.
 */

object roxana {
	
	method precioViaje(cliente,kms) {
		return cliente.valorViaje() * kms
	}
	
	method reemplazaA(remisera) {}
	
	method reemplazaA() {}
}

object gabriela {
	
	method precioViaje(cliente,kms) {
		return (cliente.valorViaje() * kms) * 1.2
	}
	
	method reemplazaA(remisera) {}
	
	method reemplazaA() {}
}

object mariela {
	
	method precioViaje(cliente,kms) {
		if(cliente.valorViaje() * kms < 50) {
			return 50
		} else {
			return cliente.valorViaje() * kms
		}
	}
	
	method reemplazaA(remisera) {}
	
	method reemplazaA() {}
}

object juana {
	
	method precioViaje(cliente,kms) {
		if(kms <= 8) {
			return 100
		} else {
			return 200
		}
	}
	
	method reemplazaA(remisera) {}
	
	method reemplazaA() {}
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