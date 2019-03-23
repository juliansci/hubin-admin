<%@ page import="hubinadmin.Entidad" %>



<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'cuit', 'error')} required">
	<label for="cuit">
		<g:message code="entidad.cuit.label" default="Cuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="cuit" cols="40" rows="5" maxlength="255" required="" value="${entidadInstance?.cuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="entidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombre" cols="40" rows="5" maxlength="255" required="" value="${entidadInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'nombreCorto', 'error')} required">
	<label for="nombreCorto">
		<g:message code="entidad.nombreCorto.label" default="Nombre Corto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombreCorto" cols="40" rows="5" maxlength="255" required="" value="${entidadInstance?.nombreCorto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="entidad.direccion.label" default="Direccion" />
		
	</label>
	<g:textArea name="direccion" cols="40" rows="5" maxlength="255" value="${entidadInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="entidad.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="255" value="${entidadInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="entidad.telefono.label" default="Telefono" />
		
	</label>
	<g:textArea name="telefono" cols="40" rows="5" maxlength="255" value="${entidadInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="entidad.email.label" default="Email" />
		
	</label>
	<g:textArea name="email" cols="40" rows="5" maxlength="255" value="${entidadInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="entidad.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="code" cols="40" rows="5" maxlength="255" required="" value="${entidadInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadInstance, field: 'activa', 'error')} ">
	<label for="activa">
		<g:message code="entidad.activa.label" default="Activa" />
		
	</label>
	<g:checkBox name="activa" value="${entidadInstance?.activa}" />

</div>

