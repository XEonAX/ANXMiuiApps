package miui.text;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import miui.provider.MiCloudSmsCmd;
import miui.reflect.Field;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0011SimplePool;
import miui.util.SoftReferenceSingleton;

public class HindiPinyinConverter {
    private static final boolean DEBUG = false;
    private static C0011SimplePool<StringBuilder> GJ = C0014Pools.createSimplePool(new C0000Manager<StringBuilder>() {
        /* renamed from: dc */
        public StringBuilder createInstance() {
            return new StringBuilder();
        }

        /* renamed from: a */
        public void onRelease(StringBuilder stringBuilder) {
            stringBuilder.setLength(0);
        }
    }, 4);
    private static C0011SimplePool<ArrayList<String>> GK = C0014Pools.createSimplePool(new C0000Manager<ArrayList<String>>() {
        /* renamed from: dd */
        public ArrayList<String> createInstance() {
            return new ArrayList();
        }

        /* renamed from: a */
        public void onRelease(ArrayList<String> arrayList) {
            arrayList.clear();
        }
    }, 4);
    private static final int Gi = 12;
    private static final int Gj = 15;
    private static final int Gk = 35;
    private static final int Gl = 8;
    private static final int Gm = 3;
    private static final String Gn = "्";
    private static final String TAG = "HindiPinyinConverter";
    private static final SoftReferenceSingleton<HindiPinyinConverter> s = new SoftReferenceSingleton<HindiPinyinConverter>() {
        /* renamed from: db */
        protected HindiPinyinConverter createInstance() {
            return new HindiPinyinConverter();
        }
    };
    private HashMap<String, String> GC;
    private String[] Go;
    private String[] Gp;
    private String[] Gq;
    private String[] Gr;
    private String[] Gs;
    private String[] Gt;
    private String[] Gu;
    private String[] Gv;
    private String[] Gw;
    private String[] Gx;
    private HashMap<String, String> Gy;
    private HashMap<String, String> Gz;

    /* synthetic */ HindiPinyinConverter(AnonymousClass1 anonymousClass1) {
        this();
    }

