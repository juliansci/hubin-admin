package hubinadmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EntidadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Entidad.list(params), model:[entidadInstanceCount: Entidad.count()]
    }

    def show(Entidad entidadInstance) {
        respond entidadInstance
    }

    def create() {
        respond new Entidad(params)
    }

    @Transactional
    def save(Entidad entidadInstance) {
        if (entidadInstance == null) {
            notFound()
            return
        }

        if (entidadInstance.hasErrors()) {
            respond entidadInstance.errors, view:'create'
            return
        }

        entidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'entidad.label', default: 'Entidad'), entidadInstance.id])
                redirect entidadInstance
            }
            '*' { respond entidadInstance, [status: CREATED] }
        }
    }

    def edit(Entidad entidadInstance) {
        respond entidadInstance
    }

    @Transactional
    def update(Entidad entidadInstance) {
        if (entidadInstance == null) {
            notFound()
            return
        }

        if (entidadInstance.hasErrors()) {
            respond entidadInstance.errors, view:'edit'
            return
        }

        entidadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Entidad.label', default: 'Entidad'), entidadInstance.id])
                redirect entidadInstance
            }
            '*'{ respond entidadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Entidad entidadInstance) {

        if (entidadInstance == null) {
            notFound()
            return
        }

        entidadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Entidad.label', default: 'Entidad'), entidadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidad.label', default: 'Entidad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
