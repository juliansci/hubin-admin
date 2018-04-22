package hubinadmin

class AdminController {

	def beforeInterceptor = [action: this.&chequearUsuario]

	def index() { 
		render(view:'/index')
	}

	def chequearUsuario() {
		if (!session.admin) {
			redirect(controller: 'login', action: 'index')
			return false
		}
	}
}
