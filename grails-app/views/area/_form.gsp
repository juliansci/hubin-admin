<%@ page import="hubinadmin.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="area.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${areaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'entidad', 'error')} required">
	<label for="entidad">
		<g:message code="area.entidad.label" default="Entidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="entidad" name="entidad.id" from="${hubinadmin.Entidad.list()}" optionKey="id" required="" value="${areaInstance?.entidad?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'materias', 'error')} ">
	<label for="materias">
		<g:message code="area.materias.label" default="Materias" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${areaInstance?.materias?}" var="m">
    <li><g:link controller="materia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="materia" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'materia.label', default: 'Materia')])}</g:link>
</li>
</ul>


</div>

