<%@ page import="hubinadmin.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="alumno.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dni" type="number" value="${alumnoInstance.dni}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="alumno.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" maxlength="30" value="${alumnoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechaNac', 'error')} ">
	<label for="fechaNac">
		<g:message code="alumno.fechaNac.label" default="Fecha Nac" />
		
	</label>
	<g:datePicker name="fechaNac" precision="day"  value="${alumnoInstance?.fechaNac}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${alumnoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'presentacion', 'error')} required">
	<label for="presentacion">
		<g:message code="alumno.presentacion.label" default="Presentacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="presentacion" maxlength="30" required="" value="${alumnoInstance?.presentacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="alumno.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="30" required="" value="${alumnoInstance?.username}"/>

</div>

