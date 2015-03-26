<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<theme:layout name="sidebar"/>
	<title>登录账号</title>
</head>
<body>
<theme:zone name="secondary-navigation">
</theme:zone>

<theme:zone name="sidebar">
	<g:render template="sidenav"/>
</theme:zone>

<theme:zone name="body">

<legend>修改密码</legend>

<ui:displayMessage/>

<ui:form>
	<ui:fieldGroup>
		<ui:field label="当前密码">
			<ui:fieldInput>
				<input type="password" name="oldPassword" required/>
			</ui:fieldInput>
		</ui:field>
		<ui:field label="新密码">
			<ui:fieldInput>
				<input type="password" name="newPassword" required/>
			</ui:fieldInput>
		</ui:field>
		<ui:field label="确认密码">
			<ui:fieldInput>
				<input type="password" name="repeatPassword" required/>
			</ui:fieldInput>
		</ui:field>
	</ui:fieldGroup>
	<ui:actions>
		<ui:button kind="submit" action="changePassword" mode="primary" class="span3" text="修改密码"/>
	</ui:actions>
</ui:form>

<legend>操作权限</legend>

<ui:form>
	<g:each in="${allRoles}">
		<ui:field label="${it}.label">
		<g:if test="${it in roles}">
			<ui:fieldInput>
				<i class="fa fa-2x fa-toggle-on text-success" title="已具备此权限"></i>
			</ui:fieldInput>
			<ui:fieldHint>
				<span class="offset1 text-success" title=""><g:message code="${it}.text"/></span>
			</ui:fieldHint>
		</g:if>
		<g:else>
			<ui:fieldInput>
				<i class="fa fa-2x fa-toggle-off muted" title="尚无此权限"></i>
			</ui:fieldInput>
			<ui:fieldHint>
				<span class="offset1 muted" title=""><g:message code="${it}.text"/></span>
			</ui:fieldHint>
		</g:else>
		</ui:field>
	</g:each>
	<bzu:ifStaff>
		<div class="alert alert-block alert-info">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<h4>注意：</h4>
			<ul>
				<li>要获得【项目管理】权限，请联系本单位管理员。</li>
				<li>要获得【系院管理】、【竞赛督导】以及【系统管理】权限，请联系统管理员。</li>
			</ul>
		</div>
	</bzu:ifStaff>
</ui:form>

</theme:zone>
</body>
</html>
