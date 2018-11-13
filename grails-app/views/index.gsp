<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="Login" action="logout">Cerrar sesión</g:link></li>
			</ul>
		</div>	
		<div id="page-body" role="main">
			<h1>Bienvenido a Hubin Admin</h1>
			<p>A continuación se listan los controles disponibles para el correcto mantenimiento de la plataforma Hubin.</p>
			<div id="controller-list" role="navigation">
				<h2>Controles disponibles:</h2>
				<ul>
					<li><g:link controller="Entidad" action="index">ABM Entidades educativas</g:link></li>
					<li><g:link controller="Materia" action="index">ABM Materias</g:link></li>
					<li><g:link controller="Idioma" action="index">ABM Idiomas</g:link></li>
					<li><g:link controller="Nivel" action="index">ABM Niveles</g:link></li>
<%--					<li><g:link controller="Proveedor" action="index">ABM Proveedores</g:link></li>--%>
<%--					<li><g:link controller="Objetivo" action="index">ABM Objetivos</g:link></li>--%>
<%--					<li><g:link controller="Publicidad" action="index">ABM Publicidades</g:link></li>--%>
					<li><g:link controller="File" action="index">ABM Archivos</g:link></li>
					<li><g:link controller="Feedback" action="index">ABM Feedback</g:link></li>
					<li><g:link controller="Denuncia" action="index">ABM Denuncia</g:link></li>
				</ul>
			</div>
		</div>
	</body>
</html>
