<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><tiles:getAsString name="title" /></title>
</head>

<link rel="stylesheet" href="/haptogether/resources/css/layout/layout.css" />

<body>

    <div class="main_container">
    
		<tiles:insertAttribute name="header" />
		
		<div class="main_contents">
	    	<tiles:insertAttribute name="content" />
	    </div>
	    
	    <tiles:insertAttribute name="nav" />
    
    </div>
</body>

</html>