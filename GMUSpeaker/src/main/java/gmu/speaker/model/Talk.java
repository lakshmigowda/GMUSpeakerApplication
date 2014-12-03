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
	private String speakerEmail;

	public List<String> getCategories() {
		return categories;
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

	public String getSpeakerEmail() {
		return speakerEmail;
	}

	public void setSpeakerEmail(String speakerEmail) {
		this.speakerEmail = speakerEmail;
	}
}