    private void cZ() {
        this.Go = new String[12];
        this.Gp = new String[12];
        this.Gq = new String[15];
        this.Gr = new String[15];
        this.Gs = new String[35];
        this.Gt = new String[35];
        this.Gu = new String[8];
        this.Gv = new String[8];
        this.Gw = new String[3];
        this.Gx = new String[3];
        this.Gy = new HashMap();
        this.Gz = new HashMap();
        this.GC = new HashMap();
        this.Go[0] = "अ";
        this.Go[1] = "आ";
        this.Go[2] = "इ";
        this.Go[3] = "ई";
        this.Go[4] = "उ";
        this.Go[5] = "ऊ";
        this.Go[6] = "ऋ";
        this.Go[7] = "ए";
        this.Go[8] = "ऐ";
        this.Go[9] = "ऑ";
        this.Go[10] = "ओ";
        this.Go[11] = "औ";
        this.Gp[0] = "a";
        this.Gp[1] = "aa";
        this.Gp[2] = "i";
        this.Gp[3] = "ee";
        this.Gp[4] = "u";
        this.Gp[5] = "oo";
        this.Gp[6] = "r";
        this.Gp[7] = "e";
        this.Gp[8] = "ai";
        this.Gp[9] = "o";
        this.Gp[10] = "o";
        this.Gp[11] = "au";
        this.Gq[0] = "ा";
        this.Gq[1] = "ि";
        this.Gq[2] = "ी";
        this.Gq[3] = "ु";
        this.Gq[4] = "ू";
        this.Gq[5] = "ृ";
        this.Gq[6] = "ॄ";
        this.Gq[7] = "ॅ";
        this.Gq[8] = "े";
        this.Gq[9] = "ै";
        this.Gq[10] = "ॉ";
        this.Gq[11] = "ो";
        this.Gq[12] = "ौ";
        this.Gq[13] = "ॎ";
        this.Gq[14] = "ॏ";
        this.Gr[0] = "aa";
        this.Gr[1] = "i";
        this.Gr[2] = "ee";
        this.Gr[3] = "u";
        this.Gr[4] = "oo";
        this.Gr[5] = "r";
        this.Gr[6] = "R";
        this.Gr[7] = "e";
        this.Gr[8] = "e";
        this.Gr[9] = "ai";
        this.Gr[10] = "o";
        this.Gr[11] = "o";
        this.Gr[12] = "au";
        this.Gr[13] = "e";
        this.Gr[14] = "aw";
        this.Gs[0] = "क";
        this.Gs[1] = "ख";
        this.Gs[2] = "ग";
        this.Gs[3] = "घ";
        this.Gs[4] = "ङ";
        this.Gs[5] = "च";
        this.Gs[6] = "छ";
        this.Gs[7] = "ज";
        this.Gs[8] = "झ";
        this.Gs[9] = "ञ";
        this.Gs[10] = "ट";
        this.Gs[11] = "ठ";
        this.Gs[12] = "ड";
        this.Gs[13] = "ढ";
        this.Gs[14] = "ण";
        this.Gs[15] = "त";
        this.Gs[16] = "थ";
        this.Gs[17] = "द";
        this.Gs[18] = "ध";
        this.Gs[19] = "न";
        this.Gs[20] = "ऩ";
        this.Gs[21] = "प";
        this.Gs[22] = "फ";
        this.Gs[23] = "ब";
        this.Gs[24] = "भ";
        this.Gs[25] = "म";
        this.Gs[26] = "य";
        this.Gs[27] = "र";
        this.Gs[28] = "ऱ";
        this.Gs[29] = "ल";
        this.Gs[30] = "व";
        this.Gs[31] = "श";
        this.Gs[32] = "ष";
        this.Gs[33] = "स";
        this.Gs[34] = "ह";
        this.Gt[0] = MiCloudSmsCmd.TYPE_LOCK;
        this.Gt[1] = "kh";
        this.Gt[2] = "g";
        this.Gt[3] = "gh";
        this.Gt[4] = "ng";
        this.Gt[5] = "c";
        this.Gt[6] = "ch";
        this.Gt[7] = "j";
        this.Gt[8] = "jh";
        this.Gt[9] = "ny";
        this.Gt[10] = "T";
        this.Gt[11] = "Th";
        this.Gt[12] = Field.DOUBLE_SIGNATURE_PRIMITIVE;
        this.Gt[13] = "Dh";
        this.Gt[14] = "N";
        this.Gt[15] = "t";
        this.Gt[16] = "th";
        this.Gt[17] = MiCloudSmsCmd.TYPE_DISCARD_TOKEN;
        this.Gt[18] = "dh";
        this.Gt[19] = MiCloudSmsCmd.TYPE_NOISE;
        this.Gt[20] = "Nn";
        this.Gt[21] = "p";
        this.Gt[22] = "ph";
        this.Gt[23] = "b";
        this.Gt[24] = "bh";
        this.Gt[25] = "m";
        this.Gt[26] = "y";
        this.Gt[27] = "r";
        this.Gt[28] = "R";
        this.Gt[29] = MiCloudSmsCmd.TYPE_LOCATION;
        this.Gt[30] = "v";
        this.Gt[31] = "sh";
        this.Gt[32] = Field.SHORT_SIGNATURE_PRIMITIVE;
        this.Gt[33] = "s";
        this.Gt[34] = "h";
        this.Gu[0] = "क़";
        this.Gu[1] = "ख़";
        this.Gu[2] = "ग़";
        this.Gu[3] = "ज़";
        this.Gu[4] = "ड़";
        this.Gu[5] = "ढ़";
        this.Gu[6] = "फ़";
        this.Gu[7] = "य़";
        this.Gv[0] = "q";
        this.Gv[1] = "khh";
        this.Gv[2] = "ghh";
        this.Gv[3] = "z";
        this.Gv[4] = "Ddh";
        this.Gv[5] = "rh";
        this.Gv[6] = "f";
        this.Gv[7] = "Y";
        this.Gw[0] = "ँ";
        this.Gw[1] = "ं";
        this.Gw[2] = "ः";
        this.Gx[0] = "an";
        this.Gx[1] = "an";
        this.Gx[2] = "ah";
    }

