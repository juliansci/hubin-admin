
<%@ page import="hubinadmin.Objetivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'objetivo.label', default: 'Objetivo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-objetivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-objetivo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'objetivo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'objetivo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="orden" title="${message(code: 'objetivo.orden.label', default: 'Orden')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'objetivo.tipo.label', default: 'Tipo')}" />
					
						<th><g:message code="objetivo.proveedor.label" default="Proveedor" /></th>
					
						<g:sortableColumn property="activo" title="${message(code: 'objetivo.activo.label', default: 'Activo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${objetivoInstanceList}" status="i" var="objetivoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${objetivoInstance.id}">${fieldValue(bean: objetivoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: objetivoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: objetivoInstance, field: "orden")}</td>
					
						<td>${fieldValue(bean: objetivoInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: objetivoInstance, field: "proveedor")}</td>
					
						<td><g:formatBoolean boolean="${objetivoInstance.activo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${objetivoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
