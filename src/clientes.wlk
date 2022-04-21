object ludmila {
	
	method valorViaje() = 18
}

object anaMaria {
	var economiaEstable = false
	
	method economiaEstable() = economiaEstable
	
	method cambiarEconomiaEstable() {
		economiaEstable = not economiaEstable
	}
	
	method valorViaje() {
		if (economiaEstable) {
			return 30
		} else {
			return 25
		}
	}
}

object teresa {
	var valorViaje = 22
	
	method valorViaje() = valorViaje
	
	method valorViaje(nuevoValor) {
		valorViaje = nuevoValor
	}
}
