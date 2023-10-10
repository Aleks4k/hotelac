package com.hotelac.demo.Review;

import com.hotelac.demo.User.User;
import com.hotelac.demo.User.UserService;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity(name="review")
@Table(name="review")
public class Review {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private long review_id;
	private long room_id, user_id;
	private byte rating;
	private String comment;
	@OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", insertable=false, updatable=false)
	private User user;
	
	public Review() {}

	public long getReview_id() {
		return review_id;
	}

	public void setReview_id(long review_id) {
		this.review_id = review_id;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
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

	public byte getRating() {
		return rating;
	}

	public void setRating(byte rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public void initUserByUserID(UserService uservice) {
		this.user = uservice.getUserByUserID(this.user_id).get();
	}
}
