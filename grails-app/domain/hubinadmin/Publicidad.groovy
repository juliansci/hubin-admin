package hubinadmin

class Publicidad {

	boolean activa
	Integer prioridad
	byte[] data
	Date fechaAlta
	static belongsTo = [proveedor: Proveedor]

	static constraints = {
		prioridad nullable: false
		data nullable: true, maxSize: 1*1024*1024
		fechaAlta blank: false
		proveedor nullable: false
	}

	static mapping = {
		version false
	}
}
