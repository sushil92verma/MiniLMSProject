<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Homepage</title>
    <style>
        .topnav {
            overflow: hidden;
            background-color: #f3f3f3;;
        }

        .topnav a {
            float: left;
            color: black;
            text-align: center;
            padding: 8px 10px;
            text-decoration: none;
            font-size: 12px;
        }

        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }

        .topnav a:hover, .dropdown:hover .dropbtn {
            background-color: teal;
            color: antiquewhite;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 12px;
            border: none;
            outline: none;
            color: black;
            padding: 8px 10px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;

        }

        .dropdown-content a:hover {
            background-color: #ddd;
            color: #4CAF50;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        li {
            display: inline;
        }
        .split {
            height: 80%;
            width: 50%;
            position: relative;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            padding-top: 20px;
        }

        /* Control the left side */
        .left {
            left: 0;
        }

        /* Control the right side */
        .right {
            right: 0;
        }

        /* If you want the content centered horizontally and vertically */
        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
        .bottom {
            bottom: 0;
        }
        .floatLeft { width: 50%; float: left; }
        .floatRight {width: 50%; float: right; }
        .container { overflow: hidden; }
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            text-align: left;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        #customers tr:nth-child(even){background-color: #f2f2f2;}


        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }

    </style>
<body style="background-color: ivory">

<script type="text/javascript">
    function deleteRecord ()
    {
            if(confirm("delete this record !")){
            return true;}
            else{
            return false;}
       }
</script>

<div class="topnav">
    <li><a href="${pageContext.request.contextPath}/openHomePage">Home</a></li>
    <li><a href="${pageContext.request.contextPath}/openProduct">Product</a></li>
    <li><a href="${pageContext.request.contextPath}/openApplication">Application</a></li>
    <li><a href="${pageContext.request.contextPath}/openReceipt">Receipt</a></li>
    <div class="dropdown">
        <button class="dropbtn">View
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="#">Link 1</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
        </div>
    </div>
</body>
</head>
</html>