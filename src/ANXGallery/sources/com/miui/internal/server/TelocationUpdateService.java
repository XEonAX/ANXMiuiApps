package com.miui.internal.server;

import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.app.DownloadManager.Request;
import android.app.IntentService;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.miui.internal.util.DataUpdateUtils;
import com.miui.internal.util.DirectIndexedFileExtractor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.Key;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import miui.net.http.HttpSession;
import miui.os.C0002FileUtils;
import miui.security.DigestUtils;
import miui.telephony.phonenumber.ChineseTelocationConverter;
import miui.text.ExtraTextUtils;
import miui.util.AppConstants;
import miui.util.CoderUtils;
import miui.util.IOUtils;
import miui.util.Patcher;
import miui.util.async.Task;
import miui.util.async.TaskManager;
import miui.util.async.tasks.HttpJsonObjectTask;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import org.json.JSONException;
import org.json.JSONObject;

public class TelocationUpdateService extends IntentService {
    public static final String ACTION_TELOCATION_DOWNLOAD_COMPLETED = "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED";
    public static final String ACTION_UPDATE_TELOCATION = "com.miui.data.UPDATE_TELOCATION";
    private static final String TAG = "TelocationUpdateService";
    private static final String hG = "77eb2e8a5755abd016c0d69ba74b219c";
    private static final String iA = "telocation.idf";
    private static final String iB = "telocation-patch";
    private static final String iC = "telocation-old";
    private static final String iD = "telocation-new";
    private static final int iE = 3;
    private static final String iF = "ver";
    private static final String iG = "t";
    private static final String iH = "m";
    private static final String iI = "d101b17c77ff93cs";
    private static final int iJ = 436;
    private static final String iz;
    private long iK;
    private DownloadManager iL;
    private SharedPreferences iM;

    private static final class DownloadInfo {
        private static final String iN = "telocation_download_id";
        private static final String iO = "telocation_downloaded_file_md5";
        private static final String iP = "telocation_new_file_md5";
        private static final String iQ = "telocation_patch_type";
        public long iR;
        public String iS;
        public String iT;
        public int iU;

        public DownloadInfo(long j, String str, String str2, int i) {
            this.iS = str;
            this.iR = j;
            this.iT = str2;
            this.iU = i;
        }

        public void a(SharedPreferences sharedPreferences) {
            sharedPreferences.edit().putLong(iN, this.iR).putString(iO, this.iS).putString(iP, this.iT).putInt(iQ, this.iU).commit();
        }

        public static DownloadInfo b(SharedPreferences sharedPreferences) {
            DownloadInfo downloadInfo = new DownloadInfo();
            downloadInfo.iR = sharedPreferences.getLong(iN, -1);
            if (downloadInfo.iR == -1) {
                return null;
            }
            downloadInfo.iS = sharedPreferences.getString(iO, null);
            if (downloadInfo.iS == null) {
                return null;
            }
            downloadInfo.iT = sharedPreferences.getString(iP, null);
            if (downloadInfo.iT == null) {
                return null;
            }
            downloadInfo.iU = sharedPreferences.getInt(iQ, -1);
            if (downloadInfo.iU == -1) {
                return null;
            }
            return downloadInfo;
        }

        public static void c(SharedPreferences sharedPreferences) {
            sharedPreferences.edit().remove(iN).remove(iO).remove(iP).remove(iQ).commit();
        }
    }

    private static class TelocationUpdateActionResponse {
        public static final int iV = 0;
        public static final int iW = 1;
        public static final int iX = 0;
        public static final int iY = 1;
        public int action;
        public String description;
        public int iU;
        public boolean iZ;
        public int ja;
        public long jb;
        public long jc;
        public String jd;
        public String je;
        public String jf;
        public String jg;
        public long jh;

        private TelocationUpdateActionResponse() {
        }

