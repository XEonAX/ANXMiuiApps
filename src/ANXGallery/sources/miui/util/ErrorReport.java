package miui.util;

import android.app.ActivityManager.ProcessErrorStateInfo;
import android.app.ApplicationErrorReport.CrashInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.util.DeviceHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import miui.net.ConnectivityHelper;
import miui.os.C0004SystemProperties;
import miui.os.DropBoxManager;
import miui.provider.ExtraSettings.Secure;
import miui.security.DigestUtils;
import miui.telephony.TelephonyHelper;
import miui.text.ExtraTextUtils;
import org.json.JSONObject;

public class ErrorReport {
    public static final String DROPBOX_TAG = "fc_anr";
    public static final int FLAG_SEND_DIRECTLY = 2;
    public static final int FLAG_UNMETERED_NETWORK_ONLY = 1;
    private static final String IF = "network";
    private static final String IG = "device";
    private static final String IH = "model";
    private static final String II = "mac_address";
    private static final String IJ = "imei";
    private static final String IK = "platform";
    private static final String IP = "build_version";
    private static final String IU = "package_name";
    private static final String IV = "app_version";
    private static final String IW = "error_type";
    private static final String IX = "exception_class";
    private static final String IY = "exception_source_method";
    private static final String IZ = "anr_cause";
    private static final String Ja = "anr_activity";
    private static final String Jb = "stack_track";
    private static final String Jc = "wifi_state";
    private static final String Jd = "user_allowed";
    private static final String Je = "fc";
    private static final String Jf = "anr";
    private static final int Jg = 300;
    private static final String TAG = "ErrorReport";

    private interface DataBuilder {
        JSONObject dt();
    }

    private static class AnrDataBuilder implements DataBuilder {
        private Context Jj;
        private String Jk;
        private ProcessErrorStateInfo Jl;

        public AnrDataBuilder(Context context, String str, ProcessErrorStateInfo processErrorStateInfo) {
            this.Jj = context;
            this.Jk = str;
            this.Jl = processErrorStateInfo;
        }

        public JSONObject dt() {
            return ErrorReport.getAnrData(this.Jj, this.Jk, this.Jl);
        }
    }

    private static class ExceptionDataBuilder implements DataBuilder {
        private Context Jj;
        private String Jk;
        private CrashInfo Jm;

        public ExceptionDataBuilder(Context context, String str, CrashInfo crashInfo) {
            this.Jj = context;
            this.Jk = str;
            this.Jm = crashInfo;
        }

        public JSONObject dt() {
            return ErrorReport.getExceptionData(this.Jj, this.Jk, this.Jm);
        }
    }

    protected ErrorReport() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static void sendExceptionReport(Context context, Throwable th) {
        if (th != null) {
            sendExceptionReport(context, context.getPackageName(), new CrashInfo(th), 1);
            return;
        }
        throw new IllegalArgumentException("throwable can't be null");
    }

    public static void sendExceptionReport(Context context, String str, CrashInfo crashInfo, int i) {
        if (crashInfo == null) {
            throw new IllegalArgumentException("crashInfo can't be null");
        } else if (isUserAllowed(context)) {
            try {
                a(context, new ExceptionDataBuilder(context, str, crashInfo), i);
            } catch (Throwable e) {
                Log.w(TAG, "Fail to sendExceptionReport", e);
            }
        }
    }

    public static void sendAnrReport(Context context, ProcessErrorStateInfo processErrorStateInfo, int i) {
        if (processErrorStateInfo == null) {
            throw new IllegalArgumentException("state can't be null");
        } else if (isUserAllowed(context)) {
            try {
                a(context, new AnrDataBuilder(context, context.getPackageName(), processErrorStateInfo), i);
            } catch (Throwable e) {
                Log.w(TAG, "Fail to sendAnrReport", e);
            }
        }
    }

