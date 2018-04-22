package hubinadmin

class LoginController {

	def index() {}

	def authenticate() {
		if (params.login && params.password) {

			def administrador = Administrador.findByLoginAndPassword(params.login, params.password)
			if (administrador){
				session.admin = administrador
				redirect(controller: 'admin', action:'index')
			}
			else{
				flash.message = "Usuario no encontrado: por favor ingrese los datos correctamente"
				redirect(action:'index')
			}
		}
		else{
			flash.message = "Por favor ingrese los datos correctamente"
			redirect(action:'index')
		}
	}

	def logout(){
		session.admin = null
		redirect(action:'index')
	}
}
