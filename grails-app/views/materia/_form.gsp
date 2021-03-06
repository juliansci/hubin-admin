<%@ page import="hubinadmin.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="materia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombre" cols="40" rows="5" maxlength="255" required="" value="${materiaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="materia.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="code" cols="40" rows="5" maxlength="255" required="" value="${materiaInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="materia.foto.label" default="Foto" />
		
	</label>
	<g:select id="foto" name="foto.id" from="${hubinadmin.File.list()}" optionKey="id" value="${materiaInstance?.foto?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'destacada', 'error')} ">
	<label for="destacada">
		<g:message code="materia.destacada.label" default="Destacada" />
		
	</label>
	<g:checkBox name="destacada" value="${materiaInstance?.destacada}" />

</div>

