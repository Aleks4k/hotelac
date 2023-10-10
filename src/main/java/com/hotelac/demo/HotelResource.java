package com.hotelac.demo;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;

import com.hotelac.demo.Image.ImageService;
import com.hotelac.demo.Reservation.Reservation;
import com.hotelac.demo.Reservation.ReservationService;
import com.hotelac.demo.Review.Review;
import com.hotelac.demo.Review.ReviewService;
import com.hotelac.demo.Room.Room;
import com.hotelac.demo.Room.RoomService;
import com.hotelac.demo.User.Login;
import com.hotelac.demo.User.User;
import com.hotelac.demo.User.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.MultiValueMap;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@RestController
public class HotelResource {
	@Autowired
	private RoomService service;
	
	@Autowired
	private UserService uservice;
	
	@Autowired
	private ReviewService rservice;
	
	@Autowired
	private ReservationService resservice;
	
	@Autowired
	private ImageService iservice;
	
	//Cuvamo logged in korisnike da bi kasnije znali po broju sesije na koji je nalog neko logovan.
	private List<Login> logged_in_users = new ArrayList<Login>();
	
	@GetMapping(path = "/rooms")
	public List<Room> retriveAllRooms() {
		return service.getAllRooms();
	}

	@PostMapping(path = "/rooms")
	public List<Room> retriveFilteredRooms(@RequestBody MultiValueMap<String, String> formData){
		Integer sort = Integer.parseInt(formData.getFirst("sort"));
		Integer has_parking = Integer.parseInt(formData.getFirst("has_parking"));
		Integer has_terrace = Integer.parseInt(formData.getFirst("has_terrace"));
		Integer has_kitchen = Integer.parseInt(formData.getFirst("has_kitchen"));
		Integer has_network = Integer.parseInt(formData.getFirst("has_network"));
		Integer has_tv = Integer.parseInt(formData.getFirst("has_tv"));
		Integer is_smoking_free = Integer.parseInt(formData.getFirst("is_smoking_free"));
		Integer has_ac = Integer.parseInt(formData.getFirst("has_ac"));
		Integer has_smoke_alarm = Integer.parseInt(formData.getFirst("has_smoke_alarm"));
		Integer is_pet_friendly = Integer.parseInt(formData.getFirst("is_pet_friendly"));
		List<Room> all_rooms = service.getAllRooms();
		List<Room> filtered = new ArrayList<Room>();
		for(Room r: all_rooms) {
			if(has_parking == -1 && r.isHas_parking() || has_parking == 1 && !r.isHas_parking()) {
				continue;
			}
			if(has_terrace == -1 && r.isHas_terrace() || has_terrace == 1 && !r.isHas_terrace()) {
				continue;
			}
			if(has_kitchen == -1 && r.isHas_kitchen() || has_kitchen == 1 && !r.isHas_kitchen()) {
				continue;
			}
			if(has_network == -1 && r.isHas_network() || has_network == 1 && !r.isHas_network()) {
				continue;
			}
			if(has_tv == -1 && r.isHas_tv() || has_tv == 1 && !r.isHas_tv()) {
				continue;
			}
			if(is_smoking_free == -1 && r.isIs_smoking_free() || is_smoking_free == 1 && !r.isIs_smoking_free()) {
				continue;
			}
			if(has_ac == -1 && r.isHas_air_conditioner() || has_ac == 1 && !r.isHas_air_conditioner()) {
				continue;
			}
			if(has_smoke_alarm == -1 && r.isHas_smoke_alarm() || has_smoke_alarm == 1 && !r.isHas_smoke_alarm()) {
				continue;
			}
			if(is_pet_friendly == -1 && r.isIs_pet_friendly() || is_pet_friendly == 1 && !r.isIs_pet_friendly()) {
				continue;
			}
			filtered.add(r);
		}
		if(sort == 1) {
			Collections.sort(filtered, (r1, r2) -> r1.getDaily_price() < r2.getDaily_price() ? -1 : r1.getDaily_price() > r2.getDaily_price() ? 1 : 0);
		} else if(sort == -1) {
			Collections.sort(filtered, (r1, r2) -> r1.getDaily_price() > r2.getDaily_price() ? -1 : r1.getDaily_price() < r2.getDaily_price() ? 1 : 0);
		}
		return filtered;
	}
	
