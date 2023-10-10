var last_response;
var room_id = -1;
var regex = /\/(\d+)$/;
var match = regex.exec(window.location.href);
if (match) {
	var room_id = match[1];
}
function formatDate(date) {
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2); // Adding 1 to month as it is zero-based
	var day = ("0" + date.getDate()).slice(-2);
	return year + "-" + month + "-" + day;
}
function bookNow(){
	$(document).ready(function() {
		var fromDate = new Date($('#from').val());
		var toDate = new Date($('#to').val());
		if(fromDate.toString() !== 'Invalid Date' && toDate.toString() !== 'Invalid Date'){
			var formatted_date_from = formatDate(fromDate);
			var formatted_date_to = formatDate(toDate);
			var isReservationDate = false;
			$(last_response.reservations).each(function(i, reservation){
				if(reservation.date_start <= formatted_date_from && reservation.date_end >= formatted_date_from){
					isReservationDate = true;
				}
				if(reservation.date_start <= formatted_date_to && reservation.date_end >= formatted_date_to){
					isReservationDate = true;
				}
			});
			if(isReservationDate){ //Znači da je modifikovo datum.
				$("#reservationErrorMessage").text("Please choose correct date.");
			} else {
				var data = JSON.stringify({
				    "room_id": room_id,
				    "user_id": user_id,
				    "date_start": formatted_date_from,
				    "date_end": formatted_date_to
				});
				$.ajax({
				    url: '/reservation',
				    method: 'POST',
				    data: data,
				    contentType: 'application/json',
				    success: function(response) {
				    	if (typeof response === 'string') {
				    		$("#reservationErrorMessage").text(response);
				    		console.log(response);
				    	} else {
				    		$('#bookingDialog').modal('hide');
				    		last_response.reservations.push(response);
				    		$('#reservationModal').modal('show');
				    	}
				    },
					error: function(error) {
						$("#reservationErrorMessage").text("ERROR: Check console for more informations.");
				    	console.log(error);
				    }
				});
			}
		} else {
			if(fromDate.toString() === 'Invalid Date'){
				$("#from").css('border-color', '#ff0000');
				$("#from").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
			}
			if(toDate.toString() === 'Invalid Date'){
				$("#to").css('border-color', '#ff0000');
				$("#to").css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
			}
		}
	});
}
function deleteComment(reviewId){
	$(document).ready(function() {
		var data = JSON.stringify({
			"review_id": reviewId,
		    "room_id": room_id,
		    "user_id": user_id
		});
		$.ajax({
		    url: '/review',
		    method: 'DELETE',
		    data: data,
		    contentType: 'application/json',
		    success: function(response) {
		    	if (typeof response === 'string') {
		    		console.log(response);
		    	} else {
		    		var commentElement = $("#comment_" + reviewId).parent();
					commentElement.fadeOut(1000, function() {
						commentElement.remove();
					});
		    	}
		    },
			error: function(error) {
		    	console.log(error);
		    }
		});
	});
}

