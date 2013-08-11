<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title>Document</title>
	<r:require modules="bs"/>
</head>
<body>
	<h3><g:message code="family.create.nickname" args="${[person]}"/></h3>

	<ul>
		<g:each in="${person.nicknames}" var="nickname">
			<li>${nickname}</li>
		</g:each>
	</ul>

	<g:form>
		<div class="form-group">
			<label for="nickname"><g:message code="family.nickname"/></label>
			<g:textField name="nickname" class="form-control" autofocus="true"/>
		</div>

		<g:submitButton name="add" value="${g.message(code:'family.add.nickname')}" class="btn btn-primary"/>
		<g:submitButton name="end" value="${g.message(code:'family.done')}" class="btn btn-primary"/>
	</g:form>
</body>
</html>