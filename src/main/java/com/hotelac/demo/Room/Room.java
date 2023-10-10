package com.hotelac.demo.Room;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import java.util.List;

import com.hotelac.demo.Image.Image;
import com.hotelac.demo.Image.ImageService;
import com.hotelac.demo.Reservation.Reservation;
import com.hotelac.demo.Reservation.ReservationService;
import com.hotelac.demo.Review.Review;
import com.hotelac.demo.Review.ReviewService;

@Entity(name="room")
@Table(name="room")
public class Room {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long room_id;
	private int number_of_rooms, number_of_sleeping_places;
	private double daily_price;
	private boolean has_parking, has_terrace, has_kitchen, has_network, has_tv, is_smoking_free, has_air_conditioner, has_smoke_alarm, is_pet_friendly;
	
	@Transient
    private List<Review> reviews;
	
	@Transient
    private List<Reservation> reservations;
	
	@Transient
    private List<Image> images;
	
	public Room() {}
	
	public long getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public int getNumber_of_rooms() {
		return number_of_rooms;
	}
	public void setNumber_of_rooms(int number_of_rooms) {
		this.number_of_rooms = number_of_rooms;
	}
	public int getNumber_of_sleeping_places() {
		return number_of_sleeping_places;
	}
	public void setNumber_of_sleeping_places(int number_of_sleeping_places) {
		this.number_of_sleeping_places = number_of_sleeping_places;
	}
	public double getDaily_price() {
		return daily_price;
	}
	public void setDaily_price(double daily_price) {
		this.daily_price = daily_price;
	}
	public boolean isHas_parking() {
		return has_parking;
	}
	public void setHas_parking(boolean has_parking) {
		this.has_parking = has_parking;
	}
	public boolean isHas_terrace() {
		return has_terrace;
	}
	public void setHas_terrace(boolean has_terrace) {
		this.has_terrace = has_terrace;
	}
	public boolean isHas_kitchen() {
		return has_kitchen;
	}
	public void setHas_kitchen(boolean has_kitchen) {
		this.has_kitchen = has_kitchen;
	}
	public boolean isHas_network() {
		return has_network;
	}
	public void setHas_network(boolean has_network) {
		this.has_network = has_network;
	}
	public boolean isHas_tv() {
		return has_tv;
	}
	public void setHas_tv(boolean has_tv) {
		this.has_tv = has_tv;
	}
	public boolean isIs_smoking_free() {
		return is_smoking_free;
	}
	public void setIs_smoking_free(boolean is_smoking_free) {
		this.is_smoking_free = is_smoking_free;
	}
	public boolean isHas_air_conditioner() {
		return has_air_conditioner;
	}
	public void setHas_air_conditioner(boolean has_air_conditioner) {
		this.has_air_conditioner = has_air_conditioner;
	}
	public boolean isHas_smoke_alarm() {
		return has_smoke_alarm;
	}
	public void setHas_smoke_alarm(boolean has_smoke_alarm) {
		this.has_smoke_alarm = has_smoke_alarm;
	}
	public boolean isIs_pet_friendly() {
		return is_pet_friendly;
	}
	public void setIs_pet_friendly(boolean is_pet_friendly) {
		this.is_pet_friendly = is_pet_friendly;
	}
	
	public List<Review> getReviews(){
		return reviews;
	}
	
	public void initReviews(ReviewService rservice, long room_id) {
        if (reviews == null) {
            reviews = rservice.getReviewsByRoomId(room_id);
        }
	}
	
	public List<Reservation> getReservations(){
		return reservations;
	}
	
	public void initReservations(ReservationService resservice, long room_id) {
        if (reservations == null) {
        	reservations = resservice.getReservationsByRoomId(room_id);
        }
	}
	
	public List<Image> getImages(){
		return images;
	}
	
	public void initImages(ImageService iservice, long room_id) {
        if (images == null) {
        	images = iservice.getImagesByRoomId(room_id);
        }
	}
}
