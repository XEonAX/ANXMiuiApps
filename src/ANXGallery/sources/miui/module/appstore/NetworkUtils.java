package miui.module.appstore;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

class NetworkUtils {
    static JSONObject downloadMetadata(String urlString) {
        JSONObject jSONObject;
        HttpURLConnection conn = null;
        StringBuilder sb = new StringBuilder();
        try {
            conn = (HttpURLConnection) new URL(urlString).openConnection();
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(15000);
            BufferedReader br = new BufferedReader(new InputStreamReader(new BufferedInputStream(conn.getInputStream())));
            while (true) {
                String inputLine = br.readLine();
                if (inputLine == null) {
                    break;
                }
                sb.append(inputLine);
            }
            jSONObject = new JSONObject(sb.toString());
            if (conn != null) {
                conn.disconnect();
            }
        } catch (Exception e) {
            Log.e("NetworkUtils", "error while downloading metadata " + e);
            jSONObject = null;
            return jSONObject;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
        return jSONObject;
    }

    static boolean downloadFile(String fileURL, File file) {
        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(fileURL).openConnection();
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(15000);
            InputStream is = new BufferedInputStream(conn.getInputStream());
            FileOutputStream fos = new FileOutputStream(file);
            byte[] buffer = new byte[4096];
            while (true) {
                int bytesRead = is.read(buffer);
                if (bytesRead == -1) {
                    break;
                }
                fos.write(buffer, 0, bytesRead);
            }
            fos.close();
            if (conn != null) {
                conn.disconnect();
            }
            return true;
        } catch (IOException e) {
            Log.e("NetworkUtils", "error while downloading file " + e);
            if (conn != null) {
                conn.disconnect();
            }
            return false;
        } catch (Throwable th) {
            if (conn != null) {
                conn.disconnect();
            }
            throw th;
        }
    }
}
