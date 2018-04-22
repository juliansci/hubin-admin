package hubinadmin

class Objetivo {
	
	String nombre
	String descripcion
	Integer ptosTotales
	boolean activa
	static belongsTo = [proveedor: Proveedor]

    static constraints = {
		nombre unique: true, size: 1..30, blank: false, nullable: false
		descripcion size: 1..200, blank: false, nullable: true
		ptosTotales nullable: false
		proveedor nullable: false
    }
	
	static mapping = {
		version false
	}
}
