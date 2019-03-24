package miui.text;

import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.util.DirectIndexedFileExtractor;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import miui.provider.MiCloudSmsCmd;
import miui.util.AppConstants;
import miui.util.DirectIndexedFile;
import miui.util.DirectIndexedFile.Reader;
import miui.util.SoftReferenceSingleton;

public class ChinesePinyinConverter {
    private static HashMap<String, String[]> FP = new HashMap();
    private static HashMap<Character, String> FQ = new HashMap();
    private static final char FS = '一';
    private static final char FT = '龥';
    private static final char FU = 'ऀ';
    private static final char FV = 'ॿ';
    private static final char FW = '〇';
    private static final String TAG = "ChinesePinyinConverter";
    private static final SoftReferenceSingleton<ChinesePinyinConverter> s = new SoftReferenceSingleton<ChinesePinyinConverter>() {
        /* renamed from: cX */
        protected ChinesePinyinConverter createInstance() {
            return new ChinesePinyinConverter();
        }
    };
    private ChinesePinyinDictionary FX;

    private static class BopomofoConvertor {
        private static final String[] FY = new String[]{"b", "ㄅ", "p", "ㄆ", "m", "ㄇ", "f", "ㄈ", MiCloudSmsCmd.TYPE_DISCARD_TOKEN, "ㄉ", "t", "ㄊ", MiCloudSmsCmd.TYPE_NOISE, "ㄋ", MiCloudSmsCmd.TYPE_LOCATION, "ㄌ", "g", "ㄍ", MiCloudSmsCmd.TYPE_LOCK, "ㄎ", "h", "ㄏ", "j", "ㄐ", "q", "ㄑ", "x", "ㄒ", "zh", "ㄓ", "ch", "ㄔ", "sh", "ㄕ", "r", "ㄖ", "z", "ㄗ", "c", "ㄘ", "s", "ㄙ", "y", "ㄧ", MiCloudSmsCmd.TYPE_WIPE, "ㄨ", "a", "ㄚ", "o", "ㄛ", "e", "ㄜ", "i", "ㄧ", "u", "ㄨ", "v", "ㄩ", "ao", "ㄠ", "ai", "ㄞ", "an", "ㄢ", "ang", "ㄤ", "ou", "ㄡ", "ong", "ㄨㄥ", "ei", "ㄟ", "en", "ㄣ", "eng", "ㄥ", "er", "ㄦ", "ie", "ㄧㄝ", "iu", "ㄧㄡ", "in", "ㄧㄣ", "ing", "ㄧㄥ", "iong", "ㄩㄥ", "ui", "ㄨㄟ", "un", "ㄨㄣ", "ue", "ㄩㄝ", "ve", "ㄩㄝ", "van", "ㄩㄢ", "vn", "ㄩㄣ", "", "", "zhi", "ㄓ", "chi", "ㄔ", "shi", "ㄕ", "ri", "ㄖ", "zi", "ㄗ", "ci", "ㄘ", "si", "ㄙ", "yi", "ㄧ", "ye", "ㄧㄝ", "you", "ㄧㄡ", "yin", "ㄧㄣ", "ying", "ㄧㄥ", "wu", "ㄨ", "wei", "ㄨㄟ", "wen", "ㄨㄣ", "yu", "ㄩ", "yue", "ㄩㄝ", "yuan", "ㄩㄢ", "yun", "ㄩㄣ", "yong", "ㄩㄥ", "ju", "ㄐㄩ", "jue", "ㄐㄩㄝ", "juan", "ㄐㄩㄢ", "jun", "ㄐㄩㄣ", "qu", "ㄑㄩ", "que", "ㄑㄩㄝ", "quan", "ㄑㄩㄢ", "qun", "ㄑㄩㄣ", "xu", "ㄒㄩ", "xue", "ㄒㄩㄝ", "xuan", "ㄒㄩㄢ", "xun", "ㄒㄩㄣ"};
        private static final Node FZ = cY();

        private static class Node {
            public char Ga;
            public Node Gb;
            public String Gc;
            public Node Gd;
            public boolean Ge;

            private Node() {
            }

