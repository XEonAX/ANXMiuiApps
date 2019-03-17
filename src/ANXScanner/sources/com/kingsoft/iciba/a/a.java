package com.kingsoft.iciba.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.ali.auth.third.login.LoginConstants;
import java.io.File;
import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class a {
    private static final String a = a.class.getSimpleName();
    private static ComponentName g = new ComponentName("com.kingsoft", "com.kingsoft.WordDetailActivity");
    private Context b;
    private long c;
    private boolean d = false;
    private long e = -1;
    private c f;

    public a(Context context) {
        this.b = context;
    }

    private static String a(String str) {
        String str2 = null;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(LoginConstants.MESSAGE, jSONObject2);
            jSONObject2.put("word_name", str);
            jSONObject2.put("result_info", "查询失败,要查询词汇不符合要求");
            return jSONObject.toString();
        } catch (Throwable e) {
            Log.e(a, "Create json object failed", e);
            return str2;
        }
    }

    private static String a(String str, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(LoginConstants.MESSAGE, jSONObject2);
            jSONObject2.put("word_name", str);
            if (i == 0) {
                jSONObject2.put("result_info", "请打开网络，或者安装词霸应用");
            } else if (i == 1) {
                jSONObject2.put("result_info", "本地无释义，请打开网络进行查询");
            } else if (i == 2) {
                jSONObject2.put("result_info", "本地词典版本不支持，请升级词霸应用，或者打开网络进行查询");
            } else if (i == 3) {
                jSONObject2.put("result_info", "无网络，不能直接从网络获取释义");
            } else if (i == 4) {
                jSONObject2.put("result_info", "无汉汉释义");
            }
            return jSONObject.toString();
        } catch (Throwable e) {
            Log.e(a, "Create json object failed", e);
            return null;
        }
    }

    private static String a(String str, ArrayList arrayList, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", 1);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(LoginConstants.MESSAGE, jSONObject2);
            jSONObject2.put("word_name", str);
            jSONObject2.put("result_info", "获取释义成功");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                SimpleEntry simpleEntry = (SimpleEntry) it.next();
                JSONObject jSONObject3 = new JSONObject((String) simpleEntry.getValue());
                String str2 = (String) simpleEntry.getKey();
                if (i == 1) {
                    if (str2 != null && str2.equals("cc_mean")) {
                        jSONObject2.put(str2, jSONObject3);
                    }
                } else if (i != 0) {
                    jSONObject2.put(str2, jSONObject3);
                } else if (str2 != null) {
                    if (str2.equals("baseInfo")) {
                        jSONObject2.put(str2, jSONObject3);
                    }
                }
            }
            return jSONObject.toString();
        } catch (Throwable e) {
            Log.e(a, "Create json object failed", e);
            return null;
        }
    }

    public static void a(Context context, String str, boolean z) {
        if (context != null && str != null) {
            Intent intent;
            if (e.a(context, "com.kingsoft")) {
                try {
                    e.a("show_detail_mean");
                    intent = new Intent("android.intent.action.VIEW");
                    if (z) {
                        intent.addFlags(268435456);
                    }
                    intent.putExtra("word", str);
                    intent.setComponent(g);
                    context.startActivity(intent);
                    return;
                } catch (Throwable e) {
                    Log.e(a, "Start iciba app failed", e);
                    try {
                        e.a("install_iciba");
                        intent = new Intent("android.intent.action.VIEW");
                        if (z) {
                            intent.addFlags(268435456);
                        }
                        intent.setData(Uri.parse("market://details?id=com.kingsoft"));
                        context.startActivity(intent);
                        return;
                    } catch (Throwable e2) {
                        Log.e(a, "Open market failed", e2);
                        return;
                    }
                }
            }
            try {
                e.a("install_iciba");
                intent = new Intent("android.intent.action.VIEW");
                if (z) {
                    intent.addFlags(268435456);
                }
                intent.setData(Uri.parse("market://details?id=com.kingsoft"));
                context.startActivity(intent);
            } catch (Throwable e22) {
                Log.e(a, "Open market failed", e22);
            }
        }
    }

    private static boolean a(ArrayList arrayList) {
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((String) ((SimpleEntry) it.next()).getKey()).equals("baseInfo")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String b(String str) {
        String str2 = null;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(LoginConstants.MESSAGE, jSONObject2);
            jSONObject2.put("word_name", str);
            jSONObject2.put("result_info", "查询失败,厂商ID不正确或者已过期");
            return jSONObject.toString();
        } catch (Throwable e) {
            Log.e(a, "Create json object failed", e);
            return str2;
        }
    }

    public void a(long j) {
        int i = 0;
        this.c = j;
        this.d = false;
        long[] jArr = b.c;
        int length = jArr.length;
        while (i < length) {
            if (jArr[i] == j) {
                this.d = true;
                break;
            }
            i++;
        }
        if (this.d) {
            if (!new File(b.a).exists()) {
                new File(b.a).mkdirs();
            }
            File file = new File(b.a + File.separator + "iciba_statistics");
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Throwable e) {
                    Log.e(a, "Create file failed", e);
                }
            }
            e.a(this.b, b.a, j);
            this.e = System.currentTimeMillis();
            this.f = new c(this.b);
            this.f.a(j);
        }
    }

    public void a(String str, int i, com.kingsoft.iciba.a.a.a aVar) {
        Context context = this.b;
        e.b(str);
        if (this.e == -1) {
            this.e = System.currentTimeMillis();
            e.a(this.b, b.a, this.c);
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.e >= 21600000) {
                this.e = currentTimeMillis;
                e.a(this.b, b.a, this.c);
            }
        }
        if (str != null && aVar != null) {
            if (!this.d) {
                aVar.a(b(str));
            } else if (TextUtils.isEmpty(str.trim())) {
                aVar.a(a(str));
            } else {
                boolean a = this.f.a();
                ArrayList a2;
                if (i == 1) {
                    aVar.a(a(str, 4));
                } else if (i == 0) {
                    if (a) {
                        if (this.f.b()) {
                            a2 = this.f.a(str);
                            if (a2 != null && a2.size() > 0 && a(a2)) {
                                aVar.a(a(str, a2, i));
                            } else if (e.a(this.b)) {
                                new Thread(new g(e.a(this.b, this.c), str, a2, aVar)).start();
                            } else {
                                aVar.a(a(str, 1));
                            }
                        } else if (e.a(this.b)) {
                            e.a(this.b, this.c).a(str, aVar);
                        } else {
                            aVar.a(a(str, 2));
                        }
                    } else if (e.a(this.b)) {
                        e.a(this.b, this.c).a(str, aVar);
                    } else {
                        aVar.a(a(str, 0));
                    }
                } else if (i != 2) {
                } else {
                    if (a) {
                        if (this.f.b()) {
                            a2 = this.f.a(str);
                            if (a2 != null && a2.size() > 0 && a(a2)) {
                                aVar.a(a(str, a2, i));
                            } else if (e.a(this.b)) {
                                e.a(this.b, this.c).a(str, aVar);
                            } else {
                                aVar.a(a(str, 1));
                            }
                        } else if (e.a(this.b)) {
                            e.a(this.b, this.c).a(str, aVar);
                        } else {
                            aVar.a(a(str, 2));
                        }
                    } else if (e.a(this.b)) {
                        e.a(this.b, this.c).a(str, aVar);
                    } else {
                        aVar.a(a(str, 0));
                    }
                }
            }
        }
    }
}
