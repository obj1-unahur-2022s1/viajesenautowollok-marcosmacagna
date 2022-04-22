object ludmila {
	
	method valorViaje() = 18
}

object anaMaria {
	var economiaEstable = true
	
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

object melina {
	var trabajaPara
	
	method trabajaPara(clienta) {
		trabajaPara = clienta
	}
	
	method trabajaPara() = trabajaPara
	
	method valorViaje() = trabajaPara.valorViaje() - 3
}
