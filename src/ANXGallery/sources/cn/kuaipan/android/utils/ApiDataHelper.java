package cn.kuaipan.android.utils;

import android.util.MalformedJsonException;
import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.http.KscHttpResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.json.JSONException;

public class ApiDataHelper {

    public interface IKscData {

        public interface Parser<T extends IKscData> {
        }
    }

    public static Map<String, Object> contentToMap(KscHttpResponse response) throws KscException, InterruptedException {
        InputStream in = null;
        try {
            in = response.getContent();
            if (in == null) {
                throw new KscException(501001, response.dump());
            }
            Map<String, Object> result = (Map) JsonUtils.parser(in);
            if (result == null || result.isEmpty()) {
                throw new KscException(501003, response.dump());
            }
            try {
                in.close();
            } catch (Throwable th) {
            }
            return result;
        } catch (MalformedJsonException e) {
            throw new KscException(501001, response.dump(), e);
        } catch (JSONException e2) {
            throw new KscException(501001, response.dump(), e2);
        } catch (IOException e3) {
            throw KscException.newException(e3, response.dump());
        } catch (ClassCastException e4) {
            throw new KscException(501003, response.dump(), e4);
        } catch (Throwable th2) {
            try {
                in.close();
            } catch (Throwable th3) {
            }
        }
    }

    public static String asString(Map<String, Object> dataMap, String key) {
        if (dataMap == null) {
            throw new IllegalArgumentException("DataMap can't be null when parse.");
        }
        Object obj = dataMap.get(key);
        return obj == null ? null : obj.toString();
    }

    public static Number asNumber(Object obj, Number defaultValue) {
        Number result = defaultValue;
        if (obj == null) {
            return result;
        }
        if (obj instanceof Number) {
            result = (Number) obj;
        } else {
            String value = obj.toString();
            try {
                result = Long.valueOf(Long.parseLong(value));
            } catch (NumberFormatException e) {
                result = Double.valueOf(Double.parseDouble(value));
            }
        }
        return result;
    }
}
