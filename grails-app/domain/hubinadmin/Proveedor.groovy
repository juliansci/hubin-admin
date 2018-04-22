package hubinadmin

class Proveedor {
	
	String cuit	
	String razonSocial	
	String direccion
	Integer telefono
	String email
	static hasMany = [publicidades : Publicidad, objetivos : Objetivo]

    static constraints = {
		cuit unique: true, size: 1..30, blank: false, nullable: false
		razonSocial unique: true, size: 1..30, blank: false, nullable: false
		direccion size: 1..50, blank: true, nullable: true
		telefono nullable: true
		email blank: false, nullable: true, size: 1..30, email: true
		publicidades nullable: true
		objetivos nullable: true
    }
	
	static mapping = {
		version false
	}
}
