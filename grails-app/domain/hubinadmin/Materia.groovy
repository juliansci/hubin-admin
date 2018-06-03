package hubinadmin

class Materia {
	
	String nombre
	String code
	boolean destacada
	File foto

	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		code unique: true, size: 1..30, blank: false, nullable: false
		foto nullable: true
	}

	static mapping = {
		version false
	}
}
