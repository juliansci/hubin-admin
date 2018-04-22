package hubinadmin

class Materia {
	
	String nombre
	String codigo
	static belongsTo = [area: Area]

	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		codigo size: 1..30, blank: true, nullable: true
		area nullable: false
	}

	static mapping = {
		version false
	}
}
