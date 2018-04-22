<%@ page import="hubinadmin.Objetivo" %>



<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="objetivo.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${objetivoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="objetivo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="200" value="${objetivoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'ptosTotales', 'error')} required">
	<label for="ptosTotales">
		<g:message code="objetivo.ptosTotales.label" default="Ptos Totales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ptosTotales" type="number" value="${objetivoInstance.ptosTotales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'proveedor', 'error')} required">
	<label for="proveedor">
		<g:message code="objetivo.proveedor.label" default="Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proveedor" name="proveedor.id" from="${hubinadmin.Proveedor.list()}" optionKey="id" required="" value="${objetivoInstance?.proveedor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objetivoInstance, field: 'activa', 'error')} ">
	<label for="activa">
		<g:message code="objetivo.activa.label" default="Activa" />
		
	</label>
	<g:checkBox name="activa" value="${objetivoInstance?.activa}" />

</div>

