package miui.text;

import java.lang.Character.UnicodeBlock;
import java.util.ArrayList;
import java.util.Iterator;
import miui.text.ChinesePinyinConverter.Token;
import miui.util.SoftReferenceSingleton;

public class SortKeyGenerator {
    private static final SoftReferenceSingleton<SortKeyGenerator> s = new SoftReferenceSingleton<SortKeyGenerator>() {
        /* renamed from: de */
        protected SortKeyGenerator createInstance() {
            return new SortKeyGenerator();
        }
    };
    private BaseGenerator[] GO;

    private class BaseGenerator {
        private BaseGenerator() {
        }

        /* synthetic */ BaseGenerator(SortKeyGenerator sortKeyGenerator, AnonymousClass1 anonymousClass1) {
            this();
        }

        public String getSortKey(String str) {
            return str;
        }
    }

    private class ChineseLocaleUtils extends BaseGenerator {
        private ChineseLocaleUtils() {
            super(SortKeyGenerator.this, null);
        }

        /* synthetic */ ChineseLocaleUtils(SortKeyGenerator sortKeyGenerator, AnonymousClass1 anonymousClass1) {
            this();
        }

        public String getSortKey(String str) {
            ArrayList arrayList = ChinesePinyinConverter.getInstance().get(str);
            if (arrayList == null || arrayList.size() <= 0) {
                return super.getSortKey(str);
            }
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Token token = (Token) it.next();
                if (2 == token.type) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(' ');
                    }
                    stringBuilder.append(token.target.charAt(0));
                    stringBuilder.append("   ");
                    if (token.target.length() > 1) {
                        stringBuilder.append(token.target.substring(1));
                    }
                    stringBuilder.append(' ');
                    stringBuilder.append(token.source);
                } else {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(' ');
                    }
                    stringBuilder.append(token.source);
                }
            }
            return stringBuilder.toString();
        }
    }

    private enum NameStyle {
        UNDEFINED,
        WESTERN,
        CJK,
        CHINESE,
        JAPANESE,
        KOREAN;

        public static NameStyle K(String str) {
            if (str == null) {
                return UNDEFINED;
            }
            NameStyle nameStyle = UNDEFINED;
            int length = str.length();
            int i = 0;
            while (i < length) {
                int codePointAt = Character.codePointAt(str, i);
                if (Character.isLetter(codePointAt)) {
                    UnicodeBlock of = UnicodeBlock.of(codePointAt);
                    if (!a(of)) {
                        if (b(of)) {
                            return b(str, i);
                        }
                        if (d(of)) {
                            return JAPANESE;
                        }
                        if (c(of)) {
                            return KOREAN;
                        }
                    }
                    nameStyle = WESTERN;
                }
                i += Character.charCount(codePointAt);
            }
            return nameStyle;
        }

        private static NameStyle b(String str, int i) {
            int length = str.length();
            while (i < length) {
                int codePointAt = Character.codePointAt(str, i);
                if (Character.isLetter(codePointAt)) {
                    UnicodeBlock of = UnicodeBlock.of(codePointAt);
                    if (d(of)) {
                        return JAPANESE;
                    }
                    if (c(of)) {
                        return KOREAN;
                    }
                    if (a(Character.toChars(codePointAt))) {
                        return CHINESE;
                    }
                }
                i += Character.charCount(codePointAt);
            }
            return CJK;
        }

        private static boolean a(UnicodeBlock unicodeBlock) {
            return unicodeBlock == UnicodeBlock.BASIC_LATIN || unicodeBlock == UnicodeBlock.LATIN_1_SUPPLEMENT || unicodeBlock == UnicodeBlock.LATIN_EXTENDED_A || unicodeBlock == UnicodeBlock.LATIN_EXTENDED_B || unicodeBlock == UnicodeBlock.LATIN_EXTENDED_ADDITIONAL;
        }

        private static boolean b(UnicodeBlock unicodeBlock) {
            return unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeBlock == UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeBlock == UnicodeBlock.CJK_RADICALS_SUPPLEMENT || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY_FORMS || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT;
        }

        private static boolean c(UnicodeBlock unicodeBlock) {
            return unicodeBlock == UnicodeBlock.HANGUL_SYLLABLES || unicodeBlock == UnicodeBlock.HANGUL_JAMO || unicodeBlock == UnicodeBlock.HANGUL_COMPATIBILITY_JAMO;
        }

        private static boolean d(UnicodeBlock unicodeBlock) {
            return unicodeBlock == UnicodeBlock.KATAKANA || unicodeBlock == UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS || unicodeBlock == UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS || unicodeBlock == UnicodeBlock.HIRAGANA;
        }

        private static boolean a(char[] cArr) {
            for (char isChinesePinyinKnown : cArr) {
                if (ChinesePinyinConverter.getInstance().isChinesePinyinKnown(isChinesePinyinKnown)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* synthetic */ SortKeyGenerator(AnonymousClass1 anonymousClass1) {
        this();
    }

    private SortKeyGenerator() {
        this.GO = new BaseGenerator[NameStyle.values().length];
        this.GO[NameStyle.UNDEFINED.ordinal()] = new BaseGenerator(this, null);
    }

    public static SortKeyGenerator getInstance() {
        return (SortKeyGenerator) s.get();
    }

    private synchronized BaseGenerator a(NameStyle nameStyle) {
        BaseGenerator baseGenerator;
        baseGenerator = this.GO[nameStyle.ordinal()];
        if (baseGenerator == null && nameStyle == NameStyle.CHINESE) {
            baseGenerator = new ChineseLocaleUtils(this, null);
            this.GO[nameStyle.ordinal()] = baseGenerator;
        }
        if (baseGenerator == null) {
            baseGenerator = this.GO[NameStyle.UNDEFINED.ordinal()];
        }
        return baseGenerator;
    }

    public String getSortKey(String str) {
        return a(NameStyle.K(str)).getSortKey(str);
    }
}
