var user_id = -1;
function logout(event){
	event.preventDefault();
	$(document).ready(function() {
		if(user_id != -1){
			$.ajax({
				url: "/logout",
				type: "POST",
				success: function(response) {
			    	if(response === 'Y'){
			    		user_id = -1;
			    		$("#loggedOutHeader").css('display', 'inline');
		    			$("#loggedInHeader").css('display', 'none');
			    	}
			    }
			});
		}
	});
}
function login(event){
	if(!checkLoginUsername() || !checkLoginPassword()){
		event.preventDefault();
	} else {
		var data = JSON.stringify({
		    "username": $('#login_username').val(),
		    "password": $('#login_password').val()
		});

		$.ajax({
		    url: '/login',
		    method: 'POST',
		    data: data,
		    contentType: 'application/json',
		    success: function(response) {
		    	if (typeof response === 'string') {
		    		$("#loginError").text(response);
		    	} else {
		    		$("#loggedOutHeader").css('display', 'none');
		    		$("#loggedInHeader").css('display', 'inline');
		    		$('#loginModal').modal('hide');
		    		user_id = response.user_id;
		    		$("#username_span").text(`${response.username}`);
		    	}
		    },
		    error: function(error) {
		        // Handle error response
		    	$("#loginError").text(response);
		    }
		});
		event.preventDefault();
	}
}
function register(event){
	if(!checkUsername() || !checkMail || !checkPassword){
		event.preventDefault();
	} else {
		var data = JSON.stringify({
		    "email": $('#email').val(),
		    "username": $('#username').val(),
		    "password": $('#password').val()
		});

		$.ajax({
		    url: '/register',
		    method: 'POST',
		    data: data,
		    contentType: 'application/json',
		    success: function(response) {
		    	if (typeof response === 'string') {
		    		$("#registrationError").text(response);
		    	} else {
		    		$("#loggedOutHeader").css('display', 'none');
		    		$("#loggedInHeader").css('display', 'inline');
		    		$('#registerModal').modal('hide');
		    		user_id = response.user_id;
		    		$("#username_span").text(`${response.username}`);
		    	}
		    },
		    error: function(error) {
		        // Handle error response
		    	$("#registrationError").text(response);
		    }
		});
		event.preventDefault();
	}
}
function checkLoginUsername(){
	var RegexIme = /^[a-zA-Z0-9_.]{4,64}$/g;// \s predstavlja obavezan space.
	if(!RegexIme.test($("#login_username").val())){
		// Change border color to red
		$("#login_username").css('border-color', '#ff0000');
		// Change box shadow to red
		$("#login_username").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		return false;
	} else {
		// Change border color to green
		$("#login_username").css('border-color', '#00ff00');
		// Change box shadow to green
		$("#login_username").css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		return true;
	}
}
function checkLoginPassword(){
	var RegexPassword = /^[a-zA-Z0-9_.!@#$]{6,255}$/g;// \s predstavlja obavezan space.
	if(!RegexPassword.test($("#login_password").val())){
		// Change border color to red
		$("#login_password").css('border-color', '#ff0000');
		// Change box shadow to red
		$("#login_password").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		return false;
	} else {
		// Change border color to green
		$("#login_password").css('border-color', '#00ff00');
		// Change box shadow to green
		$("#login_password").css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		return true;
	}
}
function checkUsername(){
	var RegexIme = /^[a-zA-Z0-9_.]{4,64}$/g;// \s predstavlja obavezan space.
	if(!RegexIme.test($("#username").val())){
		// Change border color to red
		$("#username").css('border-color', '#ff0000');
		// Change box shadow to red
		$("#username").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		return false;
	} else {
		// Change border color to green
		$("#username").css('border-color', '#00ff00');
		// Change box shadow to green
		$("#username").css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		return true;
	}
}
function checkMail(){
	var RegexMail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g;// \s predstavlja obavezan space.
	if(!RegexMail.test($("#email").val())){
		// Change border color to red
		$("#email").css('border-color', '#ff0000');
		// Change box shadow to red
		$("#email").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		return false;
	} else {
		// Change border color to green
		$("#email").css('border-color', '#00ff00');
		// Change box shadow to green
		$("#email").css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		return true;
	}
}
function checkPassword(){
	var RegexPassword = /^[a-zA-Z0-9_.!@#$]{6,255}$/g;// \s predstavlja obavezan space.
	if(!RegexPassword.test($("#password").val())){
		// Change border color to red
		$("#password").css('border-color', '#ff0000');
		// Change box shadow to red
		$("#password").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		return false;
	} else {
		// Change border color to green
		$("#password").css('border-color', '#00ff00');
		// Change box shadow to green
		$("#password").css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		return true;
	}
}
$(document).ready(function () {
	console.log("Checking if you are already logged in.");
	$.ajax({
	    url: '/check_me',
	    method: 'POST',
	    success: function(response) {
	    	if (typeof response === 'string') {
	    		user_id = -1;
	    	} else {
	    		$("#loggedOutHeader").css('display', 'none');
	    		$("#loggedInHeader").css('display', 'inline');
	    		$('#loginModal').modal('hide');
	    		user_id = response.user_id;
	    		$("#username_span").text(`${response.username}`);
	    	}
	    },
	    error: function(error) {
	    	user_id = -1;
	    }
	});
	$.ajax({
		url: "/rooms",
		type: "GET",
		success: function (response) {
			$.each(response, function (index, room) {
				var room = $(`<div class="col-md-4 mb-4"><div class="card"><div class="card-body"><h5 class="card-title">Room ${room.room_id}</h5><table class="table"><tbody><tr><th>Number of Rooms:</th><td>${room.number_of_rooms}</td></tr><tr><th>Sleeping Places:</th><td>${room.number_of_sleeping_places}</td></tr><tr><th>Price:</th><td>${room.daily_price}$ per night</td></tr></tbody></table><a href='room/${room.room_id}' class="book_now_btn btn btn-primary">Book Now</a></div></div></div>`);
				$('#rooms_container').append(room);
			});
			addListeners();
		}
	});
	function addListeners(){
		$('.book_now_btn').click(function(e) {
			if(user_id == -1){
				e.preventDefault(); // Prevent the default link behavior
				$('#loginDialog').modal('show'); // Show the login dialog using Bootstrap's modal function
			}
		});
	}
	function getValueOfTristate(id){
    	if($('#' + id).attr('checked') === undefined && $('#' + id).attr('indeterminate') === undefined){
    		return -1;
    	} else if($('#' + id).attr('checked') === 'checked'){
    		return 1;
    	} else {
    		return 0;
    	}
    }
	$("#filterBtn").click(function() {
        $("#filterMenu").toggle();
    });
    $("#okayBtn").click(function(){
    	//Nek 0 uvek bude default. 1 je true -1 je false
    	var sort = 0;
    	if ($('#price_asc').is(':checked')) {
    		sort = 1;
    	} else if($('#price_desc').is(':checked')){
    		sort = -1;
    	} else {
    		sort = 0;
    	}
    	var has_parking = getValueOfTristate("parkingCheck");
    	var has_terrace = getValueOfTristate("terraceCheck");
    	var has_kitchen = getValueOfTristate("kitchenCheck");
    	var has_network = getValueOfTristate("networkCheck");
    	var has_tv = getValueOfTristate("tvCheck");
    	var is_smoking_free = getValueOfTristate("smokingCheck");
    	var has_ac = getValueOfTristate("acCheck");
    	var has_smoke_alarm = getValueOfTristate("saCheck");
    	var is_pet_friendly = getValueOfTristate("pfCheck");
    	var formData = {
    		sort: sort,
    		has_parking: has_parking,
    		has_terrace: has_terrace,
    		has_kitchen: has_kitchen,
    		has_network: has_network,
    		has_tv: has_tv,
    		is_smoking_free: is_smoking_free,
    		has_ac: has_ac,
    		has_smoke_alarm: has_smoke_alarm,
    		is_pet_friendly: is_pet_friendly
    	};
    	$.ajax({
    		url: '/rooms',
    		type: 'POST',
    		contentType: 'application/x-www-form-urlencoded',
    		data: $.param(formData),
    		success: function(response) {
    			$("#rooms_container").empty();
    			$.each(response, function (index, room) {
    				var room = $(`<div class="col-md-4 mb-4"><div class="card"><div class="card-body"><h5 class="card-title">Room ${room.room_id}</h5><table class="table"><tbody><tr><th>Number of Rooms:</th><td>${room.number_of_rooms}</td></tr><tr><th>Sleeping Places:</th><td>${room.number_of_sleeping_places}</td></tr><tr><th>Price:</th><td>${room.daily_price}$ per night</td></tr></tbody></table><a href='room/${room.room_id}' class="book_now_btn btn btn-primary">Book Now</a></div></div></div>`);
    				$('#rooms_container').append(room);
    			});
    			addListeners();
    		},
    		error: function(error) {
    			console.log(error);
    		}
    	});
    	$("#filterMenu").toggle();
    });
    $(function() {
        $('.tristate').tristate({
            change: function(state, value) {
            }
        });
    });
});