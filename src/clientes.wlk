/*
 * OJO:El unico método polimorfico de los clientes es valorViaje()
 * El resto de los métodos es propio de cada objeto, en este caso no deben estar replicados vacios en todos los objetos
 */
object ludmila {
	
	method valorViaje() = 18
	
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
