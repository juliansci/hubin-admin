package hubinadmin

class Documento {
	
	String nombre
	String extension
	String descripcion
	Date fechaCreacion
	
	
	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		extension size: 1..30, blank: false, nullable: false
		descripcion size: 1..255, blank: true, nullable: true
		fechaCreacion nullable: true
	}

    static mapping = {
		version false
		fechaCreacion column: "fechaCreacion"
	}
}
