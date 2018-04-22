
<%@ page import="hubinadmin.Publicidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicidad.label', default: 'Publicidad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publicidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publicidad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publicidad">
			
				<g:if test="${publicidadInstance?.prioridad}">
				<li class="fieldcontain">
					<span id="prioridad-label" class="property-label"><g:message code="publicidad.prioridad.label" default="Prioridad" /></span>
					
						<span class="property-value" aria-labelledby="prioridad-label"><g:fieldValue bean="${publicidadInstance}" field="prioridad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicidadInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="publicidad.data.label" default="Data" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicidadInstance?.fechaAlta}">
				<li class="fieldcontain">
					<span id="fechaAlta-label" class="property-label"><g:message code="publicidad.fechaAlta.label" default="Fecha Alta" /></span>
					
						<span class="property-value" aria-labelledby="fechaAlta-label"><g:formatDate date="${publicidadInstance?.fechaAlta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicidadInstance?.proveedor}">
				<li class="fieldcontain">
					<span id="proveedor-label" class="property-label"><g:message code="publicidad.proveedor.label" default="Proveedor" /></span>
					
						<span class="property-value" aria-labelledby="proveedor-label"><g:link controller="proveedor" action="show" id="${publicidadInstance?.proveedor?.id}">${publicidadInstance?.proveedor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicidadInstance?.activa}">
				<li class="fieldcontain">
					<span id="activa-label" class="property-label"><g:message code="publicidad.activa.label" default="Activa" /></span>
					
						<span class="property-value" aria-labelledby="activa-label"><g:formatBoolean boolean="${publicidadInstance?.activa}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:publicidadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${publicidadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
