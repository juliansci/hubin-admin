package hubinadmin

class Proveedor {
	
	Integer id
	String cuit	
	String direccion
	String email
	String razonSocial	
	Integer telefono

    static constraints = {
		cuit unique: true, size: 1..30, blank: false, nullable: false
		direccion size: 1..50, blank: true, nullable: true
		email blank: false, nullable: true, size: 1..30, email: true
		razonSocial unique: true, size: 1..30, blank: false, nullable: false		
		telefono nullable: true
    }
	
	static mapping = {
		version false
		razonSocial column: "razonSocial"
	}
}
