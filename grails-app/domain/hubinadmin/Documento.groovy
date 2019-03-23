package hubinadmin

class Documento {
	
	Integer id
	String nombre
	String extension
	String descripcion
	boolean eliminado
	Date fechaCreacion
	Date fechaUltModificacion
	
	
	static constraints = {
		nombre size: 1..30, blank: false, nullable: false
		extension size: 1..30, blank: false, nullable: false
		descripcion size: 1..255, blank: true, nullable: true
		fechaCreacion nullable: true
		fechaUltModificacion nullable: true
	}

    static mapping = {
		version false
		fechaCreacion column: "fechaCreacion"
		fechaUltModificacion column: "fechaUltModificacion"
	}
}
