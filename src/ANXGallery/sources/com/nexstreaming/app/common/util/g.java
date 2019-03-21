package com.nexstreaming.app.common.util;

import com.google.gson_nex.stream.JsonReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.keyczar.Keyczar;

/* compiled from: JsonReaderUtil */
public class g {
    public a a(InputStream inputStream) throws IOException {
        return a(new JsonReader(new InputStreamReader(inputStream, Keyczar.DEFAULT_ENCODING)));
    }

    public a a(JsonReader jsonReader) throws IOException {
        a aVar = new a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("deviceinfo")) {
                a(jsonReader, aVar);
            } else if (nextName.equals("performance")) {
                b(jsonReader, aVar);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return aVar;
    }

    public void a(JsonReader jsonReader, a aVar) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("model")) {
                aVar.a(jsonReader.nextString());
            } else if (nextName.equals("manufacture")) {
                aVar.b(jsonReader.nextString());
            } else if (nextName.equals("chipset")) {
                aVar.c(jsonReader.nextString());
            } else if (nextName.equals("os")) {
                aVar.d(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    public void b(JsonReader jsonReader, a aVar) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("codec_mem_size")) {
                aVar.a(jsonReader.nextInt());
            } else if (nextName.equals("max_fps")) {
                aVar.b(jsonReader.nextInt());
            } else if (nextName.equals("max_resolution")) {
                aVar.c(jsonReader.nextInt());
            } else if (nextName.equals("mpeg4v_supported")) {
                aVar.a(jsonReader.nextBoolean());
            } else if (nextName.equals("use_encoder") || nextName.equals("unuse_encoder")) {
                a(jsonReader, aVar, nextName);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    public void a(JsonReader jsonReader, a aVar, String str) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("available_dec_count")) {
                if (str.equals("use_encoder")) {
                    aVar.d(jsonReader.nextInt());
                } else {
                    aVar.f(jsonReader.nextInt());
                }
            } else if (!nextName.equals("realtime_dec_count")) {
                jsonReader.skipValue();
            } else if (str.equals("use_encoder")) {
                aVar.e(jsonReader.nextInt());
            } else {
                aVar.g(jsonReader.nextInt());
            }
        }
        jsonReader.endObject();
    }
}
