<%@ page import="hubinadmin.Objetivo" %>



<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="objetivo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="255" value="${objetivoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="objetivo.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombre" cols="40" rows="5" maxlength="255" required="" value="${objetivoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'orden', 'error')} required">
	<label for="orden">
		<g:message code="objetivo.orden.label" default="Orden" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orden" type="number" value="${objetivoInstance.orden}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="objetivo.tipo.label" default="Tipo" />
		
	</label>
	<g:textArea name="tipo" cols="40" rows="5" maxlength="255" value="${objetivoInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'proveedor', 'error')} required">
	<label for="proveedor">
		<g:message code="objetivo.proveedor.label" default="Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proveedor" name="proveedor.id" from="${hubinadmin.Proveedor.list()}" optionKey="id" required="" value="${objetivoInstance?.proveedor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="objetivo.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${objetivoInstance?.activo}" />

</div>

