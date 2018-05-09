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
<div class="container">

<div class="row">
<div class="col-md-4 header">
    <b>Employee ID:</b>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
	<a>${pageContext.request.userPrincipal.name}</a>
								</c:if>
 
  </div>
 <div class="col-md-4 header">
    <b>Sprint :</b>
  </div>
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
<h1 align="center" class="header-Heading">CheckList-Business Analyst</h1>
 <div class="panel-group" id="checklist">
    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#preSprint">
        <h3 class="panel-title">
          <b>Pre Sprint</b>
        </h3>
      </div>
      <div id="preSprint" class="panel-collapse collapse">
      <body style='margin: 10px;'>
	  <form method="post" id="a"  action="presprint"> 
  <div class='container'>
    <div class='row span12'>
    	
       &nbsp <input type='checkbox' name="presprint" value="Requirement gathering is completed" id='one'> <label for='one'>Requirement gathering is completed</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Requirement analysis + Brainstorming is completed" id='two'> <label for='two'>Requirement analysis + Brainstorming is completed</label><br />
		&nbsp <input type='checkbox' name="presprint" value="Requirement verification is completed" id='three'> <label for='three'>Requirement verification is completed</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Following JIRA documentation is completed" id='four'> <label for='four'>Following JIRA documentation is completed</label><br />
		 &nbsp <input type='checkbox' name="presprint" value="Acceptance Criteria" id='five'> <label for='five'>Scope</label>
		 &nbsp <input type='checkbox' name="presprint" value="Acceptance Criteria" id='six'> <label for='six'>Acceptance Criteria</label><br />
		 &nbsp <input type='checkbox' name="presprint" value="Limitations" id='seven'> <label for='seven'>Limitations</label>
		 &nbsp <input type='checkbox' name="presprint" value="Assumptions" id='eight'> <label for='eight'>Assumptions</label><br />
		 &nbsp <input type='checkbox' name="presprint" value="Impact analysis" id='nine'> <label for='nine'>Impact analysis</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Requirement approval for each user story from Lead BA's" id='ten'> <label for='ten'>Requirement approval for each user story from Lead BA's</label><br />
		&nbsp <input type='checkbox' name="presprint" value="Planned FP calculations are done" id='eleven'> <label for='eleven'>Planned FP calculations are done</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="Sprint backlog grooming is completed" id='twelve'> <label for='twelve'>Sprint backlog grooming is completed</label><br />
		&nbsp <input type='checkbox' name="presprint" value="Attend Scrum and Integration Testers grooming with Leads BA's" id='thirteen'> <label for='thirteen'>Attend Scrum and Integration Testers grooming with Leads BA's</label><br />
		&nbsp <input type='checkbox' name="presprint" value="FPs are estimated" id='fourteen'> <label for='fourteen'>FPs are estimated</label><br />
		&nbsp <input type='checkbox' name="presprint" value="Verification of FP's bt BE team is completed" id='fifteen'> <label for='fifteen'>Verification of FP's bt BE team is completed</label><br />
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

	
	
	
	
	
	
	
	&nbsp <button type="submit" value="Presprint" name="pre" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal">Save</button>
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
      

		</form><br />
</body>
</div>
    </div>
	
	
    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#ThePositiveIndicators">
        <h3 class="panel-title">
          <b>During Sprint</b>
        </h3>
      </div>
      <div id="ThePositiveIndicators" class="panel-collapse collapse">
       <body style='margin: 10px;'>
	   <form method="post" id="b" action="duringsprint"> 
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' name="duringsprint" value="Higher FAT to Integration defect ratio & Higher Integration to SQUACE defect ratio" id='one'> <label for='one'>Higher FAT to Integration defect ratio & Higher Integration to SQUACE defect ratio</label><br />
	    &nbsp <input type='checkbox' name="duringsprint" value="No Delay in delivery" id='two'> <label for='two'>No Delay in delivery</label><br />
		&nbsp <input type='checkbox' name="duringsprint" value="Successful project demo" id='three'> <label for='three'>Successful project demo</label><br />
	  
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

		 
		 
		 &nbsp <button type="submit" value="Duringsprint" name="during" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal1">Save</button>
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
      

		</form><br />
</body>
    </div>
    </div> 

    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#postSprint">
        <h3 class="panel-title">
          <b>Post Sprint</b>
        </h3>
      </div>
      <div id="postSprint" class="panel-collapse collapse">
       <body style='margin: 10px;'>
	   <form method="post" id="c" action="postsprint"> 
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' name="postsprint" value="Test Case Review is completed" id='one'> <label for='one'>Test Case Review is completed</label><br />
	    &nbsp <input type='checkbox' name="postsprint" value="Improved User story format" id='two'> <label for='two'>Improved User story format</label><br />
		&nbsp <input type='checkbox' name="postsprint" value="DOD verification is completed before delivery" id='three'> <label for='three'>DOD verification is completed before delivery</label><br />
	    &nbsp <input type='checkbox' name="postsprint" value="Demo to Product Owner is completed successfully" id='four'> <label for='four'>Demo to Product Owner is completed successfully</label><br />
		&nbsp <input type='checkbox' name="postsprint" value="Following Release Documentation is completed" id='five'> <label for='five'>Following Release Documentation is completed</label><br />
		 &nbsp <input type='checkbox' name="postsprint" value="Release notes from BA" id='six'> <label for='six'>Release notes from BA</label>
		 &nbsp <input type='checkbox' name="postsprint" value="RPM from developers" id='seven'> <label for='seven'>RPM from developers</label><br />
		 &nbsp <input type='checkbox' name="postsprint" value="Test exit from QA" id='eight'> <label for='eight'>Test exit from QA</label>
		 &nbsp <input type='checkbox' name="postsprint" value="Configuration Guide Update" id='nine'> <label for='nine'>Configuration Guide Update</label><br />
		 &nbsp <input type='checkbox' name="postsprint" value="Project and Product documentation as per Story" id='ten'> <label for='ten'>Project and Product documentation as per Story</label><br />
	    &nbsp <input type='checkbox' name="postsprint" value="Installation Instruction from deployment team" id='eleven'> <label for='eleven'>Installation Instruction from deployment team</label><br />
		&nbsp <input type='checkbox' name="postsprint" value="Lesson learnt" id='twelve'> <label for='twelve'>Lesson learnt</label><br />
	   
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

		
		
		
		
		 &nbsp <button type="submit" value="postsprint" name="post" class="btn btn-info btn-default" data-toggle="modal" data-target="#myModal2">Save</button>
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
      

		</form><br />
		
		
</body>
    </div>
	</div>
 
</div>

<div class="container row">
    <div class="Copyright-Txt  footer ">
   Copyright 2014. InterGlobe Technologies. 
  </div>

 <div class="Footer-Strip">
                    &nbsp;</div>
</div> 

</div>








</body>
</html>