        public static TelocationUpdateActionResponse a(JSONObject jSONObject) throws JSONException {
            TelocationUpdateActionResponse telocationUpdateActionResponse = new TelocationUpdateActionResponse();
            telocationUpdateActionResponse.iZ = jSONObject.optBoolean("result");
            telocationUpdateActionResponse.description = jSONObject.optString("description");
            if (telocationUpdateActionResponse.iZ) {
                telocationUpdateActionResponse.action = jSONObject.optInt("action");
                jSONObject = jSONObject.getJSONObject("info");
                telocationUpdateActionResponse.ja = jSONObject.optInt("serviceType");
                telocationUpdateActionResponse.iU = jSONObject.optInt("patchType");
                telocationUpdateActionResponse.jb = jSONObject.optLong("oldVersion");
                telocationUpdateActionResponse.jc = jSONObject.optLong("newVersion");
                telocationUpdateActionResponse.jd = jSONObject.optString("oldMd5Sum");
                telocationUpdateActionResponse.je = jSONObject.optString("newMd5Sum");
                telocationUpdateActionResponse.jf = jSONObject.optString("md5Sum");
                telocationUpdateActionResponse.jg = jSONObject.optString("fileURL");
                telocationUpdateActionResponse.jh = jSONObject.optLong("fileSize");
            }
            return telocationUpdateActionResponse;
        }
    }

    private static class TelocationUpdateResponse {
        private static final String ji = "ok";
        public String description;
        public String jj;
        public int jk;
        public TelocationUpdateActionResponse jl;

        private TelocationUpdateResponse() {
        }

        public static TelocationUpdateResponse q(String str) throws Exception {
            Task httpJsonObjectTask = new HttpJsonObjectTask(new HttpSession(), str);
            TaskManager.getDefault().add(httpJsonObjectTask);
            return b(httpJsonObjectTask.doLoad());
        }

        private static TelocationUpdateResponse b(JSONObject jSONObject) throws JSONException {
            TelocationUpdateResponse telocationUpdateResponse = new TelocationUpdateResponse();
            telocationUpdateResponse.jj = jSONObject.optString("result");
            if ("ok".equals(telocationUpdateResponse.jj)) {
                telocationUpdateResponse.jk = jSONObject.optInt(CommonResult.RESULT_CODE);
                telocationUpdateResponse.description = jSONObject.optString("description");
                Object h = TelocationUpdateService.g(jSONObject.optString("data"), TelocationUpdateService.iI);
                if (!TextUtils.isEmpty(h)) {
                    telocationUpdateResponse.jl = TelocationUpdateActionResponse.a(new JSONObject(h));
                }
            }
            return telocationUpdateResponse;
        }

        public boolean ae() {
            return "ok".equals(this.jj) && this.jl != null && this.jl.iZ && this.jl.action == 1;
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(DataUpdateManager.getBaseUrl());
        stringBuilder.append("/cspmisc/patch/info");
        iz = stringBuilder.toString();
    }

    public TelocationUpdateService() {
        super(TAG);
    }

    public void onCreate() {
        super.onCreate();
        this.iL = (DownloadManager) getSystemService("download");
        this.iM = PreferenceManager.getDefaultSharedPreferences(this);
    }

    protected void onHandleIntent(Intent intent) {
        String action = intent.getAction();
        this.iK = (long) ChineseTelocationConverter.getInstance().getVersion();
        if (ACTION_UPDATE_TELOCATION.equals(action)) {
            try {
                g(false);
            } catch (Exception e) {
                Log.v(TAG, "Telocation requestUpdate failed");
                e.printStackTrace();
            }
        } else if (ACTION_TELOCATION_DOWNLOAD_COMPLETED.equals(action)) {
            DownloadInfo b = DownloadInfo.b(this.iM);
            long longExtra = intent.getLongExtra("extra_download_id", 0);
            if (b != null && longExtra == b.iR) {
                try {
                    a(b);
                } catch (Exception e2) {
                    Log.v(TAG, "Telocation applyUpdate failed");
                    e2.printStackTrace();
                }
            }
        }
    }

