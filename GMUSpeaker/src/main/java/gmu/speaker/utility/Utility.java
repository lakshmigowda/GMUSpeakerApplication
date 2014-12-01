package gmu.speaker.utility;

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
