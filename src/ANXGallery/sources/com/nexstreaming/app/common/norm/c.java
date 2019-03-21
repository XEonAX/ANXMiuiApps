package com.nexstreaming.app.common.norm;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: NormTableInfo */
public class c {
    private static Map<Class<? extends b>, c> g = new HashMap();
    private final String[] a;
    private final String[] b;
    private final NormColumnInfo[] c;
    private final String d;
    private final String[] e;
    private final NormColumnInfo f;

    private boolean a(Field field) {
        if (field.isSynthetic()) {
            return true;
        }
        String name = field.getName();
        if (name.startsWith("$") || name.equals("serialVersionUID")) {
            return true;
        }
        return false;
    }

    private c(Class<? extends b> cls) {
        NormColumnInfo normColumnInfo = null;
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        this.d = a.camelCaseToLCUnderscore(cls.getSimpleName());
        stringBuilder.append("CREATE TABLE ").append(this.d).append(" (\n    ");
        stringBuilder2.append("DROP TABLE IF EXISTS ").append(this.d);
        Field[] declaredFields = cls.getDeclaredFields();
        int i = 0;
        for (Field a : declaredFields) {
            if (a(a)) {
                i++;
            }
        }
        this.c = new NormColumnInfo[(declaredFields.length - i)];
        this.e = new String[(declaredFields.length - i)];
        i = -1;
        Object obj = null;
        Object obj2 = null;
        int i2 = 0;
        for (Field field : declaredFields) {
            if (!a(field)) {
                i++;
                NormColumnInfo normColumnInfo2 = new NormColumnInfo(field);
                this.c[i] = normColumnInfo2;
                this.e[i] = normColumnInfo2.a;
                if (normColumnInfo2.h) {
                    if (obj2 == null) {
                        obj2 = new String[declaredFields.length];
                        obj = new String[declaredFields.length];
                    }
                    obj2[i2] = "CREATE INDEX idx_" + normColumnInfo2.a + " ON " + this.d + "( " + normColumnInfo2.a + ")";
                    obj[i2] = "DROP INDEX IF EXISTS idx_" + normColumnInfo2.a;
                    i2++;
                }
                if (normColumnInfo2.g) {
                    normColumnInfo = normColumnInfo2;
                }
                if (i > 0) {
                    stringBuilder.append(",\n    ");
                }
                stringBuilder.append(normColumnInfo2.a).append(' ');
                switch (normColumnInfo2.c) {
                    case INT:
                    case LONG:
                    case BOOL:
                        if (!normColumnInfo2.g) {
                            stringBuilder.append("INTEGER");
                            break;
                        } else {
                            stringBuilder.append("INTEGER PRIMARY KEY");
                            break;
                        }
                    case DOUBLE:
                    case FLOAT:
                        stringBuilder.append("REAL");
                        break;
                    case ENUM:
                    case TEXT:
                    case JSON:
                        stringBuilder.append("TEXT");
                        break;
                    case BLOB:
                        stringBuilder.append("BLOB");
                        break;
                }
                if (normColumnInfo2.d) {
                    stringBuilder.append(" UNIQUE");
                }
                if (normColumnInfo2.e) {
                    stringBuilder.append(" NOT NULL");
                }
            }
        }
        this.f = normColumnInfo;
        stringBuilder.append(')');
        this.a = new String[(i2 + 1)];
        this.a[0] = stringBuilder.toString();
        if (i2 > 0) {
            System.arraycopy(obj2, 0, this.a, 1, i2);
        }
        this.b = new String[(i2 + 1)];
        this.b[i2] = stringBuilder2.toString();
        if (i2 > 0) {
            System.arraycopy(obj, 0, this.b, 0, i2);
        }
    }

    public static c a(Class<? extends b> cls) {
        c cVar = (c) g.get(cls);
        if (cVar != null) {
            return cVar;
        }
        cVar = new c(cls);
        g.put(cls, cVar);
        return cVar;
    }

    public String[] a() {
        return this.a;
    }

    public String[] b() {
        return this.b;
    }

    public String c() {
        return this.d;
    }

    public String[] d() {
        return this.e;
    }

    public NormColumnInfo[] e() {
        return this.c;
    }

    public NormColumnInfo a(String str) {
        for (NormColumnInfo normColumnInfo : this.c) {
            if (normColumnInfo.a.equals(str)) {
                return normColumnInfo;
            }
        }
        return null;
    }

    public NormColumnInfo f() {
        return this.f;
    }

    public String[] a(int i, int i2) {
        int i3 = 0;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < this.c.length; i4++) {
            if (this.c[i4].i > i) {
                arrayList.add(Integer.valueOf(i4));
            }
        }
        if (arrayList.size() == 0) {
            return new String[0];
        }
        String[] strArr = new String[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            NormColumnInfo normColumnInfo = this.c[((Integer) it.next()).intValue()];
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ALTER TABLE ").append(this.d).append(" ADD COLUMN ");
            stringBuilder.append(normColumnInfo.a).append(" ");
            switch (normColumnInfo.c) {
                case INT:
                case LONG:
                case BOOL:
                    if (!normColumnInfo.g) {
                        stringBuilder.append("INTEGER");
                        break;
                    }
                    stringBuilder.append("INTEGER PRIMARY KEY");
                    break;
                case DOUBLE:
                case FLOAT:
                    stringBuilder.append("REAL");
                    break;
                case ENUM:
                case TEXT:
                case JSON:
                    stringBuilder.append("TEXT");
                    break;
                case BLOB:
                    stringBuilder.append("BLOB");
                    break;
                default:
                    break;
            }
            strArr[i3] = stringBuilder.toString();
            stringBuilder.reverse();
            i3++;
        }
        return strArr;
    }
}
