<%@ page import="hubinadmin.Nivel" %>



<div class="fieldcontain ${hasErrors(bean: nivelInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="nivel.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombre" cols="40" rows="5" maxlength="255" required="" value="${nivelInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nivelInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="nivel.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="code" cols="40" rows="5" maxlength="255" required="" value="${nivelInstance?.code}"/>

</div>