    private void g(boolean z) throws Exception {
        Map hashMap = new HashMap(3);
        hashMap.put(iF, String.valueOf(this.iK));
        hashMap.put(iG, String.valueOf(3));
        String a = a(ad());
        if (a != null) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Local file md5 : ");
            stringBuilder.append(a);
            Log.v(str, stringBuilder.toString());
            hashMap.put(iH, z ? "-1" : a.toLowerCase());
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(iz);
            stringBuilder2.append("?");
            stringBuilder2.append(DataUpdateUtils.getSignedUrl(hashMap, getPackageName(), hG));
            TelocationUpdateResponse q = TelocationUpdateResponse.q(stringBuilder2.toString());
            if (q.ae()) {
                TelocationUpdateActionResponse telocationUpdateActionResponse = q.jl;
                String str2 = telocationUpdateActionResponse.jg;
                a = telocationUpdateActionResponse.jf;
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Patch file md5: ");
                stringBuilder.append(a);
                Log.d(str, stringBuilder.toString());
                if (DownloadInfo.b(this.iM) != null) {
                    this.iL.remove(new long[]{DownloadInfo.b(this.iM).iR});
                }
                new DownloadInfo(o(str2), telocationUpdateActionResponse.jf, telocationUpdateActionResponse.je, telocationUpdateActionResponse.iU).a(this.iM);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00a3 A:{SYNTHETIC, Splitter: B:36:0x00a3} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(DownloadInfo downloadInfo) throws IOException {
        Throwable th;
        Query query = new Query();
        query.setFilterById(new long[]{downloadInfo.iR});
        Cursor query2 = this.iL.query(query);
        if (query2 != null && query2.getCount() > 0) {
            try {
                query2.moveToFirst();
                if (query2.getInt(query2.getColumnIndex("status")) == 8) {
                    query2.close();
                    File file = new File(getCacheDir(), iB);
                    FileInputStream fileInputStream = null;
                    try {
                        InputStream fileInputStream2 = new FileInputStream(this.iL.openDownloadedFile(downloadInfo.iR).getFileDescriptor());
                        try {
                            if (C0002FileUtils.copyToFile(fileInputStream2, file)) {
                                boolean c;
                                try {
                                    fileInputStream2.close();
                                } catch (Exception e) {
                                }
                                String str = downloadInfo.iT;
                                if (downloadInfo.iU == 0) {
                                    c = c(downloadInfo.iS, str, file.getAbsolutePath());
                                } else if (downloadInfo.iU == 1) {
                                    c = c(downloadInfo.iS, file.getAbsolutePath());
                                } else {
                                    c = false;
                                }
                                if (c) {
                                    this.iL.remove(new long[]{downloadInfo.iR});
                                    DownloadInfo.c(this.iM);
                                }
                                return;
                            }
                            try {
                                fileInputStream2.close();
                            } catch (Exception e2) {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e3) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileInputStream != null) {
                        }
                        throw th;
                    }
                }
            } finally {
                query2.close();
            }
        }
    }

    private boolean c(String str, String str2, String str3) throws IOException {
        InputStream inputStream;
        Throwable th;
        String p = p(str3);
        boolean z = false;
        if (p == null || !p.equalsIgnoreCase(str)) {
            str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Error: patch file md5 mismatch: ");
            stringBuilder.append(p);
            Log.d(str, stringBuilder.toString());
        } else {
            File file = new File(getCacheDir().getAbsolutePath(), iC);
            File file2 = new File(getCacheDir().getAbsolutePath(), iD);
            int i = 3;
            while (i > 0) {
                inputStream = null;
                try {
                    InputStream ad = ad();
                    try {
                        C0002FileUtils.copyToFile(ad, file);
                        IOUtils.closeQuietly(ad);
                        try {
                            if (new Patcher().applyPatch(file.getAbsolutePath(), file2.getAbsolutePath(), str3) == 0) {
                                z = f(file2.getAbsolutePath(), str2);
                                String str4 = TAG;
                                StringBuilder stringBuilder2 = new StringBuilder();
                                stringBuilder2.append("Telocation Patch Update from ");
                                stringBuilder2.append(this.iK);
                                stringBuilder2.append(" to ");
                                stringBuilder2.append(ChineseTelocationConverter.getInstance().getVersion());
                                stringBuilder2.append(", result : ");
                                stringBuilder2.append(z);
                                Log.v(str4, stringBuilder2.toString());
                            }
                            file.delete();
                            file2.delete();
                            if (z) {
                                break;
                            }
                            i--;
                        } catch (Throwable th2) {
                            file.delete();
                            file2.delete();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = ad;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            new File(str3).delete();
        }
        if (!z) {
            try {
                g(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return z;
        IOUtils.closeQuietly(inputStream);
        throw th;
    }

    private boolean c(String str, String str2) throws IOException {
        boolean f = f(str2, str);
        str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Telocation Full Update from ");
        stringBuilder.append(this.iK);
        stringBuilder.append(" to ");
        stringBuilder.append(ChineseTelocationConverter.getInstance().getVersion());
        stringBuilder.append(", result : ");
        stringBuilder.append(f);
        Log.v(str2, stringBuilder.toString());
        return f;
    }

    private boolean f(String str, String str2) {
        String p = p(str);
        if (p == null || !p.equalsIgnoreCase(str2)) {
            str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Error: new telocation file md5 mismatch: ");
            stringBuilder.append(p);
            Log.w(str, stringBuilder.toString());
            return false;
        }
        boolean replaceDirectIndexedFile = DirectIndexedFileExtractor.replaceDirectIndexedFile(this, str, iA);
        if (replaceDirectIndexedFile) {
            ChineseTelocationConverter.reloadInstance();
        } else {
            new File(str).delete();
            Log.w(TAG, "replaceTelocationFile fail");
        }
        return replaceDirectIndexedFile;
    }

    private long o(String str) {
        Request request = new Request(Uri.parse(str));
        request.setAllowedOverMetered(false);
        request.setAllowedOverRoaming(false);
        request.setAllowedNetworkTypes(2);
        request.setNotificationVisibility(2);
        request.setVisibleInDownloadsUi(false);
        return this.iL.enqueue(request);
    }

    private InputStream ad() throws IOException {
        String directIndexedFilePath = DirectIndexedFileExtractor.getDirectIndexedFilePath(AppConstants.getCurrentApplication(), iA);
        if (directIndexedFilePath == null || !new File(directIndexedFilePath).exists()) {
            return AppConstants.getCurrentApplication().getResources().getAssets().open(iA);
        }
        return new FileInputStream(new File(directIndexedFilePath));
    }

    private static String p(String str) {
        try {
            return a(new FileInputStream(str));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String a(InputStream inputStream) {
        try {
            String toHexReadable = ExtraTextUtils.toHexReadable(DigestUtils.get(inputStream, "MD5"));
            if (inputStream == null) {
                return toHexReadable;
            }
            try {
                inputStream.close();
                return toHexReadable;
            } catch (IOException e) {
                e.printStackTrace();
                return toHexReadable;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e32) {
                    e32.printStackTrace();
                }
            }
        }
    }

    private static String g(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        byte[] bytes = str2.getBytes();
        if (bytes == null || bytes.length != 16) {
            return null;
        }
        Key secretKeySpec = new SecretKeySpec(bytes, "AES");
        try {
            Cipher instance = Cipher.getInstance(CoderUtils.AES_ALGORITHM);
            instance.init(2, secretKeySpec, new IvParameterSpec("0102030405060708".getBytes()));
            byte[] decode = Base64.decode(str, 0);
            if (decode == null) {
                return null;
            }
            return new String(instance.doFinal(decode));
        } catch (Exception e) {
            return null;
        }
    }
}
