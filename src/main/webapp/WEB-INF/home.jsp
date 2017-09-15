<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
	
</style>
</head>
<body>
	<table>
		<tr>
			<td>Name</td>
			<td>Creator</td>
			<td>Version</td>
			<td>Action</td>
		<tr>
		<c:forEach items="${ languages }" var="language" varStatus="loop">
			<tr>
			<td> <a href="/find/${ language.id }"><c:out value="${ language.name }"/></a> </td>
			<td><c:out value="${ language.creator }"/> </td>
			<td><c:out value="${ language.version }"/> </td>
			<td><a href="/delete/${ language.id }" >delete</a> <a href="/edit/${ language.id }" >edit</a></td>
			</tr>
		</c:forEach> 
	</table>
	
	<form:form method="POST" action="/" modelAttribute="new">
     <form:label path="name">Name
     	<form:hidden path="id"/>
     	<form:errors path="name"/>
     	<form:input path="name"/>
     </form:label><br>
     
     <form:label path="creator">Creator
     	<form:errors path="creator"/>
     	<form:input path="creator"/>
     </form:label><br>
     
     <form:label path="version">Version
     	<form:errors path="version"/>
     	<form:input path="version"/>
     </form:label><br>
     
      <input type="submit" name="" value="Submit">
    </form:form>
</body>
</html>