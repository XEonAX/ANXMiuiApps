package com.ta.utdid2.c.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import com.ali.auth.third.login.LoginConstants;
import com.ta.utdid2.b.a.i;
import com.ta.utdid2.c.a.b.a;
import java.io.File;
import java.util.Map.Entry;

/* compiled from: PersistentConfiguration */
public class c {
    private Editor a = null;
    /* renamed from: a */
    private SharedPreferences f86a = null;
    /* renamed from: a */
    private a f87a = null;
    /* renamed from: a */
    private b f88a = null;
    /* renamed from: a */
    private d f89a = null;
    private String e = "";
    private String f = "";
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private Context mContext = null;

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00dd A:{Catch:{ Exception -> 0x01e5 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:? A:{SYNTHETIC, RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c(Context context, String str, String str2, boolean z, boolean z2) {
        long j;
        long j2;
        this.g = z;
        this.j = z2;
        this.e = str2;
        this.f = str;
        this.mContext = context;
        long j3 = 0;
        if (context != null) {
            this.a = context.getSharedPreferences(str2, 0);
            j3 = this.a.getLong(LoginConstants.TIMESTAMP, 0);
        }
        String str3 = null;
        try {
            str3 = Environment.getExternalStorageState();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i.a(str3)) {
            this.i = false;
            this.h = false;
        } else if (str3.equals("mounted")) {
            this.i = true;
            this.h = true;
        } else if (str3.equals("mounted_ro")) {
            this.h = true;
            this.i = false;
        } else {
            this.i = false;
            this.h = false;
        }
        if (!((!this.h && !this.i) || context == null || i.a(str))) {
            this.a = a(str);
            if (this.a != null) {
                try {
                    this.a = this.a.a(str2, 0);
                    j = this.a.getLong(LoginConstants.TIMESTAMP, 0);
                    if (z2) {
                        j2 = this.a.getLong("t2", 0);
                        try {
                            j3 = this.a.getLong("t2", 0);
                            if (j2 < j3 && j2 > 0) {
                                try {
                                    a(this.a, this.a);
                                    this.a = this.a.a(str2, 0);
                                } catch (Exception e2) {
                                    j = j2;
                                    j2 = j;
                                    if (j2 == j3) {
                                    }
                                    j = System.currentTimeMillis();
                                    if (this.j) {
                                    }
                                    if (this.a != null) {
                                    }
                                    if (this.a != null) {
                                    }
                                }
                                if (j2 == j3) {
                                }
                                j = System.currentTimeMillis();
                                if (this.j) {
                                }
                                if (this.a != null) {
                                }
                                if (this.a != null) {
                                }
                            } else if (j2 > j3 && j3 > 0) {
                                a(this.a, this.a);
                                this.a = context.getSharedPreferences(str2, 0);
                                if (j2 == j3) {
                                }
                                j = System.currentTimeMillis();
                                if (this.j) {
                                }
                                if (this.a != null) {
                                }
                                if (this.a != null) {
                                }
                            } else if (j2 == 0 && j3 > 0) {
                                a(this.a, this.a);
                                this.a = context.getSharedPreferences(str2, 0);
                                if (j2 == j3) {
                                }
                                j = System.currentTimeMillis();
                                if (this.j) {
                                }
                                if (this.a != null) {
                                }
                                if (this.a != null) {
                                }
                            } else if (j3 != 0 || j2 <= 0) {
                                if (j2 == j3) {
                                    a(this.a, this.a);
                                    this.a = this.a.a(str2, 0);
                                }
                                if (j2 == j3) {
                                }
                                j = System.currentTimeMillis();
                                if (this.j) {
                                }
                                if (this.a != null) {
                                }
                                if (this.a != null) {
                                }
                            } else {
                                a(this.a, this.a);
                                this.a = this.a.a(str2, 0);
                                if (j2 == j3) {
                                }
                                j = System.currentTimeMillis();
                                if (this.j) {
                                }
                                if (this.a != null) {
                                }
                                if (this.a != null) {
                                }
                            }
                        } catch (Exception e3) {
                            j3 = j;
                            j = j2;
                            j2 = j;
                            if (j2 == j3) {
                            }
                            j = System.currentTimeMillis();
                            if (this.j) {
                            }
                            if (this.a != null) {
                            }
                            if (this.a != null) {
                            }
                        }
                    } else if (j3 > j) {
                        try {
                            a(this.a, this.a);
                            this.a = this.a.a(str2, 0);
                            j2 = j3;
                            j3 = j;
                        } catch (Exception e4) {
                            long j4 = j;
                            j = j3;
                            j3 = j4;
                            j2 = j;
                            if (j2 == j3) {
                            }
                            j = System.currentTimeMillis();
                            if (this.j) {
                            }
                            if (this.a != null) {
                            }
                            if (this.a != null) {
                            }
                        }
                        if (j2 == j3 || (j2 == 0 && j3 == 0)) {
                            j = System.currentTimeMillis();
                            if (this.j || (this.j && j2 == 0 && j3 == 0)) {
                                if (this.a != null) {
                                    Editor edit = this.a.edit();
                                    edit.putLong("t2", j);
                                    edit.commit();
                                }
                                if (this.a != null) {
                                    a a = this.a.a();
                                    a.a("t2", j);
                                    a.commit();
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    } else {
                        if (j3 < j) {
                            a(this.a, this.a);
                            this.a = context.getSharedPreferences(str2, 0);
                            j2 = j3;
                            j3 = j;
                        } else if (j3 == j) {
                            a(this.a, this.a);
                            this.a = this.a.a(str2, 0);
                            j2 = j3;
                            j3 = j;
                        } else {
                            j2 = j3;
                            j3 = j;
                        }
                        if (j2 == j3) {
                        }
                        j = System.currentTimeMillis();
                        if (this.j) {
                        }
                        if (this.a != null) {
                        }
                        if (this.a != null) {
                        }
                    }
                } catch (Exception e5) {
                    j = j3;
                    j3 = 0;
                }
            }
        }
        j2 = j3;
        j3 = 0;
        if (j2 == j3) {
        }
        j = System.currentTimeMillis();
        if (this.j) {
        }
        if (this.a != null) {
        }
        try {
            if (this.a != null) {
            }
        } catch (Exception e6) {
        }
    }

    private d a(String str) {
        File a = a(str);
        if (a == null) {
            return null;
        }
        this.a = new d(a.getAbsolutePath());
        return this.a;
    }

    /* renamed from: a */
    private File m27a(String str) {
        if (Environment.getExternalStorageDirectory() == null) {
            return null;
        }
        File file = new File(String.format("%s%s%s", new Object[]{Environment.getExternalStorageDirectory().getAbsolutePath(), File.separator, str}));
        if (file == null || file.exists()) {
            return file;
        }
        file.mkdirs();
        return file;
    }

    private void a(SharedPreferences sharedPreferences, b bVar) {
        if (sharedPreferences != null && bVar != null) {
            a a = bVar.a();
            if (a != null) {
                a.b();
                for (Entry entry : sharedPreferences.getAll().entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof String) {
                        a.a(str, (String) value);
                    } else if (value instanceof Integer) {
                        a.a(str, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        a.a(str, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        a.a(str, ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        a.a(str, ((Boolean) value).booleanValue());
                    }
                }
                a.commit();
            }
        }
    }

    private void a(b bVar, SharedPreferences sharedPreferences) {
        if (bVar != null && sharedPreferences != null) {
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.clear();
                for (Entry entry : bVar.getAll().entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof String) {
                        edit.putString(str, (String) value);
                    } else if (value instanceof Integer) {
                        edit.putInt(str, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        edit.putLong(str, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        edit.putFloat(str, ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) value).booleanValue());
                    }
                }
                edit.commit();
            }
        }
    }

    private boolean b() {
        if (this.a == null) {
            return false;
        }
        boolean a = this.a.a();
        if (a) {
            return a;
        }
        commit();
        return a;
    }

    private void c() {
        if (this.a == null && this.a != null) {
            this.a = this.a.edit();
        }
        if (this.i && this.a == null && this.a != null) {
            this.a = this.a.a();
        }
        b();
    }

    public void putString(String key, String value) {
        if (!i.a(key) && !key.equals(LoginConstants.TIMESTAMP)) {
            c();
            if (this.a != null) {
                this.a.putString(key, value);
            }
            if (this.a != null) {
                this.a.a(key, value);
            }
        }
    }

    public void remove(String key) {
        if (!i.a(key) && !key.equals(LoginConstants.TIMESTAMP)) {
            c();
            if (this.a != null) {
                this.a.remove(key);
            }
            if (this.a != null) {
                this.a.a(key);
            }
        }
    }

    public boolean commit() {
        boolean z = true;
        long currentTimeMillis = System.currentTimeMillis();
        if (this.a != null) {
            if (!(this.j || this.a == null)) {
                this.a.putLong(LoginConstants.TIMESTAMP, currentTimeMillis);
            }
            if (!this.a.commit()) {
                z = false;
            }
        }
        if (!(this.a == null || this.mContext == null)) {
            this.a = this.mContext.getSharedPreferences(this.e, 0);
        }
        String str = null;
        try {
            str = Environment.getExternalStorageState();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!i.a(str)) {
            if (str.equals("mounted")) {
                if (this.a == null) {
                    d a = a(this.f);
                    if (a != null) {
                        this.a = a.a(this.e, 0);
                        if (this.j) {
                            a(this.a, this.a);
                        } else {
                            a(this.a, this.a);
                        }
                        this.a = this.a.a();
                    }
                } else if (!(this.a == null || this.a.commit())) {
                    z = false;
                }
            }
            if (str.equals("mounted") || (str.equals("mounted_ro") && this.a != null)) {
                try {
                    if (this.a != null) {
                        this.a = this.a.a(this.e, 0);
                    }
                } catch (Exception e2) {
                }
            }
        }
        return z;
    }

    public String getString(String key) {
        b();
        if (this.a != null) {
            String string = this.a.getString(key, "");
            if (!i.a(string)) {
                return string;
            }
        }
        if (this.a != null) {
            return this.a.getString(key, "");
        }
        return "";
    }
}
