package hubinadmin

class Materia {
	
	String nombre
	String code
	boolean destacada
	byte[] foto

	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		code unique: true, size: 1..30, blank: false, nullable: false
		foto nullable: true, maxSize: 2*1024*1024
	}

	static mapping = {
		version false
	}
}
