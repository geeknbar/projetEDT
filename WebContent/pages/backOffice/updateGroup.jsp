<?xml version="1.0" encoding="iso-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="./css/pageCss/css/mainstyle.css" type="text/css" />
		<title><s:text name="title.group"/></title>
	</head>
	<body>
		<div id="wrap">
			<%@ include file="../other/applicationName.jsp" %>
			<%@ include file="../other/menuAdmin.jsp" %>
			<div id="content-top"></div>
			<div id="content-middle">
				<h1><s:text name="title.group"/></h1>
				<s:form action="UpdateGroup" method="post">
					<s:hidden name="id" value="%{groupBean.id}"/>
					<s:hidden name="groupBean.id" value="%{groupBean.id}"/>
					<s:hidden name="groupBean.oldName" value="%{groupBean.name}"/>
					<table>
						<tr><td> </td></tr>
						<tr>
							<td><s:text name="label.name"/></td>
							<td><s:textfield name="groupBean.name"/></td>
							<td class="error"><s:fielderror fieldName="error.name"/></td>
						</tr>
					</table>
					<br/>
					<s:submit key="label.valide"  cssClass="user_button"/>
				</s:form>
				<div class="clear"></div>
			</div>
			<div id="content-bottom"></div>
		</div>
	</body>
</html>