
<%@ page import="hubinadmin.Publicidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicidad.label', default: 'Publicidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-publicidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publicidad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="prioridad" title="${message(code: 'publicidad.prioridad.label', default: 'Prioridad')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'publicidad.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="fechaAlta" title="${message(code: 'publicidad.fechaAlta.label', default: 'Fecha Alta')}" />
					
						<th><g:message code="publicidad.proveedor.label" default="Proveedor" /></th>
					
						<g:sortableColumn property="activa" title="${message(code: 'publicidad.activa.label', default: 'Activa')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publicidadInstanceList}" status="i" var="publicidadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publicidadInstance.id}">${fieldValue(bean: publicidadInstance, field: "prioridad")}</g:link></td>
					
						<td>${fieldValue(bean: publicidadInstance, field: "data")}</td>
					
						<td><g:formatDate date="${publicidadInstance.fechaAlta}" /></td>
					
						<td>${fieldValue(bean: publicidadInstance, field: "proveedor")}</td>
					
						<td><g:formatBoolean boolean="${publicidadInstance.activa}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${publicidadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
