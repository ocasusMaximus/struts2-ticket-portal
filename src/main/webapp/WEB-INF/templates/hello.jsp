<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JSP - Hello World Tutorial - Programmer Gate</title>
</head>
<body>
<p>Hello:<%= "Hello World!" %></p>
<h2><s:property value="message" /></h2>
<%--<p>Hello:<%=  %></p>--%>
<s:property value="user.name"/>

</body>
</html>