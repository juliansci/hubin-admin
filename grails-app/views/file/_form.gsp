<%@ page import="hubinadmin.File" %>



<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'extension', 'error')} required">
	<label for="extension">
		<g:message code="file.extension.label" default="Extension" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="extension" maxlength="5" required="" value="${fileInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="file.data.label" default="Data" />
		
	</label>
	<input type="file" id="data" name="data" />

</div>

