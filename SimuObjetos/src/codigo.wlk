class Empleado {
	var estamina
	var rol
	
	constructor(est, r){
		self.agregarEstamina(est)
		rol = r
	}
	
	method agregarEstamina(est){
		estamina += est
	}
	
	method quitarEstamina(est){
		estamina -= est
	}
	
	method getRol() = rol
	method cambiarRol(_rol){
		rol = _rol
	}
	
	method fuerza() = (estamina / 2) + 2
}

class Biclope inherits Empleado {
	constructor(est, r) = super(est, r)
	
	override method agregarEstamina(est){
		super(est).min(10)
	}
}
	
class Ciclope inherits Empleado {
	constructor(est, r) = super(est, r)
	
	override method fuerza() = super() / 2
}

// Roles

class Rol {
	
}

class Soldado inherits Rol {
	var arma
	
	constructor(ar){
		arma = ar
	}
	
	method defenderSector(sec){
		self.incrementarDanio()
	}
	
	method danioArma() = arma
	method incrementarDanio(){arma += 2}
	method getHerr() = []
	method 
}

class Obrero inherits Rol {
	var herram
	
	constructor(herr){
		herram = herr
	}
	
	method defenderSector()
	method getHerr() = herram
	method danioArma() = 0
}

class Mucama inherits Rol {
	method defenderSector(){
		throw new Exception("Las mucamas no pueden defender sectores")
	}
	
	method getHerr() = []
	method danioArma() = 0	
}

// Tareas

class Tarea {
	method requerimiento()
}

class ArreglarMaquina inherits Tarea {
	var herNecesarias = []
	var complejidad
	
	constructor(her, dif){
		herNecesarias = her
		complejidad = dif
	}
	
	method puedeRealizar(emp){
		if(self.requerimiento(emp)) self.arreglarse(emp)
	}
	
	method requerimiento(emp) = emp.getEstamina() >= complejidad && herNecesarias.all({herr => emp.getRol().getHerr().contains(herr)})
	
	method arreglarse(emp){
		emp.quitarEstamina(complejidad)
	}
	
	method dificultad() = complejidad * 2
}

class DefenderSector inherits Tarea {
	var amenaza
	
	method puedeRealizar(emp){
		if(self.requerimiento(emp)) emp.defenderSector()
	}
	
	method requerimiento(emp) = (emp.fuerza() + emp.getRol().danioArma()) > amenaza
	
	method defender(){
		emp.quitarEstamina
	}
}