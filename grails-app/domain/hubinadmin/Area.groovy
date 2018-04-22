package hubinadmin

class Area {

	String nombre
	static belongsTo = [entidad: Entidad]
	static hasMany = [materias : Materia]

	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		entidad nullable: false
		materias nullable: true
	}

	static mapping = {
		version false
	}
}