    private void da() {
        int i;
        int i2;
        StringBuilder stringBuilder;
        String stringBuilder2;
        StringBuilder stringBuilder3;
        StringBuilder stringBuilder4;
        String stringBuilder5;
        for (i = 0; i < 35; i++) {
            Object obj = this.Gs[i];
            StringBuilder stringBuilder6 = new StringBuilder();
            stringBuilder6.append(this.Gt[i]);
            stringBuilder6.append("a");
            this.Gy.put(obj, stringBuilder6.toString());
        }
        for (i = 0; i < 12; i++) {
            this.Gy.put(this.Go[i], this.Gp[i]);
        }
        for (i = 0; i < 8; i++) {
            this.Gy.put(this.Gu[i], this.Gv[i]);
        }
        for (i = 0; i < 35; i++) {
            for (i2 = 0; i2 < 15; i2++) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(this.Gs[i]);
                stringBuilder.append(this.Gq[i2]);
                stringBuilder2 = stringBuilder.toString();
                stringBuilder3 = new StringBuilder();
                stringBuilder3.append(this.Gt[i]);
                stringBuilder3.append(this.Gr[i2]);
                this.Gz.put(stringBuilder2, stringBuilder3.toString());
            }
            for (int i3 = 0; i3 < 3; i3++) {
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append(this.Gs[i]);
                stringBuilder4.append(this.Gw[i3]);
                stringBuilder5 = stringBuilder4.toString();
                stringBuilder = new StringBuilder();
                stringBuilder.append(this.Gt[i]);
                stringBuilder.append(this.Gx[i3]);
                this.Gz.put(stringBuilder5, stringBuilder.toString());
            }
        }
        for (i = 0; i < 8; i++) {
            for (i2 = 0; i2 < 15; i2++) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(this.Gu[i]);
                stringBuilder.append(this.Gq[i2]);
                stringBuilder2 = stringBuilder.toString();
                stringBuilder3 = new StringBuilder();
                stringBuilder3.append(this.Gv[i]);
                stringBuilder3.append(this.Gr[i2]);
                this.Gz.put(stringBuilder2, stringBuilder3.toString());
            }
            for (i2 = 0; i2 < 3; i2++) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(this.Gs[i]);
                stringBuilder.append(this.Gw[i2]);
                stringBuilder2 = stringBuilder.toString();
                stringBuilder3 = new StringBuilder();
                stringBuilder3.append(this.Gt[i]);
                stringBuilder3.append(this.Gx[i2]);
                this.Gz.put(stringBuilder2, stringBuilder3.toString());
            }
        }
        for (i = 0; i < 35; i++) {
            StringBuilder stringBuilder7 = new StringBuilder();
            stringBuilder7.append(this.Gs[i]);
            stringBuilder7.append(Gn);
            this.Gz.put(stringBuilder7.toString(), this.Gt[i]);
        }
        for (i = 0; i < 12; i++) {
        }
        for (i = 0; i < 35; i++) {
            for (int i4 = 0; i4 < 15; i4++) {
                for (int i5 = 0; i5 < 3; i5++) {
                    stringBuilder4 = new StringBuilder();
                    stringBuilder4.append(this.Gs[i]);
                    stringBuilder4.append(this.Gq[i4]);
                    stringBuilder4.append(this.Gw[i5]);
                    stringBuilder5 = stringBuilder4.toString();
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(this.Gt[i]);
                    stringBuilder.append(this.Gr[i4]);
                    stringBuilder.append(this.Gx[i5].substring(1));
                    this.GC.put(stringBuilder5, stringBuilder.toString());
                }
            }
        }
        this.Gz.put("अं", "am");
    }

    private HindiPinyinConverter() {
        cZ();
        da();
    }

    public static HindiPinyinConverter getInstance() {
        return (HindiPinyinConverter) s.get();
    }

    public String[] hindiToPinyins(String str) {
        ArrayList arrayList = (ArrayList) GK.acquire();
        str = hindiToPinyin(str);
        arrayList.add(str);
        if (str.contains("ee")) {
            arrayList.add(str.replaceAll("ee", "ii"));
        }
        if (str.contains("oo")) {
            arrayList.add(str.replaceAll("oo", "uu"));
        }
        if (str.contains("v")) {
            arrayList.add(str.replaceAll("v", MiCloudSmsCmd.TYPE_WIPE));
        }
        ArrayList arrayList2 = (ArrayList) GK.acquire();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!str2.endsWith("aa") && str2.endsWith("a")) {
                arrayList2.add(str2.substring(0, str2.length() - 1));
            }
        }
        arrayList.addAll(arrayList2);
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        GK.release(arrayList);
        GK.release(arrayList2);
        return strArr;
    }

    public String hindiToPinyin(String str) {
        Object obj = str;
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder stringBuilder = (StringBuilder) GJ.acquire();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2;
            String c;
            int charCount = Character.charCount(Character.codePointAt(obj, i));
            int i3 = i + charCount;
            String substring = obj.substring(i, i3);
            String str2 = "";
            String str3 = "";
            String str4 = "";
            if (i3 < length) {
                charCount = Character.charCount(Character.codePointAt(obj, i3));
                str3 = obj.substring(i3, i3 + charCount);
            }
            if (!str3.isEmpty()) {
                int i4 = i3 + charCount;
                if (i4 < length) {
                    charCount = Character.charCount(Character.codePointAt(obj, i4));
                    str4 = obj.substring(i4, i4 + charCount);
                }
                if (str4.isEmpty()) {
                    String c2 = c(substring, str3);
                    if (this.Gz.containsKey(c2)) {
                        str2 = (String) this.Gz.get(c2);
                        i3 += charCount;
                    } else if (this.Gy.containsKey(substring)) {
                        str2 = (String) this.Gy.get(substring);
                    } else {
                        String str5 = TAG;
                        Object[] objArr = new Object[4];
                        objArr[0] = substring;
                        objArr[1] = str3;
                        objArr[2] = str4;
                        objArr[3] = J(c(substring, str3, str4));
                        Log.w(str5, String.format("Ignore unknown hindi: %s%s%s %s", objArr));
                    }
                } else {
                    String c3 = c(substring, str3);
                    i2 = length;
                    c = c(c3, str4);
                    if (this.GC.containsKey(c)) {
                        str2 = (String) this.GC.get(c);
                        i = i4 + charCount;
                        stringBuilder.append(str2);
                        length = i2;
                        c = str;
                    } else {
                        if (this.Gz.containsKey(c3)) {
                            str2 = (String) this.Gz.get(c3);
                            i3 += charCount;
                        } else if (this.Gy.containsKey(substring)) {
                            str2 = (String) this.Gy.get(substring);
                        } else {
                            c = TAG;
                            Object[] objArr2 = new Object[4];
                            objArr2[0] = substring;
                            objArr2[1] = str3;
                            objArr2[2] = str4;
                            objArr2[3] = J(c(substring, str3, str4));
                            Log.w(c, String.format("Ignore unknown hindi: '%s%s%s' '%s'", objArr2));
                        }
                        i = i3;
                        stringBuilder.append(str2);
                        length = i2;
                        c = str;
                    }
                }
            } else if (this.Gy.containsKey(substring)) {
                str2 = (String) this.Gy.get(substring);
            }
            i2 = length;
            i = i3;
            stringBuilder.append(str2);
            length = i2;
            c = str;
        }
        String stringBuilder2 = stringBuilder.toString();
        GJ.release(stringBuilder);
        long currentTimeMillis2 = System.currentTimeMillis();
        Log.d(TAG, String.format("hindiToPinyin(): using time %d ms", new Object[]{Long.valueOf(currentTimeMillis2 - currentTimeMillis)}));
        return stringBuilder2;
    }

    private static String c(String... strArr) {
        StringBuilder stringBuilder = (StringBuilder) GJ.acquire();
        for (String append : strArr) {
            stringBuilder.append(append);
        }
        String stringBuilder2 = stringBuilder.toString();
        GJ.release(stringBuilder);
        return stringBuilder2;
    }

    private static String J(String str) {
        StringBuilder stringBuilder = (StringBuilder) GJ.acquire();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = Character.codePointAt(str, i);
            int charCount = Character.charCount(codePointAt);
            if (charCount > 1) {
                i += charCount - 1;
            }
            if (codePointAt < 128) {
                stringBuilder.appendCodePoint(codePointAt);
            } else {
                stringBuilder.append(String.format("\\u%04x", new Object[]{Integer.valueOf(codePointAt)}));
            }
            i++;
        }
        str = stringBuilder.toString();
        GJ.release(stringBuilder);
        return str;
    }
}
