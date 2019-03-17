package com.taobao.ma.util;

import android.text.TextUtils;

public final class StringEncodeUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING = System.getProperty("file.encoding");
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    static {
        boolean z = "SJIS".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING) || EUC_JP.equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING);
        ASSUME_SHIFT_JIS = z;
    }

    private StringEncodeUtils() {
    }

    public static String guessEncoding(byte[] bytes) {
        int length = bytes.length;
        boolean canBeISO88591 = true;
        boolean canBeShiftJIS = true;
        boolean canBeUTF8 = true;
        boolean canBeGBK = true;
        int utf8BytesLeft = 0;
        int utf2BytesChars = 0;
        int utf3BytesChars = 0;
        int utf4BytesChars = 0;
        int sjisBytesLeft = 0;
        int sjisKatakanaChars = 0;
        int sjisCurKatakanaWordLength = 0;
        int sjisCurDoubleBytesWordLength = 0;
        int sjisMaxKatakanaWordLength = 0;
        int sjisMaxDoubleBytesWordLength = 0;
        int isoHighOther = 0;
        boolean utf8bom = bytes.length > 3 && bytes[0] == (byte) -17 && bytes[1] == (byte) -69 && bytes[2] == (byte) -65;
        int i = 0;
        while (i < length && (canBeGBK || canBeISO88591 || canBeShiftJIS || canBeUTF8)) {
            int value = bytes[i] & 255;
            if (canBeUTF8) {
                if (utf8BytesLeft > 0) {
                    if ((value & 128) == 0) {
                        canBeUTF8 = false;
                    } else {
                        utf8BytesLeft--;
                    }
                } else if ((value & 128) != 0) {
                    if ((value & 64) == 0) {
                        canBeUTF8 = false;
                    } else {
                        utf8BytesLeft++;
                        if ((value & 32) == 0) {
                            utf2BytesChars++;
                        } else {
                            utf8BytesLeft++;
                            if ((value & 16) == 0) {
                                utf3BytesChars++;
                            } else {
                                utf8BytesLeft++;
                                if ((value & 8) == 0) {
                                    utf4BytesChars++;
                                } else {
                                    canBeUTF8 = false;
                                }
                            }
                        }
                    }
                }
            }
            if (canBeGBK && value > 127 && value > 176 && value <= 247 && i + 1 < length) {
                int value2 = bytes[i + 1] & 255;
                if (value2 > 160 && value2 <= 247) {
                    canBeGBK = true;
                }
            }
            if (canBeISO88591) {
                if (value > 127 && value < 160) {
                    canBeISO88591 = false;
                } else if (value > 159 && (value < 192 || value == 215 || value == 247)) {
                    isoHighOther++;
                }
            }
            if (canBeShiftJIS) {
                if (sjisBytesLeft > 0) {
                    if (value < 64 || value == 127 || value > 252) {
                        canBeShiftJIS = false;
                    } else {
                        sjisBytesLeft--;
                    }
                } else if (value == 128 || value == 160 || value > 239) {
                    canBeShiftJIS = false;
                } else if (value > 160 && value < 224) {
                    sjisKatakanaChars++;
                    sjisCurDoubleBytesWordLength = 0;
                    sjisCurKatakanaWordLength++;
                    if (sjisCurKatakanaWordLength > sjisMaxKatakanaWordLength) {
                        sjisMaxKatakanaWordLength = sjisCurKatakanaWordLength;
                    }
                } else if (value > 127) {
                    sjisBytesLeft++;
                    sjisCurKatakanaWordLength = 0;
                    sjisCurDoubleBytesWordLength++;
                    if (sjisCurDoubleBytesWordLength > sjisMaxDoubleBytesWordLength) {
                        sjisMaxDoubleBytesWordLength = sjisCurDoubleBytesWordLength;
                    }
                } else {
                    sjisCurKatakanaWordLength = 0;
                    sjisCurDoubleBytesWordLength = 0;
                }
            }
            i++;
        }
        if (canBeUTF8 && utf8BytesLeft > 0) {
            canBeUTF8 = false;
        }
        if (canBeShiftJIS && sjisBytesLeft > 0) {
            canBeShiftJIS = false;
        }
        if (canBeUTF8 && (utf8bom || (utf2BytesChars + utf3BytesChars) + utf4BytesChars > 0)) {
            return UTF8;
        }
        if (canBeShiftJIS && (ASSUME_SHIFT_JIS || sjisMaxKatakanaWordLength >= 3 || sjisMaxDoubleBytesWordLength >= 3)) {
            return "SJIS";
        }
        if (canBeGBK) {
            return "GB2312";
        }
        if (canBeISO88591 && canBeShiftJIS) {
            return (!(sjisMaxKatakanaWordLength == 2 && sjisKatakanaChars == 2) && isoHighOther * 10 < length) ? ISO88591 : "SJIS";
        } else {
            if (canBeISO88591) {
                return ISO88591;
            }
            if (canBeShiftJIS) {
                return "SJIS";
            }
            if (canBeUTF8) {
                return UTF8;
            }
            return PLATFORM_DEFAULT_ENCODING;
        }
    }

    public static String getStringEncode(byte[] needGuessEncodeData) {
        String encodeString = null;
        if (needGuessEncodeData != null) {
            try {
                if (needGuessEncodeData.length > 0) {
                    encodeString = guessEncoding(needGuessEncodeData);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(encodeString)) {
            return "";
        }
        return encodeString;
    }
}
