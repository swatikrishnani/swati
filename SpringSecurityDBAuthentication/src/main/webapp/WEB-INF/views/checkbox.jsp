<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h1 align="center">CheckList</h1>
  
  <div class="panel-group" id="checklist">
    <div class="panel panel-default">

      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#preSprint">
       
		<h3 class="panel-title">
          <b>Pre Sprint</b>
        </h3>
      </div>
      <div id="preSprint" class="panel-collapse collapse">
      <body style='margin: 10px;'>
      <form method="post" action="multiplecheckbox"> 

  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' name="presprint" value="functional grooming" id='one'> <label for='one'>Functional grooming is completed</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="allocation" id='two'> <label for='two'>Allocation of work during sprint planning is completed</label><br />
		&nbsp <input type='checkbox' name="presprint" value="update technical" id='three'> <label for='three'>Update Technical approach in JIRA and mark the JIRA in-Progress</label><br />
	    &nbsp <input type='checkbox' name="presprint" value="testcase" id='four'> <label for='four'>Test Case scenario walkthrough with FAT testers is completed</label><br />
		 &nbsp <input type='checkbox' name="presprint" value="plan" id='five'> <label for='five'>Plan for interim release is created</label><br />
        </div>
   		</div>
   		<input type="submit" name="pre" value="Presprint">

   		</form>
</body>
</div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" data-toggle="collapse" data-parent="#checklist" href="#duringSprint">
        <h3 class="panel-title">
          <b>During Sprint</b>
        </h3>
      </div>
      <div id="duringSprint" class="panel-collapse collapse">
       <body style='margin: 10px;'>
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' id='one'> <label for='one'>Functional grooming is completed</label><br />
	    &nbsp <input type='checkbox' id='two'> <label for='two'>Allocation of work during sprint planning is completed</label><br />
		&nbsp <input type='checkbox' id='three'> <label for='three'>Update Technical approach in JIRA and mark the JIRA in-Progress</label><br />
	    &nbsp <input type='checkbox' id='four'> <label for='four'>Test Case scenario walkthrough with FAT testers is completed</label><br />
		 &nbsp <input type='checkbox' id='five'> <label for='five'>Plan for interim release is created</label><br />
        </div>
   		</div>
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
  <div class='container'>
    <div class='row span12'>
        &nbsp <input type='checkbox' id='one'> <label for='one'>Functional grooming is completed</label><br />
	    &nbsp <input type='checkbox' id='two'> <label for='two'>Allocation of work during sprint planning is completed</label><br />
		&nbsp <input type='checkbox' id='three'> <label for='three'>Update Technical approach in JIRA and mark the JIRA in-Progress</label><br />
	    &nbsp <input type='checkbox' id='four'> <label for='four'>Test Case scenario walkthrough with FAT testers is completed</label><br />
		 &nbsp <input type='checkbox' id='five'> <label for='five'>Plan for interim release is created</label><br />
        </div>
   		</div>
</body>
    </div>
	</div>
 
</div>
    </div>
</body>
</html>
