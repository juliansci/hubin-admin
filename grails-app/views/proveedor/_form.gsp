<%@ page import="hubinadmin.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'cuit', 'error')} required">
	<label for="cuit">
		<g:message code="proveedor.cuit.label" default="Cuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuit" maxlength="30" required="" value="${proveedorInstance?.cuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="proveedor.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razonSocial" maxlength="30" required="" value="${proveedorInstance?.razonSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="proveedor.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" maxlength="50" value="${proveedorInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="proveedor.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${proveedorInstance.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="proveedor.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" maxlength="30" value="${proveedorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'publicidades', 'error')} ">
	<label for="publicidades">
		<g:message code="proveedor.publicidades.label" default="Publicidades" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proveedorInstance?.publicidades?}" var="p">
    <li><g:link controller="publicidad" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="publicidad" action="create" params="['proveedor.id': proveedorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'publicidad.label', default: 'Publicidad')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'objetivos', 'error')} ">
	<label for="objetivos">
		<g:message code="proveedor.objetivos.label" default="Objetivos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proveedorInstance?.objetivos?}" var="o">
    <li><g:link controller="objetivo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="objetivo" action="create" params="['proveedor.id': proveedorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'objetivo.label', default: 'Objetivo')])}</g:link>
</li>
</ul>


</div>

