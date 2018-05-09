function myfunc () {
                                $('#a').get(0).reset()
                                $('#b').get(0).reset()
                                $('#c').get(0).reset()
}             

function myfun () {
	var oForm1 = document.forms[form1];
	var oForm2 = document.forms[form2];
	var oForm1Element = oForm1[sprintno1];
	var oForm2Element = oForm2[sprintno2];
	if (oForm2Element.value == '')
	{
	    oForm2Element.value += oForm1Element.value;
	}

}
function openPage(pageURL) {
    window.location = pageURL;
}
function SelectRedirect(){
	switch(document.getElementById('s1').value)
	{
	case "ROLE_TESTER_FAT":
	window.location="../views/TesterFATChecklist.jsp";
	break;

	case "ROLE_TESTER_INTEGRATION":
	window.location="../views/TesterIntegration.jsp";
	break;

	case "ROLE_TESTER_CI":
	window.location="../views/TesterCIChecklist.jsp";
	break;

	default:
	window.location="../"; 
	break;
	}
	}