package hubinadmin

class Objetivo {
	
	Integer id
	boolean activo
	String descripcion
	String nombre
	Integer orden
	String tipo
	static belongsTo = [proveedor: Proveedor]

    static constraints = {
		descripcion size: 1..200, blank: false, nullable: true
		nombre unique: true, size: 1..30, blank: false, nullable: false
		orden blank: false, nullable: false, unique: true
		tipo size: 1..200, blank: false, nullable: true
		proveedor nullable: false
    }
	
	static mapping = {
		version false
	}
}
