package hubinadmin

import java.util.Date;

class File {
	
	Integer id
	String extension
	byte[] data
	Date fecha

    static constraints = {
		extension size: 1..5, blank: false, nullable: false
		data nullable: true, maxSize: 1024*1024*1024
		fecha nullable: false
    }
	
	static mapping = {
		version false
	}
}
