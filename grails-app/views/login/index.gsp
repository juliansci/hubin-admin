<html>
    <head>
    	<meta name="layout" content="main">
    </head>
    <body>
        <g:form controller="Login" action="authenticate" align="center">
        <table>
        <tr>
            <td class="tabla">Usuario</td>
            <td class="tabla"><g:textField name="login" /></td>
        </tr>
        <tr>
            <td class="tabla">Contraseña</td>
            <td class="tabla"><g:passwordField name="password" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="tabla"><g:submitButton name="submit" value="Ingresar" /></td>
        </tr>
        </table></g:form>
        <g:if test="${flash.message}">
             <p class="error">${flash.message}</p>
        </g:if>
    </body>
</html>