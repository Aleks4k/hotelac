package com.hotelac.demo.Review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {
	private final ReviewRepository reviewRepository;
	
	@Autowired
    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }
	
	public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }
	
	public Review addReview(Review r) {
		return reviewRepository.saveAndFlush(r);
	}
	
	public Review editReview(Review r) {
		return reviewRepository.saveAndFlush(r);
	}
	
	public void deleteReview(Review r) {
		reviewRepository.delete(r);;
	}
	
	public Review getReviewByReviewId(long review_id) {
		return reviewRepository.findById(review_id).get();
	}
	
	public List<Review> getReviewsByRoomId(long room_id){
		return reviewRepository.findReviewsByRoomId(room_id);
	}
	
	public List<Review> getReviewsByUserId(long user_id){
		return reviewRepository.findReviewsByUserId(user_id);
	}
}
