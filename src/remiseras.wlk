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
		if(cliente.valorViaje() * kms < 50) {
			return 50
		} else {
			return cliente.valorViaje() * kms
		}
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