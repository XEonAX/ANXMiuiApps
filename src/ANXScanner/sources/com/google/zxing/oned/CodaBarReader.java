package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public final class CodaBarReader extends OneDReader {
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
    static final int[] CHARACTER_ENCODINGS = new int[]{3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final char[] STARTEND_ENCODING = new char[]{'A', 'B', 'C', 'D'};
    private int counterLength = 0;
    private int[] counters = new int[80];
    private final StringBuilder decodeRowResult = new StringBuilder(20);

    /* JADX WARNING: Missing block: B:39:0x00ef, code:
            if (r23.containsKey(com.google.zxing.DecodeHintType.RETURN_CODABAR_START_END) == false) goto L_0x00f1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Result decodeRow(int rowNumber, BitArray row, Map<DecodeHintType, ?> hints) throws NotFoundException {
        int i;
        Arrays.fill(this.counters, 0);
        setCounters(row);
        int startOffset = findStartPattern();
        int nextStart = startOffset;
        this.decodeRowResult.setLength(0);
        do {
            int charOffset = toNarrowWidePattern(nextStart);
            if (charOffset != -1) {
                this.decodeRowResult.append((char) charOffset);
                nextStart += 8;
                if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[charOffset])) {
                    break;
                }
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } while (nextStart < this.counterLength);
        int trailingWhitespace = this.counters[nextStart - 1];
        int lastPatternSize = 0;
        for (i = -8; i < -1; i++) {
            lastPatternSize += this.counters[nextStart + i];
        }
        if (nextStart >= this.counterLength || trailingWhitespace >= lastPatternSize / 2) {
            validatePattern(startOffset);
            for (i = 0; i < this.decodeRowResult.length(); i++) {
                this.decodeRowResult.setCharAt(i, ALPHABET[this.decodeRowResult.charAt(i)]);
            }
            if (arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(0))) {
                if (!arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(this.decodeRowResult.length() - 1))) {
                    throw NotFoundException.getNotFoundInstance();
                } else if (this.decodeRowResult.length() <= 3) {
                    throw NotFoundException.getNotFoundInstance();
                } else {
                    if (hints != null) {
                    }
                    this.decodeRowResult.deleteCharAt(this.decodeRowResult.length() - 1);
                    this.decodeRowResult.deleteCharAt(0);
                    int runningCount = 0;
                    for (i = 0; i < startOffset; i++) {
                        runningCount += this.counters[i];
                    }
                    float left = (float) runningCount;
                    for (i = startOffset; i < nextStart - 1; i++) {
                        runningCount += this.counters[i];
                    }
                    float right = (float) runningCount;
                    return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(left, (float) rowNumber), new ResultPoint(right, (float) rowNumber)}, BarcodeFormat.CODABAR);
                }
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    void validatePattern(int start) throws NotFoundException {
        int pattern;
        int j;
        int category;
        int[] sizes = new int[4];
        int[] counts = new int[4];
        int end = this.decodeRowResult.length() - 1;
        int pos = start;
        int i = 0;
        while (true) {
            pattern = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i)];
            for (j = 6; j >= 0; j--) {
                category = (j & 1) + ((pattern & 1) * 2);
                sizes[category] = sizes[category] + this.counters[pos + j];
                counts[category] = counts[category] + 1;
                pattern >>= 1;
            }
            if (i >= end) {
                break;
            }
            pos += 8;
            i++;
        }
        float[] maxes = new float[4];
        float[] mins = new float[4];
        for (i = 0; i < 2; i++) {
            mins[i] = 0.0f;
            mins[i + 2] = ((((float) sizes[i]) / ((float) counts[i])) + (((float) sizes[i + 2]) / ((float) counts[i + 2]))) / MAX_ACCEPTABLE;
            maxes[i] = mins[i + 2];
            maxes[i + 2] = ((((float) sizes[i + 2]) * MAX_ACCEPTABLE) + PADDING) / ((float) counts[i + 2]);
        }
        pos = start;
        i = 0;
        loop3:
        while (true) {
            pattern = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i)];
            j = 6;
            while (j >= 0) {
                category = (j & 1) + ((pattern & 1) * 2);
                int size = this.counters[pos + j];
                if (((float) size) >= mins[category] && ((float) size) <= maxes[category]) {
                    pattern >>= 1;
                    j--;
                }
            }
            if (i < end) {
                pos += 8;
                i++;
            } else {
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray row) throws NotFoundException {
        this.counterLength = 0;
        int i = row.getNextUnset(0);
        int end = row.getSize();
        if (i >= end) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean isWhite = true;
        int count = 0;
        while (i < end) {
            if ((row.get(i) ^ isWhite) != 0) {
                count++;
            } else {
                counterAppend(count);
                count = 1;
                isWhite = !isWhite;
            }
            i++;
        }
        counterAppend(count);
    }

    private void counterAppend(int e) {
        this.counters[this.counterLength] = e;
        this.counterLength++;
        if (this.counterLength >= this.counters.length) {
            int[] temp = new int[(this.counterLength * 2)];
            System.arraycopy(this.counters, 0, temp, 0, this.counterLength);
            this.counters = temp;
        }
    }

    private int findStartPattern() throws NotFoundException {
        int i = 1;
        while (i < this.counterLength) {
            int charOffset = toNarrowWidePattern(i);
            if (charOffset != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[charOffset])) {
                int patternSize = 0;
                for (int j = i; j < i + 7; j++) {
                    patternSize += this.counters[j];
                }
                if (i == 1 || this.counters[i - 1] >= patternSize / 2) {
                    return i;
                }
            }
            i += 2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    static boolean arrayContains(char[] array, char key) {
        if (array == null) {
            return false;
        }
        for (char c : array) {
            if (c == key) {
                return true;
            }
        }
        return false;
    }

    private int toNarrowWidePattern(int position) {
        int end = position + 7;
        if (end >= this.counterLength) {
            return -1;
        }
        int j;
        int currentCounter;
        int i;
        int[] theCounters = this.counters;
        int maxBar = 0;
        int minBar = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (j = position; j < end; j += 2) {
            currentCounter = theCounters[j];
            if (currentCounter < minBar) {
                minBar = currentCounter;
            }
            if (currentCounter > maxBar) {
                maxBar = currentCounter;
            }
        }
        int thresholdBar = (minBar + maxBar) / 2;
        int maxSpace = 0;
        int minSpace = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (j = position + 1; j < end; j += 2) {
            currentCounter = theCounters[j];
            if (currentCounter < minSpace) {
                minSpace = currentCounter;
            }
            if (currentCounter > maxSpace) {
                maxSpace = currentCounter;
            }
        }
        int thresholdSpace = (minSpace + maxSpace) / 2;
        int bitmask = 128;
        int pattern = 0;
        for (i = 0; i < 7; i++) {
            int threshold;
            if ((i & 1) == 0) {
                threshold = thresholdBar;
            } else {
                threshold = thresholdSpace;
            }
            bitmask >>= 1;
            if (theCounters[position + i] > threshold) {
                pattern |= bitmask;
            }
        }
        for (i = 0; i < CHARACTER_ENCODINGS.length; i++) {
            if (CHARACTER_ENCODINGS[i] == pattern) {
                return i;
            }
        }
        return -1;
    }
}
