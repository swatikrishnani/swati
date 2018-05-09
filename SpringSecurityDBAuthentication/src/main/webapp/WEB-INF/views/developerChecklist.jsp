<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<title>e-Checklist</title>
<head>
<link rel="icon" href="favicon.png" type="image/png" sizes="16x16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
   <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
   <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
     <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
      <script src="<c:url value="/resources/js/events.js" />"></script>
  
</head>
<body>
<form method="post" name="form">
<div class="container">

<div class="row">
  <div class="col-md-4 header">
    <b>Employee ID :</b>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
	<a>${pageContext.request.userPrincipal.name}</a>
								</c:if>
  </div>
 <div class="col-md-1 header">
                                                                <label for="sprintNo">Sprint:</label>                                                 </div>
                                                                <div class="col-md-4 header">
                                                                <div class="col-xs-4">
                <input type="text" class="form-control" name="sprint" id="sprintNo"></div></div>

  <div class="col-md-4 header">
    <b>Date :</b>
    <c:out value="<%= new java.util.Date() %>"></c:out>
  </div>
</div>
<br />
<div class="row">
 <div class="col-md-4 header">
    <b>Start Date :</b>
  </div>
<div class="col-md-4 header">
    <b>End Date :</b>
  </div>
 
</div>
</div>
<br />
<br />
<br />


<div class="container">
<h1 align="center" class="header-Heading">CheckList-Developer</h1>
 <div class="panel-group" id="checklist">
    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#preSprint">
        <h3 class="panel-title panel-Heading">
          <b>Pre Sprint</b>
        </h3>
      </div>
      <div id="preSprint" class="panel-collapse collapse">
      <body style='margin: 10px;' id="a">
  <div class='container'>
    <div class='row span12'>
    	
        &nbsp <input type='checkbox' name="presprint" value="Functional grooming is completed" id='one'> <label for='one'>Functional grooming is completed</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Allocation of work during sprint planning is completed" id='two'> <label for='two'>Allocation of work during sprint planning is completed</label><br />
		&nbsp <input type='checkbox' name="presprint" value="Update Technical approach in JIRA and mark the JIRA in-Progress" id='three'> <label for='three'>Update Technical approach in JIRA and mark the JIRA in-Progress</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Test Case scenario walkthrough with FAT testers is completed" id='four'> <label for='four'>Test Case scenario walkthrough with FAT testers is completed</label><br />
		 &nbsp <input type='checkbox' name="presprint" value="Plan for interim release is created" id='five'> <label for='five'>Plan for interim release is created</label><br />
        </div>
   		</div>
   		&nbsp <button type="button"    class="btn btn-info" data-toggle="modal" data-target="#myModal4">Clear</button>
<div id="myModal4" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Alert!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Are you sure, you want to clear the data?</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button"  onclick="myfunc()"  class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>

   		
   		
   		
   		
   		
   		
   		
   		
   		
   		
   		 &nbsp <button type="submit" value="Presprint" name="pre" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal" onclick="javascript: form.action='presprint';">Save</button>
 <div id="myModal" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Success!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Your data has been successfully saved..!!!</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>
		<br />
</body>
</div>
    </div>
	
	
    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#duringSprint">
        <h3 class="panel-title panel-Heading">
          <b>During Sprint</b>
        </h3>
      </div>
      <div id="duringSprint" class="panel-collapse collapse">
       <body style='margin: 10px;' id="b">
       
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' name="duringsprint" value="Unit testing & Jnuit-70% and above Jnuit Coverage" id='one'> <label for='one'>Unit testing & Jnuit-70% and above Jnuit Coverage</label><br />
	    &nbsp <input type='checkbox' name="duringsprint" value="JIRA is updated along with each step" id='two'> <label for='two'>JIRA is updated along with each step</label><br />
		&nbsp <input type='checkbox' name="duringsprint" value="Interim Release at the end of First week is successful" id='three'> <label for='three'>Interim Release at the end of First week is successful</label><br />
	   
        </div>
   		</div>
   			 &nbsp <button type="button"    class="btn btn-info" data-toggle="modal" data-target="#myModal5">Clear</button>
<div id="myModal5" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Alert!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Are you sure, you want to clear the data?</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button"  onclick="myfunc()"  class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>

   			 
   			 
   			 
   			 &nbsp <button type="submit" value="Duringsprint" name="during" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal1" onclick="javascript: form.action='duringsprint';">Save</button>
 <div id="myModal1" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Success!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Your data has been successfully saved..!!!</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>

	<br />
</body>
    </div>
    </div> 

    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#postSprint">
        <h3 class="panel-title panel-Heading">
          <b>Post Sprint</b>
        </h3>
      </div>
      <div id="postSprint" class="panel-collapse collapse">
       <body style='margin: 10px;' id="c">
      
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' name="postsprint" value="Lessons learnt discussed during sprint review. Retrospective preparation" id='one'> <label for='one'>Lessons learnt discussed during sprint review. Retrospective preparation</label><br />
	  
	  
        </div>
   		</div>
  
		&nbsp <button type="button"     class="btn btn-info" data-toggle="modal" data-target="#myModal6">Clear</button>
<div id="myModal6" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Alert!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Are you sure, you want to clear the data?</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button"  onclick="myfunc()" class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>

		
		
		&nbsp <button type="submit" value="Postsprint" name="post" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal2" onclick="javascript: form.action='presprint';">Save</button>
 <div id="myModal2" class="modal fade" role="dialog">
             <div class="modal-dialog">
                        <div class="modal-content">
                                   <div class="modal-header">
                                         <button type="button" class="close" data-dismiss="modal">×</button>
                                         <h4 class="modal-title">Success!!</h4>
                                   </div>
                                   <div class="modal-body">
                                         <b>Your data has been successfully saved..!!!</b>
                                   </div>
                                   <div class="modal-footer">
                                         <button type="button" class="btn btn-info btn-default" data-dismiss="modal">OK</button>
                                   </div>
                        </div>

            </div>
     </div>

		<br />
		
		
</body>
    </div>
	</div>
 
</div>
</form>


<div class="container row">
    <div class="Copyright-Txt  footer ">
   Copyright 2014. InterGlobe Technologies. 
  </div>

 <div class="Footer-Strip">
                    &nbsp;</div>
</div> 

</div>

</div>
</html>
