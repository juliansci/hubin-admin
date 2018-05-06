
<%@ page import="hubinadmin.Materia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'materia.label', default: 'Materia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-materia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-materia" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list materia">
			
				<g:if test="${materiaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="materia.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${materiaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiaInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="materia.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${materiaInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiaInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="materia.foto.label" default="Foto" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiaInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="materia.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:link controller="area" action="show" id="${materiaInstance?.area?.id}">${materiaInstance?.area?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${materiaInstance?.destacada}">
				<li class="fieldcontain">
					<span id="destacada-label" class="property-label"><g:message code="materia.destacada.label" default="Destacada" /></span>
					
						<span class="property-value" aria-labelledby="destacada-label"><g:formatBoolean boolean="${materiaInstance?.destacada}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:materiaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${materiaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
