<%@ page import="hubinadmin.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="materia.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${materiaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="materia.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="30" required="" value="${materiaInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="materia.foto.label" default="Foto" />
		
	</label>
	<input type="file" id="foto" name="foto" />

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'destacada', 'error')} ">
	<label for="destacada">
		<g:message code="materia.destacada.label" default="Destacada" />
		
	</label>
	<g:checkBox name="destacada" value="${materiaInstance?.destacada}" />

</div>

