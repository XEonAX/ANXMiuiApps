package com.xiaomi.micloudsdk.exception;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.opensdk.exception.ServerException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class CloudServerException extends ServerException {
    public int code;
    public int retryTime;
    public long serverDate;
    public int statusCode;

    public CloudServerException(int statusCode, Throwable cause) {
        super("status: " + statusCode, cause);
        this.statusCode = statusCode;
    }

    public CloudServerException(int statusCode) {
        super("status: " + statusCode);
        this.statusCode = statusCode;
    }

    public CloudServerException(int statusCode, String message) {
        super("status: " + statusCode + " message: " + message);
        this.statusCode = statusCode;
    }

    public CloudServerException(int statusCode, int code) {
        super("status: " + statusCode);
        this.statusCode = statusCode;
        this.code = code;
        this.retryTime = Integer.MAX_VALUE;
    }

    public CloudServerException(int statusCode, int code, int retryTime) {
        super("status: " + statusCode);
        this.statusCode = statusCode;
        this.code = code;
        this.retryTime = retryTime * 1000;
    }

    public CloudServerException(int statusCode, HttpResponse resp) {
        super("status: " + statusCode);
        this.statusCode = statusCode;
        if (resp != null) {
            try {
                Header header;
                if (resp.getStatusLine() != null && resp.getStatusLine().getStatusCode() == 503) {
                    header = resp.getFirstHeader("Retry-After");
                    if (!(header == null || TextUtils.isEmpty(header.getValue()))) {
                        this.retryTime = Integer.valueOf(header.getValue()).intValue() * 1000;
                    }
                }
                header = resp.getFirstHeader("Date");
                if (header != null) {
                    String dateString = header.getValue();
                    if (dateString != null) {
                        try {
                            this.serverDate = DateUtils.parseDate(dateString).getTime();
                        } catch (DateParseException e) {
                            Log.w("CloudServerException", "Error parsing server date", e);
                        }
                    }
                }
            } catch (NumberFormatException e2) {
                Log.d("CloudServerException", "Can't find retry time in 503 HttpURLConnection response");
            }
        }
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public static boolean isMiCloudServerException(int statusCode) {
        return statusCode == 400 || statusCode == 401 || statusCode == 403 || statusCode == 406 || statusCode / 100 == 5;
    }

    public boolean is5xxServerException() {
        return this.statusCode / 100 == 5;
    }

    public long get5xxServerExceptionRetryTime() {
        if (this.statusCode != 503 || this.retryTime <= 0) {
            return 2147483647L;
        }
        return (long) this.retryTime;
    }
}
