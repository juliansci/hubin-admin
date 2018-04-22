package hubinadmin

class Administrador{
	
		String login
		String password
	
		static constraints = {
			login(blank: false, unique: true, size: 1..30)
			password(blank: false, size: 1..30)
		}
	}