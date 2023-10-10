package com.hotelac.demo.Room;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomService {
	private final RoomRepository roomRepository;
	
	@Autowired
    public RoomService(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    public List<Room> getAllRooms() {
        return roomRepository.findAll();
    }
    
    public Optional<Room> getRoomById(int id) {
    	return roomRepository.findById((long) id);
    }
}
