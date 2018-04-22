<%@ page import="hubinadmin.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="materia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${materiaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="materia.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" maxlength="30" value="${materiaInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="materia.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${hubinadmin.Area.list()}" optionKey="id" required="" value="${materiaInstance?.area?.id}" class="many-to-one"/>

</div>

