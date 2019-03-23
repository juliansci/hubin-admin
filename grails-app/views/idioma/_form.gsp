<%@ page import="hubinadmin.Idioma" %>



<div class="fieldcontain ${hasErrors(bean: idiomaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="idioma.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombre" cols="40" rows="5" maxlength="255" required="" value="${idiomaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: idiomaInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="idioma.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="code" cols="40" rows="5" maxlength="255" required="" value="${idiomaInstance?.code}"/>

</div>

