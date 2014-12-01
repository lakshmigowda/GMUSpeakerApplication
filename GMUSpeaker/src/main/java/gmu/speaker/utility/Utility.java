package gmu.speaker.utility;

import gmu.speaker.model.RequestSpeaker;

import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Type;
import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class Utility {

	private static final String REQUEST_SPEAKERS_FILE = "C:\\GMUSpeakers\\requestspeakers.txt";

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

	public static Gson getGson() {
		GsonBuilder builder = new GsonBuilder();

		builder.registerTypeAdapter(Date.class, new JsonSerializer<Date>() {
			public JsonElement serialize(Date arg0, Type arg1,
					JsonSerializationContext arg2) {
				return new JsonPrimitive(arg0.getTime());
			}
		});

		builder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
			public Date deserialize(JsonElement p1, Type p2,
					JsonDeserializationContext p3) {
				return new java.util.Date(p1.getAsLong());
			}
		});

		Gson gson = builder.create();
		return gson;
	}
}
