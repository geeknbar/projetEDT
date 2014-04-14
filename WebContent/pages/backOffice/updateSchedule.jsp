<?xml version="1.0" encoding="iso-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="./css/pageCss/css/mainstyle.css" type="text/css" />
		<title><s:text name="title.new.schedule"/></title>
		<link rel="stylesheet" href="/ProjetEDT/css/smoothness/jquery-ui-1.10.4.custom.css"/>
		<script type='text/javascript' src="/ProjetEDT/javascript/jquery/jquery-1.10.2.js"></script>
		<script type='text/javascript' src="/ProjetEDT/javascript/jquery/jquery-ui-1.10.4.custom.js"></script>
	</head>
	<body>
		<s:hidden name="scheduleBean.id" value="%{scheduleBean.id}"/>
		<div id="wrap">
			<%@ include file="../other/applicationName.jsp" %>
			<%@ include file="../other/menuAdmin.jsp" %>
			<div id="content-top"></div>
			<div id="content-middle">
				<h1><s:text name="title.new.schedule"/><s:property value="scheduleBean.name"/></h1>
				<s:form action="UpdateSchedule" method="post">
					<table>
						<tr><td></td></tr>
						<tr>
							<td><s:text name="label.name"/></td>
							<td><s:textfield name="scheduleBean.name" size="20" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.name"/></td>
						</tr>
						<tr>
							<td><s:text name="label.dayStart"/></td>
							<td><s:textfield id="heure_debut" name="scheduleBean.dayStart" key="label.dayStart" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.dayStart"/></td>
						</tr>
						<tr>
							<td><s:text name="label.dayEnd"/></td>
							<td><s:textfield id="heure_fin" name="scheduleBean.dayEnd" key="label.dayEnd" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.dayEnd"/></td>
						</tr>
						<tr>
							<td><s:text name="label.comment"/></td>
							<td><s:textfield name="scheduleBean.comment" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.comment"/></td>
						</tr>
						<tr>
							<td><s:text name="label.group"/></td>				
							<td><s:select name="scheduleBean.nameGroup" list="arrayGroupName" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.group"/></td>
						</tr>
						<tr>
							<td><s:text name="label.classroom"/></td>		
							<td><s:select name="scheduleBean.nameClassroom" list="arrayClassroomName" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.classroom"/></td>
						</tr>
						<tr>
							<td><s:text name="label.userTeacher"/></td>
							<td><s:select name="scheduleBean.nameUserTeacher" list="arrayUserTeacherName" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.userTeacher"/></td>
						</tr>
						<tr>
							<td><s:text name="label.subject"/></td>
							<td><s:select name="scheduleBean.nameSubject" list="arraySubjectName" /></td>
							<td class="white"><s:fielderror theme="simple" fieldName="error.userTeacher"/></td>
						</tr>
					</table>
					<s:submit key="label.valide" />
				</s:form>
				<div class="clear"></div>
			</div>
			<div id="content-bottom"></div>
		</div>
	<script>
	 $(function() {
		$( "#heure_debut" ).datetimepicker({
			dateFormat: "yy-mm-dd",
			timeFormat:  "HH:mm:ss"
		});
		$( "#heure_fin" ).datetimepicker({
			dateFormat: "yy-mm-dd",
			timeFormat:  "HH:mm:ss"
		});
	 });
	</script>
	</body>
</html>