function editComment(reviewId) {
	$(document).ready(function() {
		var old_rating = $('#comment_' + reviewId +' .fa.fa-star.checked').length;
		var new_rating = old_rating;
		var commentElement = $("#comment_" + reviewId);
		var commentText = commentElement.find("p").text();
		$('#comment_' + reviewId +' .rating .fa-star').click(function() {
			$(this).addClass("checked");
			$(this).prevAll().addClass("checked");
			$(this).nextAll().removeClass("checked");
			new_rating = $(this).data("rating");
		});
		var inputField = $("<input>", {
			type: "text",
		    class: "form-control",
		    value: commentText,
		    on:{
		    	keyup: function(event) {
		    		var regexComment = /.+/;
		    		if(!regexComment.test($(this).val())){
		    			// Change border color to red
		    			$(this).css('border-color', '#ff0000');
		    			// Change box shadow to red
		    			$(this).css('box-shadow', '0 0 0 0.2rem rgba(255, 0, 0, 0.25)');
		    		} else {
		    			// Change border color to green
		    			$(this).css('border-color', '#00ff00');
		    			// Change box shadow to green
		    			$(this).css('box-shadow', '0 0 0 0.2rem rgba(0, 255, 0, 0.25)');
		    		}
		    	}
		    }
		}).prop("required", true);
		var submitButton = $("<button>", {
			class: "btn btn-primary mt-1",
		    text: "Submit"
		}).click(function() {
			var comment = inputField.val();
			if (comment !== "") {
				var data = JSON.stringify({
					"review_id": reviewId,
				    "room_id": room_id,
				    "user_id": user_id,
				    "rating": new_rating,
				    "comment": comment
				});
				$.ajax({
				    url: '/review',
				    method: 'PUT',
				    data: data,
				    contentType: 'application/json',
				    success: function(response) {
				    	if (typeof response === 'string') {
				    		inputField.replaceWith("<p class='card-text'>" + commentText + "</p>");
						    commentElement.find(".edit-button, .delete-button").show();
						    submitButton.remove();
						    cancelButton.remove();
						    if(new_rating != old_rating){
								var star = $('#comment_' + reviewId + ' .rating').children().eq(old_rating-1);
								star.addClass("checked");
								star.prevAll().addClass("checked");
								star.nextAll().removeClass("checked");
							}
						    $('#comment_' + reviewId + ' .rating .fa-star').off('click');
						    console.log(response);
				    	} else {
				    		inputField.replaceWith("<p class='card-text'>" + response.comment + "</p>");
				    		commentElement.find(".edit-button, .delete-button").show();
				    		submitButton.remove(); // Remove the Submit button
				    	    cancelButton.remove(); // Remove the Cancel button
							var star = $('#comment_' + response.review_id + ' .rating').children().eq(response.rating-1);
							star.addClass("checked");
							star.prevAll().addClass("checked");
							star.nextAll().removeClass("checked");
						    $('#comment_' + response.review_id + ' .rating .fa-star').off('click');
				    	}
				    },
				    error: function(error) {
				    	//Kao da je pritisnuo cancel dugme treba da bude.
				    	inputField.replaceWith("<p class='card-text'>" + commentText + "</p>");
					    commentElement.find(".edit-button, .delete-button").show();
					    submitButton.remove();
					    cancelButton.remove();
					    if(new_rating != old_rating){
							var star = $('#comment_' + reviewId + ' .rating').children().eq(old_rating-1);
							star.addClass("checked");
							star.prevAll().addClass("checked");
							star.nextAll().removeClass("checked");
						}
					    $('#comment_' + reviewId + ' .rating .fa-star').off('click');
					    console.log(error);
				    }
				});
			}
		});
		var cancelButton = $("<button>", {
			class: "btn btn-secondary ml-2 mt-1",
		    text: "Cancel"
		}).click(function() {
			inputField.replaceWith("<p class='card-text'>" + commentText + "</p>");
			commentElement.find(".edit-button, .delete-button").show();
			submitButton.remove();
			$(this).remove();
			if(new_rating != old_rating){
				var star = $('#comment_' + reviewId + ' .rating').children().eq(old_rating-1);
				star.addClass("checked");
				star.prevAll().addClass("checked");
				star.nextAll().removeClass("checked");
			}
			$('#comment_' + reviewId + ' .rating .fa-star').off('click');
		});
		commentElement.find("p").replaceWith(inputField);
		inputField.after(submitButton, cancelButton);
		commentElement.find(".edit-button, .delete-button").hide();
	});
}
$(document).ready(function() {
	// Star rating
	var rating = 5;
	$.ajax({
		url: "/room/" + room_id,
		type: "POST",
	    success: function(response) {
	    	if (typeof response !== 'string') {
	    		last_response = response;
	    		room_id = response.room_id; //Neka ga tu za svaki slucaj
	    		$(".nmob").text(response.number_of_sleeping_places);
				$(".nmor").text(response.number_of_rooms);
				if(response.has_parking){
					$('[data-content="Parking."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_terrace){
					$('[data-content="Terrace."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_kitchen){
					$('[data-content="Kitchen."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_network){
					$('[data-content="Network."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_tv){
					$('[data-content="TV."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.is_smoking_free){
					$('[data-content="Smoking."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_air_conditioner){
					$('[data-content="Air conditioner."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.has_smoke_alarm){
					$('[data-content="Smoke alarm."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				if(response.is_pet_friendly){
					$('[data-content="Pet friendly."]').each(function(i,item){
						$(item.lastChild).removeClass("fa-x");
						$(item.lastChild).addClass("fa-check");
						$(item.lastChild).css("color", "#04ff00");
					});
				}
				$("#price").text(`Price: ${response.daily_price}$/night`);
	    		$("#room_id_text").text(`Room ${response.room_id}`);
	    		if(response.reviews.length !== 0) {
		    		$(response.reviews).each(function(i, review){
		    			var newComment = '<div class="card">' +
							'<div id="comment_' + review.review_id + '" class="card-body">' +
							'<h5 class="card-title">' + review.user.username + '</h5>' +
							'<div class="rating">';
							
		    			var tmp = 1;
						for (var i = 1; i <= review.rating; i++) {
							newComment += '<span class="fa fa-star checked" data-rating="' + tmp++ + '"></span>';
						}
						for (var i = 5; i > review.rating; i--){
							newComment += '<span class="fa fa-star" data-rating="' + tmp++ + '"></span>';
						}
						
						newComment += '</div>' +
							'<p class="card-text">' + review.comment + '</p>';
							
						if(review.user.user_id === user_id) {
							newComment += '<div class="buttons-container" style="position:absolute;top:0;right:0;">';
							newComment += '<button class="edit-button" onclick="editComment(' + review.review_id + ')"><i class="fa-solid fa-pen"></i></button>';
							newComment += '<button class="ml-1 delete-button" onclick="deleteComment(' + review.review_id + ')"><i class="fa-solid fa-trash-can"></i></button>';
							newComment += '</div>';
						}
						newComment += '</div>' + '</div>';
						$("#comments").append(newComment);
		    		});
	    		}
	    		if(response.images !== 0) {
	    			var indicators = $('.carousel-indicators');
	    			var carouselInner = $('.carousel-inner');
	    			$(response.images).each(function(i, image){
	    				//Indikatori
	    				var li = $('<li></li>');
	    				li.attr('data-target', '#carouselExampleIndicators');
	    			    li.attr('data-slide-to', i);
	    			    if (i === 0) {
	    			    	li.addClass('active');
	    			    }
	    			    indicators.append(li);
	    			    //Slika
	    			    var carouselItem = $('<div></div>');
	    			    carouselItem.addClass('carousel-item');
	    			    if (i === 0) {
	    			      carouselItem.addClass('active');
	    			    }
	    			    var img = $('<img>');
	    			    img.addClass('d-block w-100');
	    			    img.attr('src', image.link);
	    			    img.attr('alt', 'Image ' + (i + 1));
	    			    carouselItem.append(img);
	    			    carouselInner.append(carouselItem);
	    			});
	    		}
	    	}
	    }
	});
	$(".form-group .rating .fa-star").click(function() {
		$(this).addClass("checked");
		$(this).prevAll().addClass("checked");
		$(this).nextAll().removeClass("checked");
		rating = $(this).data("rating");
	});
	// Submitting the comment form
	$("#commentForm").submit(function(e) {
		e.preventDefault();	
		var comment = $("#commentInput").val();
		if (comment !== "") {
			var data = JSON.stringify({
			    "room_id": room_id,
			    "user_id": user_id,
			    "rating": rating,
			    "comment": comment
			});
			$.ajax({
			    url: '/review',
			    method: 'POST',
			    data: data,
			    contentType: 'application/json',
			    success: function(response) {
			    	if (typeof response === 'string') {
			    		$("#commentErrorMessage").text(response);
			    	} else {
			    		var newComment = '<div class="card">' +
			    			'<div id="comment_' + response.review_id + '" class="card-body">' +
							'<h5 class="card-title">' + response.user.username + '</h5>' +
							'<div class="rating">';
							
			    		var tmp = 1;
						for (var i = 1; i <= response.rating; i++) {
							newComment += '<span class="fa fa-star checked" data-rating="' + tmp++ + '"></span>';
						}
						for (var i = 5; i > response.rating; i--){
							newComment += '<span class="fa fa-star" data-rating="' + tmp++ + '"></span>';
						}
						
						newComment += '</div>' +
							'<p class="card-text">' + response.comment + '</p>';
							
						if(response.user.user_id === user_id) {
							newComment += '<div class="buttons-container" style="position:absolute;top:0;right:0;">';
							newComment += '<button class="edit-button" onclick="editComment(' + response.review_id + ')"><i class="fa-solid fa-pen"></i></button>';
							newComment += '<button class="ml-1 delete-button" onclick="deleteComment(' + response.review_id + ')"><i class="fa-solid fa-trash-can"></i></button>';
							newComment += '</div>';
						}
						newComment += '</div>' + '</div>';
						$("#comments").prepend(newComment);
			    	}
			    },
			    error: function(error) {
			    	$("#commentErrorMessage").text(error);
			    	$("#commentInput").val("");
					$(".form-group .rating .fa-star").removeClass("checked");
			    }
			});
		}
	});
	
	function calculatePrice() {
		var fromDate = new Date($('#from').val());
		var toDate = new Date($('#to').val());
		var timeDiff = Math.abs(toDate.getTime() - fromDate.getTime());
		var totalDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
		totalDays++;
		if (!isNaN(totalDays)) {
			$('#totalDays').text(totalDays);
			var pricePerDay = last_response.daily_price;
			var totalPrice = totalDays * pricePerDay;
			$('#totalPrice').text(totalPrice + "$");
		}
	}
	
	$(function () {
		$('[data-toggle="popover"]').popover()
	})
	var dateStartTaken;
	var mxForTo;
	var dateFormat = "yy-mm-dd";
	function initializeDatePicker(){
		from = $("#from").datepicker({
			dateFormat: "yy-mm-dd",
			defaultDate: "+1d",
			beforeShowDay: disableReservationDates,
			changeMonth: true,
			minDate: 0,
			numberOfMonths: 1
			}).on("change", function() {
				/*var nextDay = new Date();
				nextDay.setDate(nextDay.getDate() + 1);*/
				dateStartTaken = getDate(this);
				to.datepicker("option", "minDate", getDate(this));
				to.datepicker("option", "maxDate", mxForTo);
				calculatePrice();
		}),
		to = $( "#to" ).datepicker({
			dateFormat: "yy-mm-dd",
			beforeShowDay: disableReservationDates,
			changeMonth: true,
			numberOfMonths: 1
			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
				calculatePrice();
		});
	}
	function getDate(element) {
		var date;
		try {
			date = $.datepicker.parseDate(dateFormat, element.value);
		} catch( error ) {
			date = null;
		}
		return date;
	}
	function disableReservationDates(date){
		var formatted_date = formatDate(date);
		var formatted_selected;
		if (typeof dateStartTaken !== 'undefined') {
			formatted_selected = formatDate(dateStartTaken);
		}
		var isReservationDate = false;
		$(last_response.reservations).each(function(i, reservation){
			if(reservation.date_start <= formatted_date && reservation.date_end >= formatted_date){
				isReservationDate = true;
				return false;
			}
			if (typeof dateStartTaken !== 'undefined') {
				if(formatted_selected <= reservation.date_start){
					mxForTo = new Date(reservation.date_start);
				}
			}
		});
		return [!isReservationDate, ""];
	}
	$("#bookBtn").on("click", function() {
		dateStartTaken = undefined;
		mxForTo = undefined;
		$("#from").datepicker("destroy");
		$("#to").datepicker("destroy");
		$('#totalDays').text('');
		$('#totalPrice').text('');
		$('#from').val('');
		$('#to').val('');
		initializeDatePicker();
		$("#bookingDialog").modal("show");
	});
});