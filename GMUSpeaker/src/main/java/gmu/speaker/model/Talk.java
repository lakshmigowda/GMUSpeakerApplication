package gmu.speaker.model;

import java.io.Serializable;
import java.util.List;

public class Talk implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3995947032920922269L;
	private String id;
	private List<String> categories;
	private List<String> avs;
	private String topicTitle;
	private String date;
	private String time;
	private String location;
	private String parking;
	private User user;

	public List<String> getCategories() {
		return categories;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public void setCategories(List<String> categories) {
		this.categories = categories;
	}

	public List<String> getAvs() {
		return avs;
	}

	public void setAvs(List<String> avs) {
		this.avs = avs;
	}

	public String getTopicTitle() {
		return topicTitle;
	}

	public void setTopicTitle(String topicTitle) {
		this.topicTitle = topicTitle;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
