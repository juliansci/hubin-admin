import hubinadmin.Administrador

class BootStrap {

    def init = { servletContext ->
		if (!Administrador.count()) {
			new Administrador(login: "admin", password: "1234").save()
		}
    }
    def destroy = {
    }
}
