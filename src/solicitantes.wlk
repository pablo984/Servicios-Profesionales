import profesionales.*
import universidades.*
import empresas.*


class Persona {
	var property provinciaDondeVive 
	
	method puedeSerAtendidoPor(unProfesional) {
		return unProfesional.provinciasDondePuedeTrabajar().contains(self.provinciaDondeVive())
	}

}

class Instituciones {
	const property listaUniversidades = []
	
	method puedeSerAtendidoPor(unProfesional) {
		return listaUniversidades.any({ uni => uni.listaUniversidades() == unProfesional.universidad() })
	}
	
}
