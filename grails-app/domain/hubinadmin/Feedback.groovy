package hubinadmin

class Feedback {
	
	Integer id
	String tipo
	String mensaje
	Date fecha
	boolean leido
	Alumno alumno

    static constraints = {
		tipo unique: false, size: 1..255, blank: false, nullable: false
		mensaje unique: false, size: 1..255, blank: false, nullable: false
		fecha nullable: false
		alumno nullable: false
    }
	
	static mapping = {
		version false
	}
}
