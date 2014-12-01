package gmu.speaker.utility;

import gmu.speaker.model.RequestSpeaker;
import gmu.speaker.model.Speaker;
import gmu.speaker.model.Talk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;

public class FileManager {

	private static final String REQUEST_SPEAKERS_FILE = "C:\\GMUSpeakers\\requestspeakers.txt";
	private static final String SPEAKERS_FILE = "C:\\GMUSpeakers\\speakers.txt";
	private static final String TALKS_FILE = "C:\\GMUSpeakers\\talks.txt";

	public static String StoreRequestSpeaker(RequestSpeaker requestSpeaker)
			throws Exception {
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
			os.close();
		}
		return "success";
	}

	public static String StoreSpeaker(Speaker speaker) throws Exception {
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
			os.close();
		}
		return "success";
	}

	public static String StoreTalks(Talk talk) throws Exception {
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
			os.close();
		}
		return "success";
	}

}