            /* synthetic */ Node(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        private BopomofoConvertor() {
        }

        private static Node cY() {
            Node node = new Node();
            node.Gc = "";
            int i = 0;
            boolean z = i;
            while (i < FY.length) {
                String str = FY[i];
                if (str.length() == 0) {
                    z = true;
                } else {
                    int length = str.length();
                    Node node2 = node;
                    for (int i2 = 0; i2 < length; i2++) {
                        char toLowerCase = Character.toLowerCase(str.charAt(i2));
                        Node node3 = node2.Gb;
                        while (node3 != null && node3.Ga != toLowerCase) {
                            node3 = node3.Gd;
                        }
                        if (node3 == null) {
                            node3 = new Node();
                            node3.Ga = toLowerCase;
                            node3.Gd = node2.Gb;
                            node2.Gb = node3;
                        }
                        node2 = node3;
                    }
                    node2.Ge = z;
                    node2.Gc = FY[i + 1];
                }
                i += 2;
            }
            return node;
        }

        private static int a(String str, int i, StringBuilder stringBuilder) {
            int length = str.length();
            int i2 = i;
            Node node = null;
            Node node2 = FZ;
            int i3 = i2;
            while (i3 < length && node2 != null) {
                char toLowerCase = Character.toLowerCase(str.charAt(i3));
                node2 = node2.Gb;
                while (node2 != null && node2.Ga != toLowerCase) {
                    node2 = node2.Gd;
                }
                if (!(node2 == null || node2.Gc == null || (node2.Ge && i3 != length - 1))) {
                    i2 = i3 + 1;
                    node = node2;
                }
                i3++;
            }
            if (node != null) {
                stringBuilder.append(node.Gc);
            }
            return i2 - i;
        }

        public static CharSequence a(String str, StringBuilder stringBuilder) {
            if (str == null || str.length() == 0) {
                return str;
            }
            CharSequence stringBuilder2;
            int i = 0;
            if (stringBuilder2 == null) {
                stringBuilder2 = new StringBuilder();
            } else {
                stringBuilder2.setLength(0);
            }
            int length = str.length();
            while (i != length) {
                int a = a(str, i, stringBuilder2);
                if (a <= 0) {
                    return "";
                }
                i += a;
            }
            return stringBuilder2;
        }
    }

    private static class ChinesePinyinDictionary {
        private static final String Gf = "pinyinindex.idf";
        private Reader Gg;

        /* synthetic */ ChinesePinyinDictionary(AnonymousClass1 anonymousClass1) {
            this();
        }

