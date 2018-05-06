package hubinadmin

class Materia {
	
	String nombre
	String codigo
	boolean destacada
	byte[] foto
	static belongsTo = [area: Area]

	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		codigo size: 1..30, blank: true, nullable: true
		foto nullable: true, maxSize: 2*1024*1024
		area nullable: false
	}

	static mapping = {
		version false
	}
}
