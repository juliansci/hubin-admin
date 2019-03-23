package hubinadmin

class Idioma {

	Integer id
    String nombre
	String code

	static constraints = {
		nombre unique: true, size: 1..255, blank: false, nullable: false
		code unique: true, size: 1..255, blank: false, nullable: false
	}

	static mapping = {
		version false
	}
	
}
