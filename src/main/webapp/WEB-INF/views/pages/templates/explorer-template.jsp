<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tilesx"
	uri="http://tiles.apache.org/tags-tiles-extras"%>

<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  ng-app="app">
<head>
	<title><tiles:insertAttribute name="title" /></title>
	
	<meta charset="utf-8">
	<%--这里是一些头文件 --%>
	<tilesx:useAttribute id="headers" name="headers" classname="java.util.List" />
	
	<c:forEach var="head" items="${headers}">
		<tiles:insertAttribute value="${head}" flush="true" />
	</c:forEach>
</head>

<%--页面所有的主体内容,需要包含body标签 --%>
<tiles:insertAttribute name="content" />

</html>
