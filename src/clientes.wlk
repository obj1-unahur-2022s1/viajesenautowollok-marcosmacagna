object ludmila {
	
	method valorViaje() = 18
	
	method economiaEstable() {}
	
	method cambiarEconomiaEstable() {}
	
	method valorViaje(nuevoValor) {}
	
	method trabajaPara(clienta) {}
	
	method trabajaPara(){}
}

object anaMaria {
	/**
	 *	Como en la consigna, en la parte de los test de 10 kms dice 
	 *	"se supone que Ana María está económicamente estable", 
	 *	asumí que la var economiaEstable, debia inicializar en true
	 */
	
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
	
	method valorViaje(nuevoValor) {}
	
	method trabajaPara(clienta) {}
	
	method trabajaPara(){}
}

object teresa {
	var valorViaje = 22
	
	method valorViaje() = valorViaje
	
	method valorViaje(nuevoValor) {
		valorViaje = nuevoValor
	}
	
	method trabajaPara(clienta) {}
	
	method trabajaPara(){}
	
	method economiaEstable() {}
	
	method cambiarEconomiaEstable() {}
}

object melina {
	var trabajaPara
	
	method trabajaPara(clienta) {
		trabajaPara = clienta
	}
	
	method trabajaPara() = trabajaPara
	
	method valorViaje() = trabajaPara.valorViaje() - 3
	
	method valorViaje(nuevoValor) {}
	
	method economiaEstable() {}
	
	method cambiarEconomiaEstable() {}
}
