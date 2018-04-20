<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%System.out.println("jsp---------"); %>
<h1>姓名：${stu.stuName }</h1>
<table>
	<c:forEach items="${deptList }" var="sc">
	<tr>
		<td>姓名</td>
		<td>${sc.did }</td>
		<td>性别</td>
		<td>${sc.dname }</td>
	</tr>
	<tr>
		<td colspan="4">
		<table>
		<c:forEach items="${sc.teacherSet }" var="tea">
		<tr>
			<td>${tea.tid }</td>
			<td>${tea.tname }</td>
		</tr>
		</c:forEach>
		</table>
		</td>
	</tr>
	</c:forEach>
</table>
<table>
	<c:forEach items="${stuList }" var="sc">
	<tr>
		<td>姓名</td>
		<td>${sc.stuName }</td>
		<td>性别</td>
		<td>${sc.sex }</td>
	</tr>
	<tr>
		<td colspan="4">
		<table>
		<c:forEach items="${sc.courseSet }" var="course">
		<tr>
			<td>${course.cid }</td>
			<td>${course.courseName }</td>
		</tr>
		</c:forEach>
		</table>
		</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>