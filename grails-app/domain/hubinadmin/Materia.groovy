package hubinadmin

class Materia {
	
	Integer id
	String nombre
	String code
	boolean destacada
	File foto

	static constraints = {
		nombre size: 1..255, blank: false, nullable: false
		code unique: true, size: 1..255, blank: false, nullable: false
		foto nullable: true
	}

	static mapping = {
		version false
	}
}
