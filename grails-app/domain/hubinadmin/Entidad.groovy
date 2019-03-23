package hubinadmin

class Entidad {

	Integer id
	boolean activa
	String code
	String cuit
	String descripcion
	String direccion
	String email
	String nombre
	String nombreCorto
	String telefono

	static constraints = {
		cuit unique: true, size: 1..255, blank: false, nullable: false
		nombre unique: true, size: 1..255, blank: false, nullable: false
		nombreCorto unique: true, size: 1..65535, blank: false, nullable: false
		direccion size: 1..255, blank: true, nullable: true
		descripcion blank: true, nullable: true
		telefono size: 1..255, blank: true, nullable: true
		email size: 1..255, blank: false, nullable: true, email: true
		code unique: true, size: 1..255, blank: false, nullable: false
	}

	static mapping = {
		version false
		nombreCorto column: "nombreCorto"
		descripcion type: 'text'
	}
}
