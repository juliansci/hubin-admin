
<%@ page import="hubinadmin.Denuncia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'denuncia.label', default: 'Denuncia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-denuncia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-denuncia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="mensaje" title="${message(code: 'denuncia.mensaje.label', default: 'Mensaje')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'denuncia.fecha.label', default: 'Fecha')}" />
					
						<th><g:message code="denuncia.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="denuncia.documento.label" default="Documento" /></th>
					
						<g:sortableColumn property="resuelto" title="${message(code: 'denuncia.resuelto.label', default: 'Resuelto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${denunciaInstanceList}" status="i" var="denunciaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${denunciaInstance.id}">${fieldValue(bean: denunciaInstance, field: "mensaje")}</g:link></td>
					
						<td><g:formatDate date="${denunciaInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "alumno")}</td>
					
						<td>${fieldValue(bean: denunciaInstance, field: "documento")}</td>
					
						<td><g:formatBoolean boolean="${denunciaInstance.resuelto}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${denunciaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
