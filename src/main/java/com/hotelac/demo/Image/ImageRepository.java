package com.hotelac.demo.Image;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ImageRepository extends JpaRepository<Image, Long> {
	@Query("SELECT i FROM image i WHERE i.room_id = :roomId")
    List<Image> findImagesByRoomId(@Param("roomId") long roomId);
}
