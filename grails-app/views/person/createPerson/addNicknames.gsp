<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title>Document</title>
	<r:require module="bs"/>
</head>
<body>
	<h3>Create kincknames for ${person}</h3>

	<ul>
		<g:each in="${person.nicknames}" var="nickname">
			<li>${nickname}</li>
		</g:each>
	</ul>

	<g:form>
		<div class="form-group">
			<label for="nickname">Nickname</label>
			<g:textField name="nickname" class="form-control" autofocus="true"/>
		</div>

		<g:submitButton name="add" value="Add nickname" class="btn btn-primary"/>
		<g:submitButton name="end" value="Terminar" class="btn btn-primary"/>
	</g:form>
</body>
</html>