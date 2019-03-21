package com.google.zxing.oned;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.util.Arrays;

public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = new char[]{'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = new char[]{'/', ':', '+', '.'};
    private static final char[] START_END_CHARS = new char[]{'A', 'B', 'C', 'D'};

    /* JADX WARNING: Removed duplicated region for block: B:63:0x0149  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x012b A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0126  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean[] encode(String contents) {
        if (contents.length() < 2) {
            throw new IllegalArgumentException("Codabar should start/end with start/stop symbols");
        }
        char firstChar = Character.toUpperCase(contents.charAt(0));
        char lastChar = Character.toUpperCase(contents.charAt(contents.length() - 1));
        boolean startsEndsNormal = CodaBarReader.arrayContains(START_END_CHARS, firstChar) && CodaBarReader.arrayContains(START_END_CHARS, lastChar);
        boolean startsEndsAlt = CodaBarReader.arrayContains(ALT_START_END_CHARS, firstChar) && CodaBarReader.arrayContains(ALT_START_END_CHARS, lastChar);
        if (startsEndsNormal || startsEndsAlt) {
            int resultLength = 20;
            int i = 1;
            while (i < contents.length() - 1) {
                if (Character.isDigit(contents.charAt(i)) || contents.charAt(i) == '-' || contents.charAt(i) == '$') {
                    resultLength += 9;
                } else if (CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, contents.charAt(i))) {
                    resultLength += 10;
                } else {
                    throw new IllegalArgumentException("Cannot encode : '" + contents.charAt(i) + '\'');
                }
                i++;
            }
            boolean[] result = new boolean[(resultLength + (contents.length() - 1))];
            int position = 0;
            int index = 0;
            while (index < contents.length()) {
                boolean color;
                int counter;
                int bit;
                char c = Character.toUpperCase(contents.charAt(index));
                if (index == 0 || index == contents.length() - 1) {
                    switch (c) {
                        case '*':
                            c = 'C';
                            break;
                        case 'E':
                            c = 'D';
                            break;
                        case 'N':
                            c = 'B';
                            break;
                        case BaiduSceneResult.FOOTBALL /*84*/:
                            c = 'A';
                            break;
                    }
                }
                int code = 0;
                i = 0;
                while (i < CodaBarReader.ALPHABET.length) {
                    if (c == CodaBarReader.ALPHABET[i]) {
                        code = CodaBarReader.CHARACTER_ENCODINGS[i];
                        color = true;
                        counter = 0;
                        bit = 0;
                        while (bit < 7) {
                            result[position] = color;
                            position++;
                            if (((code >> (6 - bit)) & 1) == 0 || counter == 1) {
                                color = !color;
                                bit++;
                                counter = 0;
                            } else {
                                counter++;
                            }
                        }
                        if (index >= contents.length() - 1) {
                            result[position] = false;
                            position++;
                        }
                        index++;
                    } else {
                        i++;
                    }
                }
                color = true;
                counter = 0;
                bit = 0;
                while (bit < 7) {
                }
                if (index >= contents.length() - 1) {
                }
                index++;
            }
            return result;
        }
        throw new IllegalArgumentException("Codabar should start/end with " + Arrays.toString(START_END_CHARS) + ", or start/end with " + Arrays.toString(ALT_START_END_CHARS));
    }
}
