package hubinadmin

import java.util.Date;

class Denuncia {
	
	Integer id
	String mensaje
	Date fecha
	boolean resuelto
	Alumno alumno
	Documento documento

    static constraints = {
		mensaje unique: false, size: 1..255, blank: false, nullable: false
		fecha nullable: false
		alumno nullable: false
		documento nullable: false
    }
	
	static mapping = {
		version false
	}
}
