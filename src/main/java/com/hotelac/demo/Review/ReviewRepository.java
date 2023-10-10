package com.hotelac.demo.Review;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReviewRepository extends JpaRepository<Review, Long> {
	@Query("SELECT r FROM review r WHERE r.room_id = :roomId")
    List<Review> findReviewsByRoomId(@Param("roomId") long roomId);
	
	@Query("SELECT r FROM review r WHERE r.user_id = :userId")
    List<Review> findReviewsByUserId(@Param("userId") long userId);
}
