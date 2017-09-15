<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/edit/${ edit.id }" modelAttribute="edit">
     <form:label path="name">Name
     	<form:errors path="name" />
     	<form:input path="name" value="${ edit.name }"/>
     </form:label><br>
     
     <form:label path="creator">Creator
     	<form:errors path="creator"/>
     	<form:input path="creator" value="${ edit.creator }"/>
     </form:label><br>
     
     <form:label path="version">Version
     	<form:errors path="version"/>
     	<form:input path="version" value="${ edit.version }"/>
     </form:label><br>
     
      <input type="submit" name="" value="Update">
    </form:form>
</body>
</html>