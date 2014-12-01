package gmu.speaker.model;

import java.util.List;

public class Talk {

	private List<String> categories;
	private List<String> avs;
	private String topicTitle;

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
}
