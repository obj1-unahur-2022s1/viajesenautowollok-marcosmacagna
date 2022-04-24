import remiseras.*
import clientes.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method primeraRemisera() = primeraRemisera
	
	method segundaRemisera() = segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimeraRemiserarPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras() {
		var remisera1
		var remisera2
		
		remisera1 = primeraRemisera
		remisera2 = segundaRemisera
		
		primeraRemisera = remisera2
		segundaRemisera = remisera1
	}
	
	method segundaRemiseraMenorPrecioPrimeraRemisera(cliente, kms) {
		return segundaRemisera.precioViaje(cliente,kms) 
		       < primeraRemisera.precioViaje(cliente,kms)
	}
	
	method diferenciaDePrecios(cliente, kms) {
		return (segundaRemisera.precioViaje(cliente,kms) 
		       - primeraRemisera.precioViaje(cliente,kms)).abs()
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if(self.segundaRemiseraMenorPrecioPrimeraRemisera(cliente, kms) 
			and self.diferenciaDePrecios(cliente, kms) > 30) {
				return segundaRemisera	
			} else {
				return primeraRemisera
			}
	}
}
