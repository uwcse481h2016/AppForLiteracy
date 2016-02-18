<html>
	<head>
		<meta name="layout" content="${layoutUi}"/>
		<s2ui:title messageCode='default.create.label' entityNameMessageCode='researcher.label' entityNameDefault='Researcher'/>
	</head>
	<body>
		<h3><g:message code='default.create.label' args='[entityName]'/></h3>
		<s2ui:form type='save' beanName='researcher' focus='researchername'>
			<s2ui:tabs elementId='tabs' height='375' data='${tabData}'>
				<s2ui:tab name='researcherinfo' height='280'>
					<table>
					<tbody>
						<s2ui:textFieldRow name='researchername' labelCodeDefault='Researchername'/>
						<s2ui:passwordFieldRow name='password' labelCodeDefault='Password'/>
						<s2ui:checkboxRow name='enabled' labelCodeDefault='Enabled'/>
						<s2ui:checkboxRow name='accountExpired' labelCodeDefault='Account Expired'/>
						<s2ui:checkboxRow name='accountLocked' labelCodeDefault='Account Locked'/>
						<s2ui:checkboxRow name='passwordExpired' labelCodeDefault='Password Expired'/>
					</tbody>
					</table>
				</s2ui:tab>
				<s2ui:tab name='roles' height='280'>
					<g:each var='role' in='${authorityList}'>
					<div>
						<g:set var='authority' value='${uiPropertiesStrategy.getProperty(role, 'authority')}'/>
						<g:checkBox name='${authority}'/>
						<g:link controller='role' action='edit' id='${role.id}'>${authority}</g:link>
					</div>
					</g:each>
				</s2ui:tab>
			</s2ui:tabs>
			<div style='float:left; margin-top: 10px;'>
				<s2ui:submitButton/>
			</div>
		</s2ui:form>
	</body>
</html>
