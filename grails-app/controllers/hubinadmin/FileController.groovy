package hubinadmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FileController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond File.list(params), model:[fileInstanceCount: File.count()]
    }

    def show(File fileInstance) {
        respond fileInstance
    }

    def create() {
        respond new File(params)
    }

    @Transactional
    def save(File fileInstance) {
        if (fileInstance == null) {
            notFound()
            return
        }

        if (fileInstance.hasErrors()) {
            respond fileInstance.errors, view:'create'
            return
        }

        fileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'file.label', default: 'File'), fileInstance.id])
                redirect fileInstance
            }
            '*' { respond fileInstance, [status: CREATED] }
        }
    }

    def edit(File fileInstance) {
        respond fileInstance
    }

    @Transactional
    def update(File fileInstance) {
        if (fileInstance == null) {
            notFound()
            return
        }

        if (fileInstance.hasErrors()) {
            respond fileInstance.errors, view:'edit'
            return
        }

        fileInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'File.label', default: 'File'), fileInstance.id])
                redirect fileInstance
            }
            '*'{ respond fileInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(File fileInstance) {

        if (fileInstance == null) {
            notFound()
            return
        }

        fileInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'File.label', default: 'File'), fileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'file.label', default: 'File'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
