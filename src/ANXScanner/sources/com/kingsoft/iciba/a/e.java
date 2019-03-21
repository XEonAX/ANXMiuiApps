package com.kingsoft.iciba.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import com.kingsoft.iciba.a.a.a;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.Vector;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e {
    private static e b;
    private Context a;
    private boolean c = true;
    private Vector d;
    private i e;
    private long f;

    private e(Context context) {
        this.a = context;
        this.d = new Vector();
        this.e = new i(this);
        this.e.start();
    }

    public static e a(Context context, long j) {
        if (b == null) {
            b = new e(context);
        }
        b.a = context;
        b.f = j;
        return b;
    }

    /* JADX WARNING: Missing block: B:3:0x000a, code:
            if (r3 != null) goto L_0x000c;
     */
    /* JADX WARNING: Missing block: B:5:0x0010, code:
            if (r3.hasMoreElements() == false) goto L_0x0052;
     */
    /* JADX WARNING: Missing block: B:6:0x0012, code:
            r4 = ((java.net.NetworkInterface) r3.nextElement()).getInetAddresses();
     */
    /* JADX WARNING: Missing block: B:8:0x0020, code:
            if (r4.hasMoreElements() == false) goto L_0x000c;
     */
    /* JADX WARNING: Missing block: B:9:0x0022, code:
            r0 = (java.net.InetAddress) r4.nextElement();
     */
    /* JADX WARNING: Missing block: B:10:0x002c, code:
            if (r0.isLoopbackAddress() != false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:12:0x0032, code:
            if (r0.isLinkLocalAddress() != false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:14:0x0038, code:
            if (r0.isSiteLocalAddress() == false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:15:0x003a, code:
            r2.add(r0.getHostAddress().toString());
     */
    /* JADX WARNING: Missing block: B:22:0x0057, code:
            if (r2.size() != 1) goto L_0x0061;
     */
    /* JADX WARNING: Missing block: B:25:0x0066, code:
            if (r2.size() < 2) goto L_0x0092;
     */
    /* JADX WARNING: Missing block: B:26:0x0068, code:
            r3 = r2.iterator();
     */
    /* JADX WARNING: Missing block: B:28:0x0070, code:
            if (r3.hasNext() == false) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:29:0x0072, code:
            r0 = (java.lang.String) r3.next();
     */
    /* JADX WARNING: Missing block: B:30:0x007e, code:
            if (r0.startsWith("192") == false) goto L_0x006c;
     */
    /* JADX WARNING: Missing block: B:31:0x0080, code:
            r1 = r0;
     */
    /* JADX WARNING: Missing block: B:32:0x0081, code:
            if (r1 != null) goto L_0x0090;
     */
    /* JADX WARNING: Missing block: B:36:0x008b, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:37:0x008c, code:
            r6 = r0;
            r0 = r1;
            r1 = r6;
     */
    /* JADX WARNING: Missing block: B:49:?, code:
            return (java.lang.String) r2.get(0);
     */
    /* JADX WARNING: Missing block: B:50:?, code:
            return r1;
     */
    /* JADX WARNING: Missing block: B:51:?, code:
            return null;
     */
    /* JADX WARNING: Missing block: B:52:?, code:
            return (java.lang.String) r2.get(0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a() {
        String str = null;
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (Throwable e) {
            Throwable th = e;
            String str2 = null;
            Throwable th2 = th;
            Log.e("Utils", "Get device ip failed", th2);
            return str2;
        }
    }

    private static String a(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences("iciba", 0).getString(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    private static String a(h hVar) {
        if (hVar.d == null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("status", 0);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject.put(LoginConstants.MESSAGE, jSONObject2);
                jSONObject2.put("result_info", "获取释义失败");
                jSONObject2.put("word_name", hVar.a);
                return jSONObject.toString();
            } catch (Throwable e) {
                Log.e("NetSearchManage", "Create Json failed", e);
                return null;
            }
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("status", 1);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject3.put(LoginConstants.MESSAGE, jSONObject4);
            jSONObject4.put("result_info", "获取释义成功");
            jSONObject4.put("word_name", hVar.a);
            Iterator it = hVar.d.iterator();
            while (it.hasNext()) {
                SimpleEntry simpleEntry = (SimpleEntry) it.next();
                jSONObject4.put((String) simpleEntry.getKey(), new JSONObject((String) simpleEntry.getValue()));
            }
            return jSONObject3.toString();
        } catch (Throwable e2) {
            Log.e("NetSearchManage", "Create Json failed", e2);
            return null;
        }
    }

    public static String a(InputStream inputStream) {
        String byteArrayOutputStream;
        Throwable e;
        Throwable th;
        try {
            OutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(16384);
            try {
                a(inputStream, byteArrayOutputStream2);
                byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                try {
                    byteArrayOutputStream2.close();
                } catch (Exception e2) {
                    e = e2;
                    Log.e("Utils", "Load string from stream failed", e);
                    return byteArrayOutputStream;
                }
                return byteArrayOutputStream;
            } catch (Throwable e3) {
                Throwable th2 = e3;
                e3 = th;
                th = th2;
            }
            throw th;
            if (e3 != null) {
                try {
                    byteArrayOutputStream2.close();
                } catch (Throwable th3) {
                    e3.addSuppressed(th3);
                }
            } else {
                byteArrayOutputStream2.close();
            }
            throw th;
        } catch (Throwable th4) {
            e3 = th4;
            byteArrayOutputStream = null;
        }
    }

    private String a(JSONObject jSONObject, h hVar) {
        try {
            if (jSONObject.optJSONObject(LoginConstants.MESSAGE) != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject optJSONObject = ((JSONObject) jSONObject.get(LoginConstants.MESSAGE)).optJSONObject("baesInfo");
                if (optJSONObject == null && hVar.d == null) {
                    jSONObject2.put("status", 0);
                    optJSONObject = new JSONObject();
                    jSONObject2.put(LoginConstants.MESSAGE, optJSONObject);
                    optJSONObject.put("word_name", hVar.a);
                    optJSONObject.put("result_info", "获取释义失败");
                } else {
                    jSONObject2.put("status", 1);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject2.put(LoginConstants.MESSAGE, jSONObject3);
                    jSONObject3.put("word_name", hVar.a);
                    jSONObject3.put("result_info", "获取释义成功");
                    if (optJSONObject != null) {
                        jSONObject3.put("baseInfo", a(optJSONObject));
                    }
                    if (hVar.d != null) {
                        Iterator it = hVar.d.iterator();
                        while (it.hasNext()) {
                            SimpleEntry simpleEntry = (SimpleEntry) it.next();
                            jSONObject3.put((String) simpleEntry.getKey(), new JSONObject((String) simpleEntry.getValue()));
                        }
                    }
                }
                return jSONObject2.toString();
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static JSONObject a(JSONObject jSONObject) {
        int i = 0;
        JSONObject jSONObject2 = new JSONObject();
        try {
            int i2;
            if (jSONObject.isNull("translate_type")) {
                jSONObject2.put("translate_type", 1);
                i2 = 1;
            } else {
                i2 = jSONObject.getInt("translate_type");
                jSONObject2.put("translate_type", i2);
            }
            if (i2 == 1) {
                JSONObject jSONObject3;
                if (!jSONObject.isNull("exchange")) {
                    JSONObject jSONObject4 = jSONObject.getJSONObject("exchange");
                    jSONObject3 = new JSONObject();
                    for (String str : b.b) {
                        if (!jSONObject4.isNull(str) && jSONObject4.getJSONArray(str).length() > 0) {
                            jSONObject3.put(str, jSONObject4.getJSONArray(str));
                        }
                    }
                    if (jSONObject3.length() > 0) {
                        jSONObject2.put("exchange", jSONObject3);
                    }
                }
                if (!jSONObject.isNull("symbols")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("symbols");
                    JSONArray jSONArray2 = new JSONArray();
                    while (i < jSONArray.length()) {
                        jSONObject3 = new JSONObject();
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                        if (jSONObject5.isNull("word_symbol")) {
                            if (!(jSONObject5.isNull("ph_en") || TextUtils.isEmpty(jSONObject5.getString("ph_en")))) {
                                jSONObject3.put("ph_en", jSONObject5.getString("ph_en"));
                            }
                            if (!(jSONObject5.isNull("ph_am") || TextUtils.isEmpty(jSONObject5.getString("ph_am")))) {
                                jSONObject3.put("ph_am", jSONObject5.getString("ph_am"));
                            }
                            if (!(jSONObject5.isNull("ph_other") || TextUtils.isEmpty(jSONObject5.getString("ph_other")))) {
                                jSONObject3.put("ph_other", jSONObject5.getString("ph_other"));
                            }
                        } else {
                            jSONObject3.put("word_symbol", jSONObject5.getString("word_symbol"));
                        }
                        if (!jSONObject5.isNull("parts") && jSONObject5.getJSONArray("parts").length() > 0) {
                            jSONObject3.put("parts", jSONObject5.getJSONArray("parts"));
                        }
                        if (jSONObject3.length() > 0) {
                            jSONArray2.put(jSONObject3);
                        }
                        i++;
                    }
                    if (jSONArray2.length() > 0) {
                        jSONObject2.put("symbols", jSONArray2);
                    }
                }
            } else if (i2 == 2) {
                if (!jSONObject.isNull(UsageStatistics.KEY_TRANSLATE_RESULT)) {
                    jSONObject2.put(UsageStatistics.KEY_TRANSLATE_RESULT, jSONObject.getString(UsageStatistics.KEY_TRANSLATE_RESULT));
                }
                if (!jSONObject.isNull("translate_msg")) {
                    jSONObject2.put("translate_msg", jSONObject.getString("translate_msg"));
                }
            } else if (i2 == 3 && !jSONObject.isNull("suggest")) {
                jSONObject2.put("suggest", jSONObject.getJSONArray("suggest"));
            }
        } catch (Throwable e) {
            Log.e("NetSearchManage", "Transform Json failed", e);
        }
        return jSONObject2;
    }

    public static void a(Context context, String str, long j) {
        File file = new File(str + File.separator + "iciba_statistics");
        if (file.exists() && file.length() > 2097152) {
            file.delete();
        } else if (a(context)) {
            new Thread(new j(file, context, j)).start();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x004c A:{Catch:{ all -> 0x004c, all -> 0x0029 }, ExcHandler: all (th java.lang.Throwable), Splitter: B:3:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0057 A:{Catch:{ IOException -> 0x0032, Exception -> 0x003e }} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x002e A:{SYNTHETIC, Splitter: B:26:0x002e} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:27:?, code:
            r3.close();
     */
    /* JADX WARNING: Missing block: B:39:0x0047, code:
            r4 = move-exception;
     */
    /* JADX WARNING: Missing block: B:41:?, code:
            r1.addSuppressed(r4);
     */
    /* JADX WARNING: Missing block: B:42:0x004c, code:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:44:0x0052, code:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:46:?, code:
            r2.addSuppressed(r1);
     */
    /* JADX WARNING: Missing block: B:47:0x0057, code:
            r3.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(InputStream inputStream, OutputStream outputStream) {
        Throwable th;
        Throwable th2;
        Throwable th3 = null;
        byte[] bArr = new byte[4096];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
                while (true) {
                    try {
                        int read = bufferedInputStream.read(bArr);
                        if (read != -1) {
                            bufferedOutputStream.write(bArr, 0, read);
                        } else {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            return;
                        }
                    } catch (Throwable th22) {
                        Throwable th4 = th22;
                        th22 = th;
                        th = th4;
                    }
                }
                if (th22 != null) {
                    bufferedOutputStream.close();
                } else {
                    bufferedOutputStream.close();
                }
                throw th;
                throw th;
                throw th;
                if (th3 == null) {
                }
                throw th;
            } catch (Throwable th222) {
                th3 = th;
                th = th222;
            }
        } catch (IOException e) {
        } catch (Throwable th5) {
            Log.e("Utils", "Copy data failed", th5);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x00d3 A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x005a A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00da A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0069 A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00be A:{Catch:{ Exception -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ac A:{SYNTHETIC, Splitter: B:40:0x00ac} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(String str) {
        HashMap hashMap;
        Throwable th;
        Throwable th2;
        JSONObject jSONObject;
        ObjectOutputStream objectOutputStream;
        Throwable th3 = null;
        File file = new File(b.a + File.separator + "iciba_statistics");
        try {
            HashMap hashMap2;
            if (!file.exists() || file.length() <= 0) {
                hashMap = new HashMap();
            } else {
                try {
                    ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
                    try {
                        HashMap hashMap3 = (HashMap) objectInputStream.readObject();
                        if (hashMap3 != null) {
                            try {
                                if (hashMap3.size() != 0) {
                                    hashMap2 = hashMap3;
                                    objectInputStream.close();
                                    hashMap = hashMap2;
                                }
                            } catch (Throwable th4) {
                                hashMap2 = hashMap3;
                                th2 = th4;
                                th4 = null;
                                if (th4 == null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                } else {
                                    objectInputStream.close();
                                }
                                throw th2;
                            }
                        }
                        hashMap2 = new HashMap();
                        try {
                            objectInputStream.close();
                            hashMap = hashMap2;
                        } catch (Exception e) {
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        th4 = null;
                        hashMap2 = null;
                        if (th4 == null) {
                        }
                        throw th2;
                    }
                } catch (Exception e2) {
                    hashMap2 = null;
                    try {
                        file.delete();
                        file.createNewFile();
                        hashMap = hashMap2;
                    } catch (Throwable th22) {
                        Log.e("KStatistics", "Create or delete file failed", th22);
                        hashMap = hashMap2;
                    }
                    if (hashMap.containsKey("click_event")) {
                    }
                    if (hashMap2.containsKey(str)) {
                    }
                    hashMap2.put(str, jSONObject.toString());
                    hashMap.put("click_event", hashMap2);
                    objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                    objectOutputStream.writeObject(hashMap);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    return;
                }
            }
            hashMap2 = hashMap.containsKey("click_event") ? (HashMap) hashMap.get("click_event") : new HashMap();
            if (hashMap2.containsKey(str)) {
                JSONObject jSONObject2 = new JSONObject((String) hashMap2.get(str));
                jSONObject2.put("click_number", jSONObject2.getInt("click_number") + 1);
                jSONObject = jSONObject2;
            } else {
                jSONObject = new JSONObject();
                jSONObject.put("click_number", 1);
            }
            hashMap2.put(str, jSONObject.toString());
            hashMap.put("click_event", hashMap2);
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                try {
                    objectOutputStream.writeObject(hashMap);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    return;
                } catch (Throwable th42) {
                    th3 = th22;
                    th22 = th42;
                }
                if (th3 != null) {
                    try {
                        objectOutputStream.close();
                    } catch (Throwable th422) {
                        th3.addSuppressed(th422);
                    }
                } else {
                    objectOutputStream.close();
                }
                throw th22;
                throw th22;
            } catch (Throwable th222) {
                Log.e("KStatistics", "Write file failed", th222);
            }
        } catch (Throwable th2222) {
            Log.e("KStatistics", "Add click event failed", th2222);
        }
    }

    public static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return (!activeNetworkInfo.getTypeName().toUpperCase().equals("MOBILE") || activeNetworkInfo.getExtraInfo() == null) ? true : true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean a(Context context, String str) {
        if (str == null || context == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        } catch (Throwable e2) {
            Log.e("Utils", "Get app installed state failed", e2);
            return false;
        }
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(a(context, "uuid", ""))) {
            return a(context, "uuid", "");
        }
        String replaceAll = UUID.randomUUID().toString().trim().replaceAll("-", "");
        String str = "uuid";
        try {
            Editor edit = context.getSharedPreferences("iciba", 0).edit();
            edit.putString(str, replaceAll);
            edit.commit();
            return replaceAll;
        } catch (Exception e) {
            e.printStackTrace();
            return replaceAll;
        }
    }

    private static String b(Context context, JSONObject jSONObject, long j) {
        JSONObject jSONObject2 = new JSONObject();
        Long valueOf = Long.valueOf(System.currentTimeMillis() / 1000);
        try {
            jSONObject2.put("protocol", 2);
            jSONObject2.put("userip", a());
            jSONObject2.put(TUnionNetworkRequest.TUNION_KEY_CID, 7);
            jSONObject2.put(AppLinkConstants.TIME, valueOf);
            jSONObject2.put("uuid", b(context));
            jSONObject2.put("p", Long.toString(j));
            jSONObject2.put("package_name", c(context));
            jSONObject2.put("sign", c(b(context) + 7 + valueOf + "icibaclient_#&$%"));
            jSONObject2.put("g", (context instanceof Activity ? ((Activity) context).getWindowManager().getDefaultDisplay().getWidth() : 0) + "*" + (context instanceof Activity ? ((Activity) context).getWindowManager().getDefaultDisplay().getHeight() : 0));
            jSONObject2.put("n", k.a(context));
            String str = "m";
            Object obj = Build.MODEL;
            if (Boolean.valueOf(Pattern.compile("(\\d.*?)").matcher(obj).matches()).booleanValue()) {
                obj = e("persist.sys.device_name");
            }
            jSONObject2.put(str, obj);
            jSONObject2.put("s", VERSION.RELEASE);
            jSONObject2.put("ver", "4.0");
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            jSONObject2.put("events", jSONArray);
            jSONArray = new JSONArray();
            if (a(context, "com.youdao.dict")) {
                jSONArray.put(1);
            }
            if (a(context, "com.kingsoft")) {
                jSONArray.put(2);
            }
            jSONObject2.put("c", jSONArray);
            jSONObject2.put("error", new JSONArray());
            jSONObject2.put("history", new JSONArray());
        } catch (Throwable e) {
            Log.e("KStatistics", "Create data failed", e);
        }
        return jSONObject2.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x00d3 A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x005a A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00da A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0069 A:{Catch:{ Exception -> 0x00e6 }} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00be A:{Catch:{ Exception -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ac A:{SYNTHETIC, Splitter: B:40:0x00ac} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void b(String str) {
        HashMap hashMap;
        Throwable th;
        Throwable th2;
        JSONObject jSONObject;
        ObjectOutputStream objectOutputStream;
        Throwable th3 = null;
        File file = new File(b.a + File.separator + "iciba_statistics");
        try {
            HashMap hashMap2;
            if (!file.exists() || file.length() <= 0) {
                hashMap = new HashMap();
            } else {
                try {
                    ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
                    try {
                        HashMap hashMap3 = (HashMap) objectInputStream.readObject();
                        if (hashMap3 != null) {
                            try {
                                if (hashMap3.size() != 0) {
                                    hashMap2 = hashMap3;
                                    objectInputStream.close();
                                    hashMap = hashMap2;
                                }
                            } catch (Throwable th4) {
                                hashMap2 = hashMap3;
                                th2 = th4;
                                th4 = null;
                                if (th4 == null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                } else {
                                    objectInputStream.close();
                                }
                                throw th2;
                            }
                        }
                        hashMap2 = new HashMap();
                        try {
                            objectInputStream.close();
                            hashMap = hashMap2;
                        } catch (Exception e) {
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        th4 = null;
                        hashMap2 = null;
                        if (th4 == null) {
                        }
                        throw th2;
                    }
                } catch (Exception e2) {
                    hashMap2 = null;
                    try {
                        file.delete();
                        file.createNewFile();
                        hashMap = hashMap2;
                    } catch (Throwable th22) {
                        Log.e("KStatistics", "Create or delete file failed", th22);
                        hashMap = hashMap2;
                    }
                    if (hashMap.containsKey("search_history")) {
                    }
                    if (hashMap2.containsKey(str)) {
                    }
                    hashMap2.put(str, jSONObject.toString());
                    hashMap.put("search_history", hashMap2);
                    objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                    objectOutputStream.writeObject(hashMap);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    return;
                }
            }
            hashMap2 = hashMap.containsKey("search_history") ? (HashMap) hashMap.get("search_history") : new HashMap();
            if (hashMap2.containsKey(str)) {
                JSONObject jSONObject2 = new JSONObject((String) hashMap2.get(str));
                jSONObject2.put("search_number", jSONObject2.getInt("search_number") + 1);
                jSONObject = jSONObject2;
            } else {
                jSONObject = new JSONObject();
                jSONObject.put("search_number", 1);
            }
            hashMap2.put(str, jSONObject.toString());
            hashMap.put("search_history", hashMap2);
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
                try {
                    objectOutputStream.writeObject(hashMap);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    return;
                } catch (Throwable th42) {
                    th3 = th22;
                    th22 = th42;
                }
                if (th3 != null) {
                    try {
                        objectOutputStream.close();
                    } catch (Throwable th422) {
                        th3.addSuppressed(th422);
                    }
                } else {
                    objectOutputStream.close();
                }
                throw th22;
                throw th22;
            } catch (Throwable th222) {
                Log.e("KStatistics", "Write file failed", th222);
            }
        } catch (Throwable th2222) {
            Log.e("KStatistics", "Add click event failed", th2222);
        }
    }

    public static String c(Context context) {
        String str = null;
        try {
            return context.getPackageName();
        } catch (Exception e) {
            return str;
        }
    }

    public static String c(String str) {
        byte[] digest;
        try {
            digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
        } catch (Throwable e) {
            Log.e("Utils", "Calculate md5 failed", e);
            digest = null;
        } catch (Throwable e2) {
            Log.e("Utils", "Calculate md5 failed", e2);
            digest = null;
        }
        if (digest == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder(digest.length << 1);
        for (byte b : digest) {
            if ((b & 255) < 16) {
                stringBuilder.append("0");
            }
            stringBuilder.append(Integer.toHexString(b & 255));
        }
        return stringBuilder.toString();
    }

    public static int d(Context context) {
        int i = -1;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return i;
        }
    }

    private static String d(String str) {
        String str2 = null;
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            return str2;
        }
    }

    private static String e(String str) {
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            Object invoke = cls.getMethod("get", new Class[]{String.class}).invoke(cls, new Object[]{str});
            return invoke == null ? "" : invoke.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void a(String str, a aVar) {
        new Thread(new f(this, str, aVar)).start();
    }
}
