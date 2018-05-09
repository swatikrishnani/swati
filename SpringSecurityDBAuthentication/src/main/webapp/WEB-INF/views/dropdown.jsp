<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
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
   try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/checklist?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from role where Role_Description LIKE 'ROLE_TESTER_%'") ;
%>

<center>
<form method="post">
    <h2> Select Role</h2>
        <select id="s1" NAME="section" onChange="SelectRedirect();">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
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