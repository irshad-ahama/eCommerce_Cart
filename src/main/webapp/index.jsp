<%@page import="shooping.pkg.connection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Shooping Cart</title>
<%@include file="include/head.jsp" %>
</head>
<body>
<%@include file="include/navbar.jsp" %>
<% out.print(DBConnection.getConnection()); %>

<%@include file="include/footer.jsp" %>
</body>
</html>