
<%@ page import="bzu.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="no" title="${message(code: 'person.no.label', default: 'No')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'person.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'person.gender.label', default: 'Gender')}" />
						
						<g:sortableColumn property="category" title="${message(code: 'person.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="officePhone" title="${message(code: 'person.officePhone.label', default: 'Office Phone')}" />
					
						<g:sortableColumn property="cellPhone" title="${message(code: 'person.cellPhone.label', default: 'Cell Phone')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'person.email.label', default: 'Email')}" />

						<g:sortableColumn property="qq" title="${message(code: 'person.qq.label', default: 'QQ')}" />
						
						<g:sortableColumn property="weixin" title="${message(code: 'person.weixin.label', default: 'WeChat')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "no")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "name")}</td>
					
						<td><g:message code="person.gender.${personInstance.gender}"/></td>
						
						<td><g:message code="person.category.${personInstance.category}"/></td>
					
						<td>${fieldValue(bean: personInstance, field: "officePhone")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "cellPhone")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "email")}</td>
						
						<td>${fieldValue(bean: personInstance, field: "qq")}</td>
						
						<td>${fieldValue(bean: personInstance, field: "weixin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceTotal}" />
			</div>
		</div>
	</body>
</html>