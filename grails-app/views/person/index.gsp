<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title>Document</title>
	<r:require modules="bs, bsg"/>
</head>
<body>
	<h1>Family</h1>
	<div class="row">
		<div class="col-lg-12">
			<g:link event="createPerson" class="pull-right">Create family member</g:link>
		</div>
	</div>
	<ul>
		<g:each in="${people}" var="person">
			<li>
				${person.name}
				<g:link action="delete" id="${person.id}"><span class="glyphicon glyphicon-trash"></span></g:link>
				<ul>
					<g:each in="${person.nicknames}" var="nickname">
						<li>${nickname}</li>
					</g:each>
				</ul>
			</li>
		</g:each>
	</ul>
</body>
</html>