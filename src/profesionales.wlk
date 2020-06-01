// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}	
	method honorariosPorHora() { 
		return 3000
	}
}


class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { 
		return universidad.provincia()
	}	
	method honorariosPorHora() { 
		return universidad.honorarios()
	}
		
}



class ProfesionalLibre {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}	
	method honorariosPorHora() { 
		return 3000
	}
	
}
