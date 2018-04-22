package hubinadmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ObjetivoController {
	
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
        respond Objetivo.list(params), model:[objetivoInstanceCount: Objetivo.count()]
    }

    def show(Objetivo objetivoInstance) {
        respond objetivoInstance
    }

    def create() {
        respond new Objetivo(params)
    }

    @Transactional
    def save(Objetivo objetivoInstance) {
        if (objetivoInstance == null) {
            notFound()
            return
        }

        if (objetivoInstance.hasErrors()) {
            respond objetivoInstance.errors, view:'create'
            return
        }

        objetivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'objetivo.label', default: 'Objetivo'), objetivoInstance.id])
                redirect objetivoInstance
            }
            '*' { respond objetivoInstance, [status: CREATED] }
        }
    }

    def edit(Objetivo objetivoInstance) {
        respond objetivoInstance
    }

    @Transactional
    def update(Objetivo objetivoInstance) {
        if (objetivoInstance == null) {
            notFound()
            return
        }

        if (objetivoInstance.hasErrors()) {
            respond objetivoInstance.errors, view:'edit'
            return
        }

        objetivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Objetivo.label', default: 'Objetivo'), objetivoInstance.id])
                redirect objetivoInstance
            }
            '*'{ respond objetivoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Objetivo objetivoInstance) {

        if (objetivoInstance == null) {
            notFound()
            return
        }

        objetivoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Objetivo.label', default: 'Objetivo'), objetivoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'objetivo.label', default: 'Objetivo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
