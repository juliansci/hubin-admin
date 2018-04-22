import hubinadmin.Administrador

class BootStrap {

    def init = { servletContext ->
		if (!Administrador.count()) {
			new Administrador(login: "root", password: "root").save()
		}
    }
    def destroy = {
    }
}
