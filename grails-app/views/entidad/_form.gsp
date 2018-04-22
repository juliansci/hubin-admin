<%@ page import="hubinadmin.Entidad" %>



<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'cuit', 'error')} required">
	<label for="cuit">
		<g:message code="entidad.cuit.label" default="Cuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuit" maxlength="30" required="" value="${entidadInstance?.cuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="entidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="30" required="" value="${entidadInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="entidad.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" maxlength="50" value="${entidadInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="entidad.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${entidadInstance.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="entidad.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" maxlength="30" value="${entidadInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'areas', 'error')} ">
	<label for="areas">
		<g:message code="entidad.areas.label" default="Areas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entidadInstance?.areas?}" var="a">
    <li><g:link controller="area" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="area" action="create" params="['entidad.id': entidadInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'area.label', default: 'Area')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'activa', 'error')} ">
	<label for="activa">
		<g:message code="entidad.activa.label" default="Activa" />
		
	</label>
	<g:checkBox name="activa" value="${entidadInstance?.activa}" />

</div>

