package com.hotelac.demo.Reservation;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
	@Query("SELECT r FROM reservation r WHERE r.room_id = :roomId")
    List<Reservation> findReservationsByRoomId(@Param("roomId") long roomId);
	
	@Query("SELECT r FROM reservation r WHERE r.user_id = :userId")
    List<Reservation> findReservationsByUserId(@Param("userId") long userId);
}
