package com.hotelac.demo.Image;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageService {
	private final ImageRepository imageRepository;
	
	@Autowired
    public ImageService(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }
	
	public List<Image> getAllImages() {
        return imageRepository.findAll();
    }
	
	public List<Image> getImagesByRoomId(long room_id){
		return imageRepository.findImagesByRoomId(room_id);
	}
}
