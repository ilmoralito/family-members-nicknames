<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title>Create person</title>
	<r:require module="bs"/>
</head>
<body>
	<h3><g:message code="family.relative"/></h3>

	<g:hasErrors bean="${person}">
		<g:renderErrors bean="${person}"/>
	</g:hasErrors>

	<g:form>
		<div class="form-group">
			<label for="name"><g:message code="family.member.name"/></label>
			<g:textField name="name" value="${flow?.person?.name}" class="form-control" autofocus="true"/>
		</div>

		<g:submitButton name="createPerson" value="${g.message(code:'family.create.member')}" class="btn btn-primary"/>
		<g:link event="end" class="btn btn-primary"><g:message code="family.out"/></g:link>
	</g:form>
</body>
</html>