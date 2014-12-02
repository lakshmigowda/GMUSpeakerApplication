package gmu.speaker.utility;

import gmu.speaker.model.RequestSpeaker;
import gmu.speaker.model.Speaker;
import gmu.speaker.model.Talk;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

public class FileManager {

	private static final String REQUEST_SPEAKERS_FILE = "C:\\GMUSpeakers\\requestspeakers.txt";
	private static final String SPEAKERS_FILE = "C:\\GMUSpeakers\\speakers.txt";
	private static final String TALKS_FILE = "C:\\GMUSpeakers\\talks.txt";

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

	public static ArrayList<Talk> getTalksForSpeaker(Speaker speaker) {
		ArrayList<Talk> talklist = new ArrayList<Talk>();
		try {
			FileInputStream fis = new FileInputStream(SPEAKERS_FILE);
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

		Iterator<Talk> talkIterator = talklist.iterator();
		while (talkIterator.hasNext()) {
			Talk talk = talkIterator.next();
			if (!talk.getSpeakerID().equals(speaker.getId())) {
				talkIterator.remove();
			}
		}

		return talklist;
	}

	public static String deleteSpeaker(String id) {
		ArrayList<Speaker> speakerlist = new ArrayList<Speaker>();
		try {
			speakerlist = getSpeakerlist();

			Iterator<Speaker> speakerIterator = speakerlist.iterator();
			while (speakerIterator.hasNext()) {
				Speaker speaker = speakerIterator.next();
				if (speaker.getId().equals(id)) {
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

	public static Speaker getSpeaker(String id) {
		ArrayList<Speaker> speakerlist = getSpeakerlist();
		Iterator<Speaker> speakerIterator = speakerlist.iterator();
		while (speakerIterator.hasNext()) {
			Speaker speaker = speakerIterator.next();
			if (speaker.getId().equals(id)) {
				return speaker;
			}
		}
		return null;
	}
}
