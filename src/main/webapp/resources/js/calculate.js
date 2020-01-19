function windows(){
	var popupX=600;

	var popupY=200;

	window.open('account',
			'계좌송금', 'height=700, width=700, left='+ popupX + ', top='+ popupY);
}

function next(obj) {
	if (confirm("환불 하시겠습니까?")) {
		deleteLine(obj);
		newLine(obj);
	} else {
	}
}
function deleteLine(obj) {
	var tr = $(obj).parent().parent();

	tr.remove();
}
function newLine(obj) {
	$("#ex1").append("<tr class='i1'><td>1</td><td>날아오르라 주작이여</td><td>카넥+카백</td><td>29,000원</td><td>3개</td><td>87,000원</td><td>완료</td></tr>");
}

function next2(obj) {
	if (confirm("환불 하시겠습니까?")) {
		deleteLine2(obj);
		newLine2(obj);
	} else {
	}
}
function deleteLine2(obj) {
	var tr = $(obj).parent().parent();

	tr.remove();
}
function newLine2(obj) {
	$("#ex2").append("<tr class='i1'><td>1</td><td>날아오르라 주작이여</td><td>카넥+카백</td><td>29,000원</td><td>3개</td><td>87,000원</td><td>완료</td></tr>");
}