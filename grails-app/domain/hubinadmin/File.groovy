package hubinadmin

class File {
	
	String extension
	byte[] data

    static constraints = {
		extension size: 1..5, blank: false, nullable: false
		data nullable: true, maxSize: 10*1024*1024
    }
	
	static mapping = {
		version false
	}
}
