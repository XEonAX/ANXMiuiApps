package cn.kuaipan.android.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import org.json.JSONException;

public class JsonUtils {
    public static Object parser(InputStream in) throws IOException, JSONException {
        JsonReader reader = new JsonReader(new InputStreamReader(in));
        Object result = parser(reader);
        if (reader.peek() == JsonToken.END_DOCUMENT) {
            return result;
        }
        throw new JSONException("Document not end of EOF");
    }

    public static Object parser(Reader in) throws IOException, JSONException {
        JsonReader reader = new JsonReader(in);
        Object result = parser(reader);
        if (reader.peek() == JsonToken.END_DOCUMENT) {
            return result;
        }
        throw new JSONException("Document not end of EOF");
    }

    public static Object parser(JsonReader reader) throws IOException, JSONException {
        switch (reader.peek()) {
            case BEGIN_ARRAY:
                return parserArray(reader);
            case BEGIN_OBJECT:
                return parserObject(reader);
            case BOOLEAN:
                return Boolean.valueOf(reader.nextBoolean());
            case NUMBER:
                return parserNumber(reader);
            case STRING:
                return reader.nextString();
            case NULL:
                reader.nextNull();
                return null;
            case NAME:
            case END_ARRAY:
            case END_DOCUMENT:
            case END_OBJECT:
                throw new JSONException("Meet EOF when json not end.");
            default:
                return null;
        }
    }

    private static Object parserNumber(JsonReader reader) throws IOException {
        try {
            return Integer.valueOf(reader.nextInt());
        } catch (NumberFormatException e) {
            try {
                return Long.valueOf(reader.nextLong());
            } catch (NumberFormatException e2) {
                return Double.valueOf(reader.nextDouble());
            }
        }
    }

    private static Object parserObject(JsonReader reader) throws IOException, JSONException {
        reader.beginObject();
        ObtainabelHashMap<String, Object> result = ObtainabelHashMap.obtain();
        try {
            JsonToken token = reader.peek();
            while (token != JsonToken.END_OBJECT) {
                result.put(reader.nextName(), parser(reader));
                token = reader.peek();
            }
            reader.endObject();
            return result;
        } catch (IOException e) {
            result.recycle();
            throw e;
        } catch (JSONException e2) {
            result.recycle();
            throw e2;
        }
    }

    private static Object parserArray(JsonReader reader) throws IOException, JSONException {
        reader.beginArray();
        ObtainabelList<Object> result = ObtainabelList.obtain();
        try {
            JsonToken token = reader.peek();
            while (token != JsonToken.END_ARRAY) {
                result.add(parser(reader));
                token = reader.peek();
            }
            reader.endArray();
            return result;
        } catch (IOException e) {
            result.recycle();
            throw e;
        } catch (JSONException e2) {
            result.recycle();
            throw e2;
        }
    }
}
