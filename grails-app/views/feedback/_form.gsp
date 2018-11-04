<%@ page import="hubinadmin.Feedback" %>



<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="feedback.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="tipo" cols="40" rows="5" maxlength="255" required="" value="${feedbackInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'mensaje', 'error')} required">
	<label for="mensaje">
		<g:message code="feedback.mensaje.label" default="Mensaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="mensaje" cols="40" rows="5" maxlength="255" required="" value="${feedbackInstance?.mensaje}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="feedback.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${feedbackInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="feedback.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${hubinadmin.Alumno.list()}" optionKey="id" required="" value="${feedbackInstance?.alumno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'leido', 'error')} ">
	<label for="leido">
		<g:message code="feedback.leido.label" default="Leido" />
		
	</label>
	<g:checkBox name="leido" value="${feedbackInstance?.leido}" />

</div>

