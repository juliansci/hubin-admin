package hubinadmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PublicidadController {

	def beforeInterceptor = [action: this.&chequearUsuario]
	def chequearUsuario() {
		if (!session.admin) {
			redirect(controller: 'login', action: 'index')
			return false
		}
	}
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Publicidad.list(params), model:[publicidadInstanceCount: Publicidad.count()]
    }

    def show(Publicidad publicidadInstance) {
        respond publicidadInstance
    }

    def create() {
        respond new Publicidad(params)
    }

    @Transactional
    def save(Publicidad publicidadInstance) {
        if (publicidadInstance == null) {
            notFound()
            return
        }

        if (publicidadInstance.hasErrors()) {
            respond publicidadInstance.errors, view:'create'
            return
        }

        publicidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'publicidad.label', default: 'Publicidad'), publicidadInstance.id])
                redirect publicidadInstance
            }
            '*' { respond publicidadInstance, [status: CREATED] }
        }
    }

    def edit(Publicidad publicidadInstance) {
        respond publicidadInstance
    }

    @Transactional
    def update(Publicidad publicidadInstance) {
        if (publicidadInstance == null) {
            notFound()
            return
        }

        if (publicidadInstance.hasErrors()) {
            respond publicidadInstance.errors, view:'edit'
            return
        }

        publicidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Publicidad.label', default: 'Publicidad'), publicidadInstance.id])
                redirect publicidadInstance
            }
            '*'{ respond publicidadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Publicidad publicidadInstance) {

        if (publicidadInstance == null) {
            notFound()
            return
        }

        publicidadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Publicidad.label', default: 'Publicidad'), publicidadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'publicidad.label', default: 'Publicidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
