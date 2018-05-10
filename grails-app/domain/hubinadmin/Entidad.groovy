package hubinadmin

class Entidad {

	String cuit
	String nombre
	String direccion
	Integer telefono
	String email
	String code
	boolean activa

	static constraints = {
		cuit unique: true, size: 1..30, blank: false, nullable: false
		nombre unique: true, size: 1..30, blank: false, nullable: false
		direccion size: 1..50, blank: true, nullable: true
		telefono nullable: true
		email blank: false, nullable: true, size: 1..30, email: true
		code unique: true, size: 1..30, blank: false, nullable: false
	}

	static mapping = {
		version false
	}
}
