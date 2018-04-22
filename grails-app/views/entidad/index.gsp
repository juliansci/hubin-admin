
<%@ page import="hubinadmin.Entidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entidad.label', default: 'Entidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-entidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-entidad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cuit" title="${message(code: 'entidad.cuit.label', default: 'Cuit')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'entidad.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'entidad.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'entidad.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'entidad.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="activa" title="${message(code: 'entidad.activa.label', default: 'Activa')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${entidadInstanceList}" status="i" var="entidadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${entidadInstance.id}">${fieldValue(bean: entidadInstance, field: "cuit")}</g:link></td>
					
						<td>${fieldValue(bean: entidadInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: entidadInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: entidadInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: entidadInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${entidadInstance.activa}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${entidadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
