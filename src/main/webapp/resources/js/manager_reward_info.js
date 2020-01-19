/**
 * 
 */

function updateApprovedConfirm(){
	var ApprovedConfirm = confirm("프로젝트를 승인하시겠습니까?");
	if (ApprovedConfirm === true){
		return true;
	}else{
		return false;
	}
}

function goBack() {
    window.history.back();
}