package com.hotelac.demo.Image;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity(name="image")
@Table(name="image")
public class Image {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long image_id;
	private long room_id;
	private String link;
	
	public Image() {}

	public long getImage_id() {
		return image_id;
	}

	public void setImage_id(long image_id) {
		this.image_id = image_id;
	}

	public long getRoom_id() {
		return room_id;
	}

	public void setRoom_id(long room_id) {
		this.room_id = room_id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
}
