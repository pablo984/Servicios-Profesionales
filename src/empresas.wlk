import profesionales.*
import universidades.*

class EmpresaDeServicios {
	const property profesionales = []
	var property honorarioReferencia
	
	method contratarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	method cuantosEstudiaronEn(unaUniversidad) {
		return profesionales.count({ prof => prof.universidad() == unaUniversidad })
	}
	method profesionalesCaros(){
		return profesionales.filter({ prof => prof.honorariosPorHora() > honorarioReferencia }).asSet()
	}
	method universidadesFormadoras() {
		return profesionales.map({ prof => prof.universidad() }).asSet()
	}
	method elProfesionalMasBarato() {
		return profesionales.min({ prof => prof.honorariosPorHora() })
	}
	method esDeGenteAcotada() {
		return profesionales.all({ prof => prof.provinciasDondePuedeTrabajar().size() <= 3})
	}
	method puedeSatisfacerA(unSolicitante) {
		
	}
	
	
}