    private static JSONObject f(Context context, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IF, r(context));
            jSONObject.put("device", dq());
            jSONObject.put(IH, getModel());
            jSONObject.put(II, dr());
            jSONObject.put(IJ, ds());
            jSONObject.put(IK, VERSION.RELEASE);
            jSONObject.put(IP, VERSION.INCREMENTAL);
            jSONObject.put("package_name", str);
            jSONObject.put(IV, g(context, str));
            jSONObject.put(Jc, ConnectivityHelper.getInstance().isWifiConnected());
            jSONObject.put(Jd, isUserAllowed(context));
        } catch (Throwable e) {
            Log.w(TAG, "Fail to getCommonData", e);
        }
        return jSONObject;
    }

    public static JSONObject getExceptionData(Context context, String str, CrashInfo crashInfo) {
        if (crashInfo == null) {
            return null;
        }
        JSONObject f = f(context, str);
        try {
            f.put("error_type", Je);
            f.put(IX, crashInfo.exceptionClassName);
            str = IY;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(crashInfo.throwClassName);
            stringBuilder.append(".");
            stringBuilder.append(crashInfo.throwMethodName);
            f.put(str, stringBuilder.toString());
            f.put(Jb, crashInfo.stackTrace);
        } catch (Throwable e) {
            Log.w(TAG, "Fail to getExceptionData", e);
        }
        return f;
    }

    public static JSONObject getAnrData(Context context, String str, ProcessErrorStateInfo processErrorStateInfo) {
        if (processErrorStateInfo == null) {
            return null;
        }
        JSONObject f = f(context, str);
        try {
            f.put("error_type", "anr");
            f.put(IZ, processErrorStateInfo.shortMsg);
            f.put(Ja, processErrorStateInfo.tag == null ? "" : processErrorStateInfo.tag);
            f.put(Jb, dp());
        } catch (Throwable e) {
            Log.w(TAG, "Fail to getAnrData", e);
        }
        return f;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x006b A:{SYNTHETIC, Splitter: B:34:0x006b} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0060 A:{SYNTHETIC, Splitter: B:27:0x0060} */
    /* JADX WARNING: Missing block: B:14:0x003f, code:
            if (r4.startsWith("-----") != false) goto L_0x0054;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String dp() throws IOException {
        Throwable th;
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = C0004SystemProperties.get("dalvik.vm.stack-trace-file", null);
        if (!TextUtils.isEmpty(obj)) {
            BufferedReader bufferedReader;
            try {
                bufferedReader = new BufferedReader(new FileReader(new File(obj)));
                Object obj2 = null;
                int i = 0;
                do {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            if (readLine.startsWith("DALVIK THREADS:")) {
                                obj2 = 1;
                            } else if (obj2 != null) {
                            }
                            if (obj2 != null) {
                                stringBuilder.append(readLine);
                                stringBuilder.append(10);
                                i++;
                            }
                        }
                        break;
                    } catch (IOException e) {
                        if (bufferedReader != null) {
                        }
                        return stringBuilder.toString();
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                        }
                        throw th;
                    }
                } while (i <= 300);
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                }
            } catch (IOException e3) {
                bufferedReader = null;
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                return stringBuilder.toString();
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        }
        return stringBuilder.toString();
    }

    private static String r(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    private static String dq() {
        String str = C0004SystemProperties.get("ro.product.mod_device", null);
        return TextUtils.isEmpty(str) ? Build.DEVICE : str;
    }

    private static String getModel() {
        return Build.MODEL;
    }

    private static String dr() {
        CharSequence macAddress = ConnectivityHelper.getInstance().getMacAddress();
        String str = "";
        if (TextUtils.isEmpty(macAddress)) {
            return str;
        }
        return ExtraTextUtils.toHexReadable(DigestUtils.get(macAddress, "MD5"));
    }

    private static String ds() {
        CharSequence deviceId = TelephonyHelper.getInstance().getDeviceId();
        String str = "";
        if (TextUtils.isEmpty(deviceId)) {
            return str;
        }
        return ExtraTextUtils.toHexReadable(DigestUtils.get(deviceId, "MD5"));
    }

    private static String g(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if ((packageInfo.applicationInfo.flags & 1) != 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
                return VERSION.INCREMENTAL;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(packageInfo.versionName);
            stringBuilder.append(" (");
            stringBuilder.append(packageInfo.versionCode);
            stringBuilder.append(")");
            return stringBuilder.toString();
        } catch (Throwable e) {
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Fail to find package: ");
            stringBuilder2.append(str);
            Log.w(str2, stringBuilder2.toString(), e);
            return "";
        }
    }

    public static boolean sendReportRequest(Context context, JSONObject jSONObject, int i) {
        if (jSONObject != null) {
            if ((i & 2) == 0) {
                a(context, jSONObject);
            }
            return false;
        }
        throw new IllegalArgumentException("data can't be null");
    }

    private static void a(final Context context, final DataBuilder dataBuilder, final int i) {
        new AsyncTask<Void, Void, Void>() {
            /* renamed from: a */
            protected Void doInBackground(Void... voidArr) {
                ErrorReport.sendReportRequest(context, dataBuilder.dt(), i);
                return null;
            }
        }.execute(new Void[0]);
    }

    private static void a(Context context, JSONObject jSONObject) {
        if ("1".equals(C0004SystemProperties.get("sys.boot_completed"))) {
            DropBoxManager.getInstance().addText(DROPBOX_TAG, jSONObject.toString());
        } else {
            Log.w(TAG, "Can not request dropbox before boot completed!");
        }
    }

    public static boolean isUserAllowed(Context context) {
        return Secure.getInt(context.getContentResolver(), Secure.UPLOAD_LOG, DeviceHelper.IS_DEVELOPMENT_VERSION) != 0;
    }
}
