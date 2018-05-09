<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<title>Checklist</title>
<head>
<link rel="icon" href="favicon.png" type="image/png" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
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
		<h1 align="center" class="header-Heading">CheckList-Scrum Master</h1>
		<div class="panel-group" id="checklist">
			<div class="panel panel-default">
				<div class="panel-heading" data-toggle="collapse"
					data-parent="#checklist" href="#preSprint">
					<h3 class="panel-title panel-Heading">
						<b>Pre Sprint</b>
					</h3>
				</div>
				<div id="preSprint" class="panel-collapse collapse">
					<body style='margin: 10px;'>
						<form method="post" id="a" action="presprint">
							<div class='container'>
								<div class='row span12'>

									&nbsp <input type='checkbox' name="presprint"
										value="Sprint day wise execution plan is completed" id='one'>
									<label for='one'>Sprint day wise execution plan is
										completed</label><br /> &nbsp <input type='checkbox' name="presprint"
										value="Resource and capacity planning is completed" id='two'>
									<label for='two'>Resource and capacity planning is
										completed</label><br /> &nbsp <input type='checkbox' name="presprint"
										value="core team communication for committed stories is completed - 2nd day of sprint"
										id='three'> <label for='three'>core team
										communication for committed stories is completed - 2nd day of
										sprint</label><br /> &nbsp <input type='checkbox' name="presprint"
										value="Making sure the availability of environment " id='four'>
									<label for='four'>Making sure the availability of
										environment</label><br />

								</div>
							</div>
							&nbsp
							<button type="button" class="btn btn-info" data-toggle="modal"
								data-target="#myModal4">Clear</button>
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
											<button type="button" onclick="myfunc()"
												class="btn btn-info btn-default" data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>






							&nbsp
							<button type="submit" value="Presprint" name="pre"
								class="btn btn-info btn-default" data-toggle="modal"
								data-target="#myModal">Save</button>
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
											<button type="button" class="btn btn-info btn-default"
												data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>


						</form>
						<br />
					</body>
				</div>
			</div>


			<div class="panel panel-default">
				<div class="panel-heading" data-toggle="collapse"
					data-parent="#checklist" href="#duringSprint">
					<h3 class="panel-title panel-Heading">
						<b>During Sprint</b>
					</h3>
				</div>
				<div id="duringSprint" class="panel-collapse collapse">
					<body style='margin: 10px;'>
						<form method="post" id="b" action="duringsprint">
							<div class='container'>
								<div class='row span12'>
									&nbsp <input type='checkbox' name="duringsprint"
										value="Sprint planning is completed" id='one'> <label
										for='one'>Sprint planning is completed</label><br /> &nbsp <input
										type='checkbox' name="duringsprint"
										value="Ensured interim testing done during ongoing sprint"
										id='two'> <label for='two'>Ensured interim
										testing done during ongoing sprint </label><br /> &nbsp <input
										type='checkbox' name="duringsprint"
										value="Ensured proper unit testing and CI Testing" id='three'>
									<label for='three'>Ensured proper unit testing and CI
										Testing </label><br />

								</div>
							</div>
							&nbsp
							<button type="button" class="btn btn-info" data-toggle="modal"
								data-target="#myModal5">Clear</button>
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
											<button type="button" onclick="myfunc()"
												class="btn btn-info btn-default" data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>






							&nbsp
							<button type="submit" value="Duringsprint" name="during"
								class="btn btn-info btn-default" data-toggle="modal"
								data-target="#myModal1">Save</button>
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
											<button type="button" class="btn btn-info btn-default"
												data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>


						</form>
						<br />
					</body>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" data-toggle="collapse"
					data-parent="#checklist" href="#postSprint">
					<h3 class="panel-title panel-Heading">
						<b>Post Sprint</b>
					</h3>
				</div>
				<div id="postSprint" class="panel-collapse collapse">
					<body style='margin: 10px;'>
						<form method="post" id="c" action="postsprint">
							<div class='container'>
								<div class='row span12'>
									&nbsp <input type='checkbox' name="postsprint"
										value="Released documentation is reviewed" id='one'> <label
										for='one'>Released documentation is reviewed</label><br />
									&nbsp <input type='checkbox' name="postsprint"
										value="Run effective Sprint retorspective and manage continues improvement plan"
										id='two'> <label for='two'>Run effective
										Sprint retorspective and manage continues improvement plan</label><br />
									&nbsp <input type='checkbox' name="postsprint"
										value="Participated in SOS Retrospective" id='three'>
									<label for='three'>Participated in SOS Retrospective </label><br />
									&nbsp <input type='checkbox' name="postsprint"
										value="Sprint review with team members for lessons learned is completed"
										id='four'> <label for='four'>Sprint review
										with team members for lessons learned is completed </label><br />

								</div>
							</div>

							&nbsp &nbsp
							<button type="button" class="btn btn-info" data-toggle="modal"
								data-target="#myModal6">Clear</button>
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
											<button type="button" onclick="myfunc()"
												class="btn btn-info btn-default" data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>



							&nbsp
							<button type="submit" class="btn btn-info btn-default"
								value="Postsprint" name="post" data-toggle="modal"
								data-target="#myModal2">Save</button>
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
											<button type="button" class="btn btn-info btn-default"
												data-dismiss="modal">OK</button>
										</div>
									</div>

								</div>
							</div>


						</form>
						<br />

					</body>
				</div>
			</div>

		</div>


		<div class="container row">
			<div class="Copyright-Txt  footer ">Copyright 2014. InterGlobe
				Technologies.</div>

			<div class="Footer-Strip">&nbsp;</div>
		</div>

	</div>

	</div>
</html>


