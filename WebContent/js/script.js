function pwdChk1(){
	document.getElementById('pwd2').value='';
}

function pwdChk2(){
		pwd1 = document.getElementById('pwd1');
		pwd2 = document.getElementById('pwd2');
		if(pwd1.value!=pwd2.value){
			pwd1.value='';
			pwd2.value='';
			$('#alert').attr('class', 'alert alert-danger');
			document.getElementById("alert").innerHTML = "Password Not Matched";
			pwd1.focus();
		} else {
			$('#alert').attr('class', 'alert alert-primary');
			document.getElementById("alert").innerHTML = "Checked";
		}
	}