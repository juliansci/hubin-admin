package hubinadmin

public class Alumno {
	
	Integer id
	Integer dni
	String email
	Date fechaNac
	String nombre
	String presentacion
	String username
	
	static constraints = {
		dni unique: true, size: 1..30, blank: false, nullable: false
		email blank: false, nullable: true, size: 1..30, email: true
		fechaNac nullable: true
		nombre size: 1..30, blank: false, nullable: false
		presentacion size: 1..30, blank: false, nullable: false
		username size: 1..30, blank: false, nullable: false
	}

	static mapping = {
		version false
		fechaNac column: "fechaNac"
	}
	
}
