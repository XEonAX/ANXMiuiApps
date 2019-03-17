package com.google.zxing.oned;

import com.alibaba.wireless.security.SecExceptionCode;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public final class Code93Reader extends OneDReader {
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final int ASTERISK_ENCODING = CHARACTER_ENCODINGS[47];
    private static final int[] CHARACTER_ENCODINGS = new int[]{276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, SecExceptionCode.SEC_ERROR_DYN_ENC_GET_DATA_FILE_KEY_FAILED, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, SecExceptionCode.SEC_ERROR_STA_ENC, 278, 436, 434, 428, 422, 406, 410, 364, 358, SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, SecExceptionCode.SEC_ERROR_STA_KEY_NOT_EXISTED, 350};
    private final int[] counters = new int[6];
    private final StringBuilder decodeRowResult = new StringBuilder(20);

    public Result decodeRow(int rowNumber, BitArray row, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int lastStart;
        int[] start = findAsteriskPattern(row);
        int nextStart = row.getNextSet(start[1]);
        int end = row.getSize();
        int[] theCounters = this.counters;
        Arrays.fill(theCounters, 0);
        StringBuilder result = this.decodeRowResult;
        result.setLength(0);
        char decodedChar;
        do {
            OneDReader.recordPattern(row, nextStart, theCounters);
            int pattern = toPattern(theCounters);
            if (pattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            decodedChar = patternToChar(pattern);
            result.append(decodedChar);
            lastStart = nextStart;
            for (int counter : theCounters) {
                nextStart += counter;
            }
            nextStart = row.getNextSet(nextStart);
        } while (decodedChar != '*');
        result.deleteCharAt(result.length() - 1);
        int lastPatternSize = 0;
        for (int counter2 : theCounters) {
            lastPatternSize += counter2;
        }
        if (nextStart == end || !row.get(nextStart)) {
            throw NotFoundException.getNotFoundInstance();
        } else if (result.length() < 2) {
            throw NotFoundException.getNotFoundInstance();
        } else {
            checkChecksums(result);
            result.setLength(result.length() - 2);
            float left = ((float) (start[1] + start[0])) / 2.0f;
            float right = ((float) lastStart) + (((float) lastPatternSize) / 2.0f);
            return new Result(decodeExtended(result), null, new ResultPoint[]{new ResultPoint(left, (float) rowNumber), new ResultPoint(right, (float) rowNumber)}, BarcodeFormat.CODE_93);
        }
    }

    private int[] findAsteriskPattern(BitArray row) throws NotFoundException {
        int width = row.getSize();
        int rowOffset = row.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] theCounters = this.counters;
        int patternStart = rowOffset;
        boolean isWhite = false;
        int patternLength = theCounters.length;
        int counterPosition = 0;
        for (int i = rowOffset; i < width; i++) {
            if ((row.get(i) ^ isWhite) != 0) {
                theCounters[counterPosition] = theCounters[counterPosition] + 1;
            } else {
                if (counterPosition != patternLength - 1) {
                    counterPosition++;
                } else if (toPattern(theCounters) == ASTERISK_ENCODING) {
                    return new int[]{patternStart, i};
                } else {
                    patternStart += theCounters[0] + theCounters[1];
                    System.arraycopy(theCounters, 2, theCounters, 0, patternLength - 2);
                    theCounters[patternLength - 2] = 0;
                    theCounters[patternLength - 1] = 0;
                    counterPosition--;
                }
                theCounters[counterPosition] = 1;
                if (isWhite) {
                    isWhite = false;
                } else {
                    isWhite = true;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int toPattern(int[] counters) {
        int max = counters.length;
        int sum = 0;
        for (int counter : counters) {
            sum += counter;
        }
        int pattern = 0;
        for (int i = 0; i < max; i++) {
            int scaled = Math.round((((float) counters[i]) * 9.0f) / ((float) sum));
            if (scaled < 1 || scaled > 4) {
                return -1;
            }
            if ((i & 1) == 0) {
                for (int j = 0; j < scaled; j++) {
                    pattern = (pattern << 1) | 1;
                }
            } else {
                pattern <<= scaled;
            }
        }
        return pattern;
    }

    private static char patternToChar(int pattern) throws NotFoundException {
        for (int i = 0; i < CHARACTER_ENCODINGS.length; i++) {
            if (CHARACTER_ENCODINGS[i] == pattern) {
                return ALPHABET[i];
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String decodeExtended(CharSequence encoded) throws FormatException {
        int length = encoded.length();
        StringBuilder decoded = new StringBuilder(length);
        int i = 0;
        while (i < length) {
            char c = encoded.charAt(i);
            if (c < 'a' || c > 'd') {
                decoded.append(c);
            } else if (i >= length - 1) {
                throw FormatException.getFormatInstance();
            } else {
                char next = encoded.charAt(i + 1);
                char decodedChar = 0;
                switch (c) {
                    case 'a':
                        if (next >= 'A' && next <= 'Z') {
                            decodedChar = (char) (next - 64);
                            break;
                        }
                        throw FormatException.getFormatInstance();
                        break;
                    case 'b':
                        if (next < 'A' || next > 'E') {
                            if (next >= 'F' && next <= 'W') {
                                decodedChar = (char) (next - 11);
                                break;
                            }
                            throw FormatException.getFormatInstance();
                        }
                        decodedChar = (char) (next - 38);
                        break;
                        break;
                    case 'c':
                        if (next >= 'A' && next <= 'O') {
                            decodedChar = (char) (next - 32);
                            break;
                        } else if (next == 'Z') {
                            decodedChar = ':';
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'd':
                        if (next >= 'A' && next <= 'Z') {
                            decodedChar = (char) (next + 32);
                            break;
                        }
                        throw FormatException.getFormatInstance();
                }
                decoded.append(decodedChar);
                i++;
            }
            i++;
        }
        return decoded.toString();
    }

    private static void checkChecksums(CharSequence result) throws ChecksumException {
        int length = result.length();
        checkOneChecksum(result, length - 2, 20);
        checkOneChecksum(result, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence result, int checkPosition, int weightMax) throws ChecksumException {
        int weight = 1;
        int total = 0;
        for (int i = checkPosition - 1; i >= 0; i--) {
            total += ALPHABET_STRING.indexOf(result.charAt(i)) * weight;
            weight++;
            if (weight > weightMax) {
                weight = 1;
            }
        }
        if (result.charAt(checkPosition) != ALPHABET[total % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }
}
