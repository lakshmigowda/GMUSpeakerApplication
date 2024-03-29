package gmu.speaker.utility;

import gmu.speaker.model.Login;
import gmu.speaker.model.RequestSpeaker;
import gmu.speaker.model.Speaker;
import gmu.speaker.model.Talk;
import gmu.speaker.model.User;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

public class FileManager {

	private static final String REQUEST_SPEAKERS_FILE = "C:\\GMUSpeakers\\requestspeakers.txt";
	private static final String SPEAKERS_FILE = "C:\\GMUSpeakers\\speakers.txt";
	private static final String TALKS_FILE = "C:\\GMUSpeakers\\talks.txt";
	private static final String USERS_FILE = "C:\\GMUSpeakers\\users.txt";

	public static String StoreRequestSpeaker(RequestSpeaker requestSpeaker) {
		if (requestSpeaker != null) {
			requestSpeaker.setId(UUID.randomUUID().toString());
		}
		ObjectOutputStream os = null;
		try {

			File file = new File(REQUEST_SPEAKERS_FILE);

			if (!file.exists())
				os = new ObjectOutputStream(new FileOutputStream(
						REQUEST_SPEAKERS_FILE));

			else
				os = new AppendObjectOutputStream(new FileOutputStream(
						REQUEST_SPEAKERS_FILE, true));

			os.writeObject(requestSpeaker);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "success";
	}

	public static String StoreSpeaker(Speaker speaker) {
		if (speaker != null) {
			speaker.setId(UUID.randomUUID().toString());
		}

		ArrayList<Speaker> speakerlist = getSpeakerlist();

		Iterator<Speaker> speakerIterator = speakerlist.iterator();
		while (speakerIterator.hasNext()) {
			Speaker sp = speakerIterator.next();
			if (sp.getEmail().equals(speaker.getEmail())) {
				return "success";
			}
		}

		ObjectOutputStream os = null;
		try {

			File file = new File(SPEAKERS_FILE);

			if (!file.exists())
				os = new ObjectOutputStream(new FileOutputStream(SPEAKERS_FILE));

			else
				os = new AppendObjectOutputStream(new FileOutputStream(
						SPEAKERS_FILE, true));

			os.writeObject(speaker);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "success";
	}

	public static String StoreTalk(Talk talk) {
		if (talk != null) {
			talk.setId(UUID.randomUUID().toString());
		}
		ObjectOutputStream os = null;
		try {

			File file = new File(TALKS_FILE);

			if (!file.exists())
				os = new ObjectOutputStream(new FileOutputStream(TALKS_FILE));

			else
				os = new AppendObjectOutputStream(new FileOutputStream(
						TALKS_FILE, true));

			os.writeObject(talk);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "success";
	}

	public static ArrayList<Speaker> getSpeakerlist() {
		ArrayList<Speaker> speakerlist = new ArrayList<Speaker>();
		try {
			FileInputStream fis = new FileInputStream(SPEAKERS_FILE);
			ObjectInputStream ois = new ObjectInputStream(fis);
			while (true) {
				try {
					speakerlist.add((Speaker) ois.readObject());
				} catch (EOFException e) {
					ois.close();
					return speakerlist;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return speakerlist;
	}

	public static Map<String, String> getSpeakerMap() {
		ArrayList<Speaker> speakerlist = getSpeakerlist();

		Map<String, String> speakerMap = new LinkedHashMap<String, String>();

		Iterator<Speaker> speakerIterator = speakerlist.iterator();
		while (speakerIterator.hasNext()) {
			Speaker speaker = speakerIterator.next();
			speakerMap.put(speaker.getEmail(), speaker.getName());
		}
		return speakerMap;
	}

	public static ArrayList<Talk> getTalklist() {
		ArrayList<Talk> talklist = new ArrayList<Talk>();
		try {
			FileInputStream fis = new FileInputStream(TALKS_FILE);
			ObjectInputStream ois = new ObjectInputStream(fis);
			while (true) {
				try {
					talklist.add((Talk) ois.readObject());
				} catch (EOFException e) {
					ois.close();
					return talklist;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return talklist;
	}

	public static ArrayList<Talk> getTalksForUser(String email) {
		ArrayList<Talk> talklist = getTalklist();

		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (!talk.getUser().getEmail().equals(email)) {
				talkIterator.remove();
			}
		}

		return talklist;
	}

	public static String deleteSpeaker(String email) {
		ArrayList<Speaker> speakerlist = new ArrayList<Speaker>();
		try {
			speakerlist = getSpeakerlist();

			Iterator<Speaker> speakerIterator = speakerlist.iterator();
			while (speakerIterator.hasNext()) {
				Speaker speaker = speakerIterator.next();
				if (speaker.getEmail().equals(email)) {
					speakerIterator.remove();
				}
			}

			new File(SPEAKERS_FILE).delete();

			speakerIterator = speakerlist.iterator();
			while (speakerIterator.hasNext()) {
				Speaker speaker = speakerIterator.next();
				StoreSpeaker(speaker);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

	public static String deleteUser(String email) {
		ArrayList<User> userList = new ArrayList<User>();
		try {
			userList = getUserlist();

			Iterator<User> userIterator = userList.iterator();
			while (userIterator.hasNext()) {
				User user = userIterator.next();
				if (user.getEmail().equals(email)) {
					userIterator.remove();
				}
			}

			new File(USERS_FILE).delete();

			userIterator = userList.iterator();
			while (userIterator.hasNext()) {
				User user = userIterator.next();
				storeUser(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

	public static String deleteTalk(String id) {
		ArrayList<Talk> talklist = new ArrayList<Talk>();
		try {
			talklist = getTalklist();

			Iterator<Talk> talkIterator = talklist.iterator();
			while (talkIterator.hasNext()) {
				Talk talk = talkIterator.next();
				if (talk.getId().equals(id)) {
					talkIterator.remove();
				}
			}

			new File(TALKS_FILE).delete();

			talkIterator = talklist.iterator();
			while (talkIterator.hasNext()) {
				Talk talk = talkIterator.next();
				StoreTalk(talk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

	public static String editSpeaker(Speaker newspeaker) {
		ArrayList<Speaker> speakerlist = new ArrayList<Speaker>();
		try {
			speakerlist = getSpeakerlist();

			Iterator<Speaker> speakerIterator = speakerlist.iterator();
			while (speakerIterator.hasNext()) {
				Speaker speaker = speakerIterator.next();
				if (speaker.getId().equals(newspeaker.getId())) {
					speakerIterator.remove();
				}
			}

			new File(SPEAKERS_FILE).delete();

			// need to update talks
			StoreSpeaker(newspeaker);

			speakerIterator = speakerlist.iterator();
			while (speakerIterator.hasNext()) {
				Speaker speaker = speakerIterator.next();
				StoreSpeaker(speaker);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

	public static String editTalk(Talk newtalk) {
		ArrayList<Talk> talklist = new ArrayList<Talk>();
		try {
			talklist = getTalklist();

			Iterator<Talk> talkIterator = talklist.iterator();
			while (talkIterator.hasNext()) {
				Talk talk = talkIterator.next();
				if (talk.getId().equals(newtalk.getId())) {
					talkIterator.remove();
				}
			}

			new File(TALKS_FILE).delete();

			// need to update talks
			StoreTalk(newtalk);

			talkIterator = talklist.iterator();
			while (talkIterator.hasNext()) {
				Talk talk = talkIterator.next();
				StoreTalk(talk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Success";
	}

	public static Speaker getSpeakerByEmail(String email) {
		ArrayList<Speaker> speakerlist = getSpeakerlist();
		Iterator<Speaker> speakerIterator = speakerlist.iterator();
		while (speakerIterator.hasNext()) {
			Speaker speaker = speakerIterator.next();
			if (speaker.getEmail().equals(email)) {
				return speaker;
			}
		}
		return null;
	}

	public static Talk getTalk(String id) {
		ArrayList<Talk> talklist = getTalklist();
		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (talk.getId().equals(id)) {
				return talk;
			}
		}
		return null;
	}

	public static String storeUser(User user) {
		if (user != null) {
			user.setId(UUID.randomUUID().toString());
		}
		ObjectOutputStream os = null;
		try {

			File file = new File(USERS_FILE);

			if (!file.exists())
				os = new ObjectOutputStream(new FileOutputStream(USERS_FILE));

			else
				os = new AppendObjectOutputStream(new FileOutputStream(
						USERS_FILE, true));

			os.writeObject(user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "success";
	}

	public static ArrayList<User> getUserlist() {
		ArrayList<User> usrelist = new ArrayList<User>();
		try {
			FileInputStream fis = new FileInputStream(USERS_FILE);
			ObjectInputStream ois = new ObjectInputStream(fis);
			while (true) {
				try {
					usrelist.add((User) ois.readObject());
				} catch (EOFException e) {
					ois.close();
					return usrelist;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return usrelist;
	}

	public static User checklogin(Login login) {
		ArrayList<User> usrelist = getUserlist();
		Iterator<User> userIterator = usrelist.iterator();
		while (userIterator.hasNext()) {
			User user = userIterator.next();
			if (user.getEmail().equals(login.getEmail())) {
				return user;
			}
		}
		return null;
	}

	public static ArrayList<Talk> categorySearch(String category) {
		ArrayList<Talk> talklist = getTalklist();

		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (!talk.getCategories().toString().contains(category)) {
				talkIterator.remove();
			}
		}

		return talklist;
	}

	public static ArrayList<Talk> speakerSearch(String name) {
		ArrayList<Talk> talklist = getTalklist();

		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (!talk.getUser().getName().equals(name)) {
				talkIterator.remove();
			}
		}

		return talklist;
	}

	public static ArrayList<Talk> keywordSearch(String keyword) {
		ArrayList<Talk> talklist = getTalklist();

		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (!(talk.getTopicTitle().contains(keyword)
					|| talk.getCategories().toString().contains(keyword)
					|| talk.getAvs().toString().contains(keyword)
					|| talk.getLocation().contains(keyword)
					|| talk.getTopicTitle().contains(keyword)
					|| talk.getUser().getName().contains(keyword) || talk
					.getUser().getEmail().contains(keyword))) {
				talkIterator.remove();
			}
		}

		return talklist;
	}
}
