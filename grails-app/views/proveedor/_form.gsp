<%@ page import="hubinadmin.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'cuit', 'error')} required">
	<label for="cuit">
		<g:message code="proveedor.cuit.label" default="Cuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="cuit" cols="40" rows="5" maxlength="255" required="" value="${proveedorInstance?.cuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="proveedor.direccion.label" default="Direccion" />
		
	</label>
	<g:textArea name="direccion" cols="40" rows="5" maxlength="255" value="${proveedorInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="proveedor.email.label" default="Email" />
		
	</label>
	<g:textArea name="email" cols="40" rows="5" maxlength="255" value="${proveedorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="proveedor.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="razonSocial" cols="40" rows="5" maxlength="255" required="" value="${proveedorInstance?.razonSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="proveedor.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${proveedorInstance.telefono}"/>

</div>