        private ChinesePinyinDictionary() {
            String directIndexedFilePath = DirectIndexedFileExtractor.getDirectIndexedFilePath(AppConstants.getCurrentApplication(), Gf);
            if (directIndexedFilePath != null && new File(directIndexedFilePath).exists()) {
                try {
                    this.Gg = DirectIndexedFile.open(directIndexedFilePath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (this.Gg == null) {
                try {
                    this.Gg = DirectIndexedFile.open(AppConstants.getCurrentApplication().getResources().getAssets().open(Gf, 1));
                } catch (Exception e2) {
                    Log.e(ChinesePinyinConverter.TAG, "Init resource IOException");
                }
            }
        }

        public String[] a(char c) {
            if (this.Gg == null) {
                return null;
            }
            String str = (String) this.Gg.get(0, c - 19968, 0);
            if (!TextUtils.isEmpty(str)) {
                return str.split(",");
            }
            Log.e(ChinesePinyinConverter.TAG, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM.");
            return null;
        }

        protected void finalize() throws Throwable {
            if (this.Gg != null) {
                this.Gg.close();
            }
            super.finalize();
        }
    }

    public static class Token {
        private static final char Gh = ' ';
        public static final int HINDI = 4;
        public static final int LATIN = 1;
        public static final int PINYIN = 2;
        public static final int UNKNOWN = 3;
        public String[] polyPhones;
        public String source;
        public String target;
        public int type;

        public Token(int i, String str, String str2) {
            this.type = i;
            this.source = str;
            this.target = str2;
        }
    }

    /* synthetic */ ChinesePinyinConverter(AnonymousClass1 anonymousClass1) {
        this();
    }

    static {
        FP.put("单于", new String[]{"CHAN", "YU"});
        FP.put("长孙", new String[]{"ZHANG", "SUN"});
        FP.put("子车", new String[]{"ZI", "JU"});
        FP.put("万俟", new String[]{"MO", "QI"});
        FP.put("澹台", new String[]{"TAN", "TAI"});
        FP.put("尉迟", new String[]{"YU", "CHI"});
        FQ.put(Character.valueOf(20040), "YAO");
        FQ.put(Character.valueOf(19969), "DING");
        FQ.put(Character.valueOf(20446), "YU");
        FQ.put(Character.valueOf(36158), "JIA");
        FQ.put(Character.valueOf(27784), "SHEN");
        FQ.put(Character.valueOf(21340), "BU");
        FQ.put(Character.valueOf(34180), "BO");
        FQ.put(Character.valueOf(23387), "BO");
        FQ.put(Character.valueOf(36146), "BEN");
        FQ.put(Character.valueOf(36153), "FEI");
        FQ.put(Character.valueOf(27850), "BAN");
        FQ.put(Character.valueOf(33536), "BI");
        FQ.put(Character.valueOf(35098), "CHU");
        FQ.put(Character.valueOf(20256), "CHUAN");
        FQ.put(Character.valueOf(21442), "CAN");
        FQ.put(Character.valueOf(21333), "SHAN");
        FQ.put(Character.valueOf(37079), "CHI");
        FQ.put(Character.valueOf(38241), "CHAN");
        FQ.put(Character.valueOf(26397), "CHAO");
        FQ.put(Character.valueOf(21852), "CHUAI");
        FQ.put(Character.valueOf(34928), "CUI");
        FQ.put(Character.valueOf(26216), "CHANG");
        FQ.put(Character.valueOf(19985), "CHOU");
        FQ.put(Character.valueOf(30259), "CHOU");
        FQ.put(Character.valueOf(38271), "CHANG");
        FQ.put(Character.valueOf(36710), "CHE");
        FQ.put(Character.valueOf(32735), "ZHAI");
        FQ.put(Character.valueOf(20291), "DIAN");
        FQ.put(Character.valueOf(20992), "DIAO");
        FQ.put(Character.valueOf(35843), "DIAO");
        FQ.put(Character.valueOf(36934), "DI");
        FQ.put(Character.valueOf(26123), "GUI");
        FQ.put(Character.valueOf(33445), "GAI");
        FQ.put(Character.valueOf(33554), "KUANG");
        FQ.put(Character.valueOf(37063), "HUAN");
        FQ.put(Character.valueOf(24055), "XIANG");
        FQ.put(Character.valueOf(25750), "HAN");
        FQ.put(Character.valueOf(35265), "JIAN");
        FQ.put(Character.valueOf(38477), "JIANG");
        FQ.put(Character.valueOf(35282), "JIAO");
        FQ.put(Character.valueOf(32564), "JIAO");
        FQ.put(Character.valueOf(35760), "JI");
        FQ.put(Character.valueOf(29722), "JU");
        FQ.put(Character.valueOf(21095), "JI");
        FQ.put(Character.valueOf(38589), "JUAN");
        FQ.put(Character.valueOf(38551), "KUI");
        FQ.put(Character.valueOf(25000), "KAN");
        FQ.put(Character.valueOf(38752), "KU");
        FQ.put(Character.valueOf(20048), "YUE");
        FQ.put(Character.valueOf(21895), "LA");
        FQ.put(Character.valueOf(38610), "LUO");
        FQ.put(Character.valueOf(20102), "LIAO");
        FQ.put(Character.valueOf(32554), "MIAO");
        FQ.put(Character.valueOf(20340), "MI");
        FQ.put(Character.valueOf(35884), "MIAO");
        FQ.put(Character.valueOf(20060), "NIE");
        FQ.put(Character.valueOf(36898), "PANG");
        FQ.put(Character.valueOf(34028), "PENG");
        FQ.put(Character.valueOf(26420), "PIAO");
        FQ.put(Character.valueOf(20167), "QIU");
        FQ.put(Character.valueOf(35203), "QIN");
        FQ.put(Character.valueOf(30655), "QU");
        FQ.put(Character.valueOf(20160), "SHI");
        FQ.put(Character.valueOf(25240), "SHE");
        FQ.put(Character.valueOf(30509), "SUI");
        FQ.put(Character.valueOf(35299), "XIE");
        FQ.put(Character.valueOf(31995), "XI");
        FQ.put(Character.valueOf(24055), "XIANG");
        FQ.put(Character.valueOf(38500), "XU");
        FQ.put(Character.valueOf(23536), "XIAN");
        FQ.put(Character.valueOf(21592), "YUAN");
        FQ.put(Character.valueOf(36128), "YUAN");
        FQ.put(Character.valueOf(26366), "ZENG");
        FQ.put(Character.valueOf(26597), "ZHA");
        FQ.put(Character.valueOf(20256), "CHUAN");
        FQ.put(Character.valueOf(21484), "SHAO");
        FQ.put(Character.valueOf(37325), "chong");
        FQ.put(Character.valueOf(21306), "OU");
        FQ.put(Character.valueOf(26044), "YU");
    }

    private ChinesePinyinConverter() {
        this.FX = new ChinesePinyinDictionary();
    }

    public static ChinesePinyinConverter getInstance() {
        return (ChinesePinyinConverter) s.get();
    }

    public boolean isChinesePinyinKnown(char c) {
        return c >= FS && c <= FT;
    }

    private ArrayList<Token> I(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String substring;
        ArrayList<Token> arrayList = new ArrayList();
        int i = 0;
        if (str.length() >= 2) {
            substring = str.substring(0, 2);
            String[] strArr = (String[]) FP.get(substring);
            if (strArr != null) {
                while (i < strArr.length) {
                    Token token = new Token();
                    token.type = 2;
                    token.source = String.valueOf(substring.charAt(i));
                    token.target = strArr[i];
                    arrayList.add(token);
                    i++;
                }
                return arrayList;
            }
        }
        Character valueOf = Character.valueOf(str.charAt(0));
        substring = (String) FQ.get(valueOf);
        if (substring == null) {
            return null;
        }
        Token token2 = new Token();
        token2.type = 2;
        token2.source = valueOf.toString();
        token2.target = substring;
        arrayList.add(token2);
        return arrayList;
    }

    public ArrayList<Token> get(String str) {
        return get(str, true, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x013e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ArrayList<Token> get(String str, boolean z, boolean z2) {
        ArrayList<Token> arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        int size;
        int length;
        StringBuilder stringBuilder;
        int i;
        if (!z2) {
            Object I = I(str);
            if (I != null && I.size() > 0) {
                arrayList.addAll(I);
                size = I.size();
                length = str.length();
                stringBuilder = new StringBuilder();
                i = 1;
                for (size = 
/*
Method generation error in method: miui.text.ChinesePinyinConverter.get(java.lang.String, boolean, boolean):java.util.ArrayList<miui.text.ChinesePinyinConverter$Token>, dex: classes4.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: PHI: (r15_4 'size' int) = (r15_2 'size' int), (r15_3 'size' int) binds: {(r15_2 'size' int)=B:9:0x001c, (r15_3 'size' int)=B:10:0x0024} in method: miui.text.ChinesePinyinConverter.get(java.lang.String, boolean, boolean):java.util.ArrayList<miui.text.ChinesePinyinConverter$Token>, dex: classes4.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:228)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:183)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:118)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:57)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:118)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:57)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:173)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:321)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:259)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:221)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:10)
	at jadx.core.ProcessClass.process(ProcessClass.java:38)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
Caused by: jadx.core.utils.exceptions.CodegenException: PHI can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:539)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:511)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:222)
	... 29 more

*/

    private void a(StringBuilder stringBuilder, ArrayList<Token> arrayList, int i) {
        String stringBuilder2 = stringBuilder.toString();
        Token token = new Token(i, stringBuilder2, stringBuilder2);
        if (4 == i) {
            String[] hindiToPinyins = HindiPinyinConverter.getInstance().hindiToPinyins(token.source);
            if (hindiToPinyins.length > 0) {
                if (hindiToPinyins.length == 1) {
                    token.target = hindiToPinyins[0];
                    token.polyPhones = new String[]{token.target};
                } else {
                    token.target = hindiToPinyins[0];
                    token.polyPhones = hindiToPinyins;
                }
            }
        }
        arrayList.add(token);
        stringBuilder.setLength(0);
    }

    public CharSequence convertPinyin2Bopomofo(String str, StringBuilder stringBuilder) {
        return BopomofoConvertor.a(str, stringBuilder);
    }
}
