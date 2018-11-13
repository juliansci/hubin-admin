package hubinadmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DenunciaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Denuncia.list(params), model:[denunciaInstanceCount: Denuncia.count()]
    }

    def show(Denuncia denunciaInstance) {
        respond denunciaInstance
    }

    def create() {
        respond new Denuncia(params)
    }

    @Transactional
    def save(Denuncia denunciaInstance) {
        if (denunciaInstance == null) {
            notFound()
            return
        }

        if (denunciaInstance.hasErrors()) {
            respond denunciaInstance.errors, view:'create'
            return
        }

        denunciaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), denunciaInstance.id])
                redirect denunciaInstance
            }
            '*' { respond denunciaInstance, [status: CREATED] }
        }
    }

    def edit(Denuncia denunciaInstance) {
        respond denunciaInstance
    }

    @Transactional
    def update(Denuncia denunciaInstance) {
        if (denunciaInstance == null) {
            notFound()
            return
        }

        if (denunciaInstance.hasErrors()) {
            respond denunciaInstance.errors, view:'edit'
            return
        }

        denunciaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Denuncia.label', default: 'Denuncia'), denunciaInstance.id])
                redirect denunciaInstance
            }
            '*'{ respond denunciaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Denuncia denunciaInstance) {

        if (denunciaInstance == null) {
            notFound()
            return
        }

        denunciaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Denuncia.label', default: 'Denuncia'), denunciaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'denuncia.label', default: 'Denuncia'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
