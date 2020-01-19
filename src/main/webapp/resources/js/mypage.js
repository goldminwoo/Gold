/**
 *  mypage.js
 */
$(document).ready(function(){/*바깥탭메뉴*/

	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current'); 
		$("#"+tab_id).addClass('current');
	})

})

$(document).ready(function(){/*첫번째 미니탭*/

	$('ul.minitabs li').click(function(){
		var minitab_id = $(this).attr('data-tab');

		$('ul.minitabs li').removeClass('current');
		$('.minitab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+minitab_id).addClass('current');
	})
})


$(document).ready(function(){/*두번째 미니탭*/

	$('ul.minitabs2 li').click(function(){
		var minitab2_id = $(this).attr('data-tab');

		$('ul.minitabs2 li').removeClass('current');
		$('.minitab2-content').removeClass('current');

		$(this).addClass('current');
		$("#"+minitab2_id).addClass('current');
	})

})

$(document).ready(function(){/*세번째 미니탭*/

	$('ul.minitabs3 li').click(function(){
		var minitab3_id = $(this).attr('data-tab');

		$('ul.minitabs3 li').removeClass('current');
		$('.minitab3-content').removeClass('current');

		$(this).addClass('current');
		$("#"+minitab3_id).addClass('current');
	})

})

function pro($password){
	var userInput = prompt("비밀번호를 입력해주세요");
	//세션으로 id값을 유지시키고 mypage에서 id값으로 비번값 가져온뒤
	//userInput이랑 id값으로 찾은 비번값이랑 비교해서 맞으면 if처리 아니면 경고창으로 틀립니다 처리
	if(userInput == $password){
		location.href='editProfile';
	}else{
		alert('비밀번호가 틀립니다.');
	}
}

function creditCharge($password){
	var userInput = prompt("비밀번호를 입력해주세요");
	//세션으로 id값을 유지시키고 mypage에서 id값으로 비번값 가져온뒤
	//userInput이랑 id값으로 찾은 비번값이랑 비교해서 맞으면 if처리 아니면 경고창으로 틀립니다 처리
	if(userInput == $password){
		windows();
	}else{
		alert('비밀번호가 틀립니다.');
	}
}

//크레딧 충전창
function windows(){
	var popupX=600;

	var popupY=180;

	window.open('account',
			'계좌송금', 'height=800, width=680, left='+ popupX + ', top='+ popupY);
}


var count = 0;

//target elements
var $startButton = $('.start-button'); // class
var $likeForm = $('form');  // tag
var $likeButton = $('.like-button');  // class
var $resetButton = $('#reset-button');  // id

$likeForm.hide();
$resetButton.hide();

/* 
 *   create functions
 *
 */

//hide start button and show input buttons
function onShowButtons() {
	$startButton.hide();
	$likeForm.show();
	$resetButton.show();
}

function onButtonSubmit(e) {
	// prevents automatic refresh on submit
	e.preventDefault();
	count++;

	if(count === 1) {
		$likeButton.html('1 Like')
	}
	else {
		$likeButton.html(count + ' Likes');
	}
}

function onClearButton() {
	count = 0;
	$likeButton.html('0 Likes');
}

//add event listener
$startButton.on('click', onShowButtons);
$likeForm.on('submit', onButtonSubmit);
$resetButton.on('click', onClearButton);