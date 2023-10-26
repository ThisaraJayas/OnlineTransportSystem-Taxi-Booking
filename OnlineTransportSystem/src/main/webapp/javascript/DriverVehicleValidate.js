function Validate(){
	var frm = document.forms[formdv];
	if(frm.date.value==""){
		alert("Add a Date");
		frm.date.focus();
		return false;
	}
	if(frm.fairPrice.value==""){
		alert("Add a Date");
		frm.date.focus();
		return false;
	}
	return true;
}