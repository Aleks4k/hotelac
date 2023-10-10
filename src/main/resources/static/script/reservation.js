function formatDate(date) {
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2); // Adding 1 to month as it is zero-based
	var day = ("0" + date.getDate()).slice(-2);
	return year + "-" + month + "-" + day;
}	
function cancelReservation(reservation_id){
	if(user_id == -1){
		$('#loginDialog').modal('show');
	} else {
		var data = JSON.stringify({
			"reservation_id": reservation_id,
		    "user_id": user_id
		});
		$.ajax({
		    url: '/reservation',
		    method: 'DELETE',
		    data: data,
		    contentType: 'application/json',
		    success: function(response) {
		    	if (typeof response === 'string') {
		    		console.log(response);
		    	} else {
		    		var reservationElement = $("#reservation_" + reservation_id);
		    		reservationElement.fadeOut(1000, function() {
		    			reservationElement.remove();
					});
		    	}
		    },
			error: function(error) {
		    	console.log(error);
		    }
		});
	}
}
$(document).ready(function () {
	function calculateRoomDays(date_start, date_end){
		var fromDate = new Date(date_start);
		var toDate = new Date(date_end);
		var timeDiff = Math.abs(toDate.getTime() - fromDate.getTime());
		var totalDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
		totalDays++;
		return totalDays;
	}
	$.ajax({
		url: "/my_reservations",
		type: "GET",
		success: function (response) {
			if (typeof response !== 'string') {
				$.each(response, function (index, reservation) {
					var newElement = '<div id="reservation_' + reservation.reservation_id + '" class="col-md-12">' +
						'<div class="card mb-4">' +
						'<div class="card-body">' +
						'<h5 class="card-title">Room ' + reservation.room_id + '</h5>' +
						'<p class="card-text">Number of days: ' + calculateRoomDays(reservation.date_start, reservation.date_end) + '</p>' +
						'<p class="card-text">Start date: ' + reservation.date_start + '</p>' +
						'<p class="card-text">End date: ' + reservation.date_end + '</p>' +
						'<p class="card-text font-weight-bold" style="float:right;font-size:36px;">Price: ' + reservation.room.daily_price * calculateRoomDays(reservation.date_start, reservation.date_end) + '$</p>';
					if(reservation.date_start > formatDate(new Date())){
						newElement += '<button class="btn btn-danger" onclick="cancelReservation(' + reservation.reservation_id + ')">Cancel Reservation</button>';
					}
					newElement += '</div>' + '</div>' + '</div>';
					$('#reservation_container').append(newElement);
				});
			}
		}
	});
});