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
	
	method getRol() = rol
	method cambiarRol(_rol){
		rol = _rol
	}
}

class Biclope inherits Empleado {
	constructor(est, r) = super(est, r)
	
	override method agregarEstamina(est){
		super(est).min(10)
	}
}
	
class Ciclope inherits Empleado {
	constructor(est, r) = super(est, r)
	
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
}

class Obrero inherits Rol {
	var herram
	
	constructor(herr){
		herram = herr
	}
	
	method defenderSector()
}

class Mucama inherits Rol {
	method defenderSector(){
		throw new Exception("Las mucamas no pueden defender sectores")
	}	
}

// Tareas

class Tarea {
	
}

class ArreglarMaquina inherits Tarea {
	var herNecesarias = []
	
	method requerimiento(emp){
		
	}
}