<%@ page import="hubinadmin.Denuncia" %>



<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'mensaje', 'error')} required">
	<label for="mensaje">
		<g:message code="denuncia.mensaje.label" default="Mensaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="mensaje" cols="40" rows="5" maxlength="255" required="" value="${denunciaInstance?.mensaje}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="denuncia.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${denunciaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="denuncia.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${hubinadmin.Alumno.list()}" optionKey="id" required="" value="${denunciaInstance?.alumno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="denuncia.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="documento" name="documento.id" from="${hubinadmin.Documento.list()}" optionKey="id" required="" value="${denunciaInstance?.documento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: denunciaInstance, field: 'resuelto', 'error')} ">
	<label for="resuelto">
		<g:message code="denuncia.resuelto.label" default="Resuelto" />
		
	</label>
	<g:checkBox name="resuelto" value="${denunciaInstance?.resuelto}" />

</div>

