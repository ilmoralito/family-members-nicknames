<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title>Create person</title>
	<r:require module="bs"/>
</head>
<body>
	<h3>Create person form</h3>

	<g:hasErrors bean="${person}">
		<g:renderErrors bean="${person}"/>
	</g:hasErrors>

	<g:form>
		<div class="form-group">
			<label for="name">Nombre</label>
			<g:textField name="name" value="${flow?.person?.name}" class="form-control" autofocus="true"/>
		</div>

		<g:submitButton name="createPerson" value="Create family member" class="btn btn-primary"/>
		<g:link event="end" class="btn btn-primary">Salir</g:link>
	</g:form>
</body>
</html>