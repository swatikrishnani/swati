<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%ResultSet resultset =null;%>
<%ResultSet result =null;%>
<link rel="icon" href="favicon.png" type="image/png" sizes="16x16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
      <script src="<c:url value="/resources/js/events.js" />"></script>
  

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>
<body>
<%
String role;
   try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/checklist?user=root&password=root");

       Statement statement = connection.createStatement() ;%>
       
       <c:forEach var="authority" items="${authList}">
       
       <br>
       <c:if test="${authority=='ROLE_DEVELOPER'}">
       <% 
       resultset =statement.executeQuery("select * from role where Role_Description='ROLE_DEVELOPER' OR Role_Description='ROLE_TESTER_CI';") ;
       %>
       </c:if>
       <c:if test="${authority=='ROLE_SCRUMMASTER'}">
       <% 
		 resultset =statement.executeQuery("select * from role where Role_Description='ROLE_SCRUMMASTER'") ;
       %></c:if>
       <c:if test="${authority=='ROLE_BA'}">
       <% 
   		resultset =statement.executeQuery("select * from role where Role_Description='ROLE_BA'") ;
   	%>
   	</c:if>
   	<c:if test="${authority=='ROLE_TESTER_FAT'}">
       <% 
   		resultset =statement.executeQuery("select * from role where Role_Description='ROLE_TESTER_FAT' OR Role_Description='ROLE_TESTER_INTEGRATION' OR Role_Description='ROLE_TESTER_CI';") ;
   	   	%> 	
       </c:if>
       
       </c:forEach>
	<% 
   		result =statement.executeQuery("select * from sprint") ;
   	   	%> 	
   
<%-- <form method="post">
    <h2> Select Role</h2>
        <select id="s1" NAME="section" ">
        <% 
       
        while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
        <% } %>
        
        </select>
  
   </form> --%>
   <center>
    <form method="post">   
        <select id="s2" NAME="section1" ">
        <% 
       
        while(result.next()){ %>
            <option><%= result.getString(2)%></option>
        <% } %>
        
        </select>
        
        <button type="submit" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal2" onclick="SelectRedirect();">Save</button>
        </form>
        
</center>

<%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>