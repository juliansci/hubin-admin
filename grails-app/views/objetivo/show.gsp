
<%@ page import="hubinadmin.Objetivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'objetivo.label', default: 'Objetivo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-objetivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-objetivo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list objetivo">
			
				<g:if test="${objetivoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="objetivo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${objetivoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objetivoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="objetivo.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${objetivoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objetivoInstance?.orden}">
				<li class="fieldcontain">
					<span id="orden-label" class="property-label"><g:message code="objetivo.orden.label" default="Orden" /></span>
					
						<span class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${objetivoInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objetivoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="objetivo.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${objetivoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objetivoInstance?.proveedor}">
				<li class="fieldcontain">
					<span id="proveedor-label" class="property-label"><g:message code="objetivo.proveedor.label" default="Proveedor" /></span>
					
						<span class="property-value" aria-labelledby="proveedor-label"><g:link controller="proveedor" action="show" id="${objetivoInstance?.proveedor?.id}">${objetivoInstance?.proveedor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${objetivoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="objetivo.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${objetivoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:objetivoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${objetivoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
