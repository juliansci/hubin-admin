
<%@ page import="hubinadmin.Entidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entidad.label', default: 'Entidad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entidad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entidad">
			
				<g:if test="${entidadInstance?.cuit}">
				<li class="fieldcontain">
					<span id="cuit-label" class="property-label"><g:message code="entidad.cuit.label" default="Cuit" /></span>
					
						<span class="property-value" aria-labelledby="cuit-label"><g:fieldValue bean="${entidadInstance}" field="cuit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="entidad.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${entidadInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="entidad.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${entidadInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="entidad.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${entidadInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="entidad.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${entidadInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.areas}">
				<li class="fieldcontain">
					<span id="areas-label" class="property-label"><g:message code="entidad.areas.label" default="Areas" /></span>
					
						<g:each in="${entidadInstance.areas}" var="a">
						<span class="property-value" aria-labelledby="areas-label"><g:link controller="area" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${entidadInstance?.activa}">
				<li class="fieldcontain">
					<span id="activa-label" class="property-label"><g:message code="entidad.activa.label" default="Activa" /></span>
					
						<span class="property-value" aria-labelledby="activa-label"><g:formatBoolean boolean="${entidadInstance?.activa}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:entidadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${entidadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