	@PostMapping(path = "/check_me")
	public Object onUserCheckLogin() {
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				return lin.getUser();
			}
		}
		return "N";
	}
	
	@PostMapping(path = "/logout")
	public Object onUserLogOut() {
		boolean logged = false;
		Login account = null;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				logged = true;
				account = lin;
				break;
			}
		}
		if(!logged) return "You are not logged in";
		logged_in_users.remove(account);
		return "Y";
	}
	
	@PostMapping(path = "/login")
	public Object onUserLoginRequest(@RequestBody User user){
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				return "You are already logged in";
			}
		}
		if(!uservice.checkUsername(user.getUsername())) {
			return "Provided username is not correct.";
		}
		if(!uservice.checkPassword(user.getPassword())) {
			return "Provided password is not correct.";
		}
		if(uservice.getUserByUsername(user.getUsername()).isEmpty()) {
			return "Not registered username.";
		} else {
			Optional<User> from_db = uservice.getUserByUsername(user.getUsername());
			User userFromDb = from_db.orElse(null);
			if(userFromDb.getPassword().equals(user.getPassword())) {
				logged_in_users.add(new Login(RequestContextHolder.currentRequestAttributes().getSessionId(), userFromDb));
				return userFromDb;
			} else {
				return "Wrong password.";
			}
		}
	}
	
	@PostMapping(path = "/register")
	public Object onUserRegister(@RequestBody User user){
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				return "You are already logged in";
			}
		}
		if(!uservice.checkMail(user.getEmail())) {
			return "Provided mail adress is not correct.";
		}
		if(!uservice.checkPassword(user.getPassword())) {
			return "Provided password is not correct.";
		}
		if(!uservice.checkUsername(user.getUsername())) {
			return "Provided username is not correct.";
		}
		if(uservice.getUserByUsername(user.getUsername()).isEmpty()) {
			//Check mail
			if(uservice.getUserByEmail(user.getEmail()).isEmpty()) {
				//Register
				User saved = uservice.addUser(user);
				logged_in_users.add(new Login(RequestContextHolder.currentRequestAttributes().getSessionId(), saved));
				return saved;
			} else {
				//Notify user that we already have one account with this email.
				return "This email is already in use.";
			}
		} else {
			return "This username is already in use.";
		}
	}
	
	@GetMapping(path = "/my_reservations")
	public Object getReservations() {
		boolean logged = false;
		User u = null;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				logged = true;
				u = lin.getUser();
				break;
			}
		}
		if(!logged) return "You are not logged in";
		List<Reservation> lista = resservice.getReservationsByUserId(u.getUser_id());
		for(Reservation r:lista) {
			r.initRoom(service, r.getRoom_id());
		}
		return lista;
	}
	
	@DeleteMapping(path = "/reservation")
	public Object onUserRemoveReservation(@RequestBody Reservation reservation) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				if(lin.getUser().getUser_id() == reservation.getUser_id()) {
					logged = true;
					break;
				}
			}
		}
		if(!logged) return "You are not logged in";
		if(uservice.getUserByUserID((int) reservation.getUser_id()).isEmpty()) return "Provided user does not exists / Login again.";
		if(reservation.getUser_id() != resservice.getReservationById(reservation.getReservation_id()).getUser_id()) return "You cant delete reservation that does not belong to you."; 
		resservice.deleteReservation(reservation);
		return reservation;
	}
	
	@PostMapping(path = "/reservation")
	public Object onUserAddReservations(@RequestBody Reservation reservation) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				if(lin.getUser().getUser_id() == reservation.getUser_id()) {
					logged = true;
					break;
				}
			}
		}
		if(!logged) return "You are not logged in";
		if(service.getRoomById((int) reservation.getRoom_id()).isEmpty()) return "Provided room does not exists.";
		if(uservice.getUserByUserID((int) reservation.getUser_id()).isEmpty()) return "Provided user does not exists / Login again.";
		List<Reservation> from_db = resservice.getReservationsByRoomId(reservation.getRoom_id());
		for(Reservation r:from_db) {
			if((r.getDate_start().isBefore(reservation.getDate_start()) || r.getDate_start().isEqual(reservation.getDate_start())) && (r.getDate_end().isAfter(reservation.getDate_start()) || r.getDate_end().isEqual(reservation.getDate_start()))) {
				return "Selected date range is already booked.";
			}
			if((r.getDate_start().isBefore(reservation.getDate_end()) || r.getDate_start().isEqual(reservation.getDate_end())) && (r.getDate_end().isAfter(reservation.getDate_end()) || r.getDate_end().isEqual(reservation.getDate_end()))) {
				return "Selected date range is already booked.";
			}
		}
		Reservation saved = resservice.addReservation(reservation);
		return saved;
	}
	
	@DeleteMapping(path = "/review")
	public Object onUserDeleteReview(@RequestBody Review review) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				if(lin.getUser().getUser_id() == review.getUser_id()) {
					logged = true;
					break;
				}
			}
		}
		if(!logged) return "You are not logged in";
		if(service.getRoomById((int) review.getRoom_id()).isEmpty()) return "Provided room does not exists.";
		if(uservice.getUserByUserID((int) review.getUser_id()).isEmpty()) return "Provided user does not exists / Login again.";
		if(review.getUser_id() != rservice.getReviewByReviewId((long) review.getReview_id()).getUser_id()) return "You cant delete review that you did not written.";
		rservice.deleteReview(review);
		return review;
	}
	
	@PutMapping(path = "/review")
	public Object onUserEditReview(@RequestBody Review review) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				if(lin.getUser().getUser_id() == review.getUser_id()) {
					logged = true;
					break;
				}
			}
		}
		if(!logged) return "You are not logged in";
		if(review.getComment().length() == 0) return "Provided comment is not in good form.";
		if(review.getRating() > 5 || review.getRating() < 1) return "Provided rating is not in good form.";
		if(service.getRoomById((int) review.getRoom_id()).isEmpty()) return "Provided room does not exists.";
		if(uservice.getUserByUserID((int) review.getUser_id()).isEmpty()) return "Provided user does not exists / Login again.";
		if(review.getUser_id() != rservice.getReviewByReviewId((long) review.getReview_id()).getUser_id()) return "You cant edit review that you did not written.";
		Review edited = rservice.editReview(review);
		edited.initUserByUserID(uservice);
		return edited;
	}
	
	@PostMapping(path = "/review")
	public Object onUserAddReview(@RequestBody Review review) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				if(lin.getUser().getUser_id() == review.getUser_id()) { //Da ne mogu ja sa acc 128 da posaljem kao da je 64 poslao novi komentar.
					logged = true;
					break;
				}
			}
		}
		if(!logged) return "You are not logged in";
		if(review.getComment().length() == 0) return "Provided comment is not in good form.";
		if(review.getRating() > 5 || review.getRating() < 1) return "Provided rating is not in good form.";
		if(service.getRoomById((int) review.getRoom_id()).isEmpty()) return "Provided room does not exists.";
		if(uservice.getUserByUserID((int) review.getUser_id()).isEmpty()) return "Provided user does not exists / Login again.";
		Review saved = rservice.addReview(review);
		saved.initUserByUserID(uservice);
		return saved;
	}
	
	@PostMapping(path = "/room/{id}")
	public Object getRoom(@PathVariable int id) {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				logged = true;
				break;
			}
		}
		if(!logged) return "You are not logged in";
		//Pravimo sobu i initijalizujemo u nju sve što treba.
		if(service.getRoomById(id).isEmpty()) return "Room with this ID does not exists.";
		Room r = service.getRoomById(id).get();
		r.initReviews(rservice, (long) id);
		r.initReservations(resservice, (long) id);
		r.initImages(iservice, (long) id);
		return r;
	}
	
	@GetMapping(path = "/room/{id}")
	public String loadBookPage(@PathVariable int id) throws IOException {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				logged = true;
				break;
			}
		}
		if(!logged) return "You are not logged in";
		if(service.getRoomById(id).isEmpty()) return "Room with this ID does not exists.";
		ClassPathResource resource = new ClassPathResource("static/room.html");
        InputStream inputStream = resource.getInputStream();
        byte[] bytes = FileCopyUtils.copyToByteArray(inputStream);
        String htmlContent = new String(bytes, StandardCharsets.UTF_8);
        return htmlContent;
	}
	
	@GetMapping(path = "/reservations")
	public String loadReservationPage() throws IOException {
		boolean logged = false;
		for(Login lin:logged_in_users) {
			if(lin.getSessionID().equals(RequestContextHolder.currentRequestAttributes().getSessionId())) {
				logged = true;
				break;
			}
		}
		if(!logged) return "You are not logged in";
		ClassPathResource resource = new ClassPathResource("static/reservations.html");
        InputStream inputStream = resource.getInputStream();
        byte[] bytes = FileCopyUtils.copyToByteArray(inputStream);
        String htmlContent = new String(bytes, StandardCharsets.UTF_8);
        return htmlContent;
	}
	
	@RequestMapping(value = {"/", "/index.html", "main"})
	public String loadDefault() throws IOException {
		ClassPathResource resource = new ClassPathResource("static/index.html");
        InputStream inputStream = resource.getInputStream();
        byte[] bytes = FileCopyUtils.copyToByteArray(inputStream);
        String htmlContent = new String(bytes, StandardCharsets.UTF_8);
        return htmlContent;
	}
}
