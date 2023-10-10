package com.hotelac.demo.Reservation;

import java.time.LocalDate;

import com.hotelac.demo.Room.Room;
import com.hotelac.demo.Room.RoomService;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity(name="reservation")
@Table(name="reservation")
public class Reservation {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long reservation_id;
	private long user_id, room_id;
	private LocalDate date_start, date_end;
	
	@Transient
	private Room room;
	
	public Reservation() {}

	public long getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(long reservation_id) {
		this.reservation_id = reservation_id;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getRoom_id() {
		return room_id;
	}

	public void setRoom_id(long room_id) {
		this.room_id = room_id;
	}

	public LocalDate getDate_start() {
		return date_start;
	}

	public void setDate_start(LocalDate date_start) {
		this.date_start = date_start;
	}

	public LocalDate getDate_end() {
		return date_end;
	}

	public void setDate_end(LocalDate date_end) {
		this.date_end = date_end;
	}
	
	public Room getRoom() {
		return room;
	}
	
	public void initRoom(RoomService service, long room_id) {
        if (room == null) {
        	room = service.getRoomById((int)room_id).get();
        }
	}
}
