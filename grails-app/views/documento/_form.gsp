<%@ page import="hubinadmin.Documento" %>



<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="documento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${documentoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'extension', 'error')} required">
	<label for="extension">
		<g:message code="documento.extension.label" default="Extension" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="extension" maxlength="30" required="" value="${documentoInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="documento.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="255" value="${documentoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'fechaCreacion', 'error')} ">
	<label for="fechaCreacion">
		<g:message code="documento.fechaCreacion.label" default="Fecha Creacion" />
		
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${documentoInstance?.fechaCreacion}" default="none" noSelection="['': '']" />

</div>

