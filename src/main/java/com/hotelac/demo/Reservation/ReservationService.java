package com.hotelac.demo.Reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	private final ReservationRepository reservationRepository;
	
	@Autowired
    public ReservationService(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }
	
	public List<Reservation> getAllReservations() {
        return reservationRepository.findAll();
    }
	
	public Reservation addReservation(Reservation r) {
		return reservationRepository.saveAndFlush(r);
	}
	
	public List<Reservation> getReservationsByRoomId(long room_id){
		return reservationRepository.findReservationsByRoomId(room_id);
	}
	
	public List<Reservation> getReservationsByUserId(long user_id){
		return reservationRepository.findReservationsByUserId(user_id);
	}
	
	public Reservation getReservationById(long reservation_id) {
		return reservationRepository.findById(reservation_id).get();
	}
	
	public void deleteReservation(Reservation r) {
		reservationRepository.delete(r);
	}
}
