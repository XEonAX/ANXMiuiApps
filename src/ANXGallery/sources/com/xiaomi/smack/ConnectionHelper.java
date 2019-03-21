package com.xiaomi.smack;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

public class ConnectionHelper {
    public static int asErrorCode(Throwable e) {
        Throwable throwable = e;
        if ((throwable instanceof XMPPException) && ((XMPPException) throwable).getWrappedThrowable() != null) {
            throwable = ((XMPPException) throwable).getWrappedThrowable();
        }
        String cause = throwable.getMessage();
        if (throwable.getCause() != null) {
            cause = throwable.getCause().getMessage();
        }
        if (throwable instanceof SocketTimeoutException) {
            return BaiduSceneResult.TEMPLE;
        }
        if (throwable instanceof SocketException) {
            if (cause.indexOf("Network is unreachable") != -1) {
                return BaiduSceneResult.TAEKWONDO;
            }
            if (cause.indexOf("Connection refused") != -1) {
                return BaiduSceneResult.MOUNTAINEERING;
            }
            if (cause.indexOf("Connection timed out") != -1) {
                return BaiduSceneResult.TEMPLE;
            }
            if (cause.endsWith("EACCES (Permission denied)")) {
                return BaiduSceneResult.SHOOTING;
            }
            if (cause.indexOf("Connection reset by peer") != -1) {
                return BaiduSceneResult.CHURCH;
            }
            if (cause.indexOf("Broken pipe") != -1) {
                return BaiduSceneResult.CASTLE;
            }
            if (cause.indexOf("No route to host") != -1) {
                return BaiduSceneResult.SPORTS_OTHER;
            }
            if (cause.endsWith("EINVAL (Invalid argument)")) {
                return BaiduSceneResult.PALACE;
            }
            return 199;
        } else if (throwable instanceof UnknownHostException) {
            return BaiduSceneResult.GARDEN;
        } else {
            if (e instanceof XMPPException) {
                return 399;
            }
            return 0;
        }
    }
}
