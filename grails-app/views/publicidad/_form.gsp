<%@ page import="hubinadmin.Publicidad" %>



<div class="fieldcontain ${hasErrors(bean: publicidadInstance, field: 'prioridad', 'error')} required">
	<label for="prioridad">
		<g:message code="publicidad.prioridad.label" default="Prioridad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prioridad" type="number" value="${publicidadInstance.prioridad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicidadInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="publicidad.data.label" default="Data" />
		
	</label>
	<input type="file" id="data" name="data" />

</div>

<div class="fieldcontain ${hasErrors(bean: publicidadInstance, field: 'fechaAlta', 'error')} required">
	<label for="fechaAlta">
		<g:message code="publicidad.fechaAlta.label" default="Fecha Alta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAlta" precision="day"  value="${publicidadInstance?.fechaAlta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: publicidadInstance, field: 'proveedor', 'error')} required">
	<label for="proveedor">
		<g:message code="publicidad.proveedor.label" default="Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proveedor" name="proveedor.id" from="${hubinadmin.Proveedor.list()}" optionKey="id" required="" value="${publicidadInstance?.proveedor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicidadInstance, field: 'activa', 'error')} ">
	<label for="activa">
		<g:message code="publicidad.activa.label" default="Activa" />
		
	</label>
	<g:checkBox name="activa" value="${publicidadInstance?.activa}" />

</div>

