import remiseras.*
import clientes.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras() {
		segundaRemisera = primeraRemisera
		primeraRemisera = segundaRemisera
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
