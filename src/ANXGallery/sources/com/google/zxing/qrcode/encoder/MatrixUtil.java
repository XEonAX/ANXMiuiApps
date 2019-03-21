package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

final class MatrixUtil {
    private static final int[][] POSITION_ADJUSTMENT_PATTERN;
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = new int[][]{new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, BaiduSceneResult.TAEKWONDO, -1, -1}, new int[]{6, 28, 54, 80, BaiduSceneResult.PALACE, -1, -1}, new int[]{6, 32, 58, 84, BaiduSceneResult.CASTLE, -1, -1}, new int[]{6, 30, 58, 86, BaiduSceneResult.BRIDGE, -1, -1}, new int[]{6, 34, 62, 90, BaiduSceneResult.SUBWAY, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.ID_CARD, -1}, new int[]{6, 26, 52, 78, BaiduSceneResult.SPORTS_OTHER, BaiduSceneResult.VISA, -1}, new int[]{6, 30, 56, 82, BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE, BaiduSceneResult.SCREEN_TEXT, -1}, new int[]{6, 34, 60, 86, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.COSMETICS, -1}, new int[]{6, 30, 58, 86, BaiduSceneResult.BRIDGE, BaiduSceneResult.DIGITAL_PRODUCT, -1}, new int[]{6, 34, 62, 90, BaiduSceneResult.SUBWAY, 146, -1}, new int[]{6, 30, 54, 78, BaiduSceneResult.TAEKWONDO, BaiduSceneResult.ID_CARD, 150}, new int[]{6, 24, 50, 76, BaiduSceneResult.TAEKWONDO, 128, 154}, new int[]{6, 28, 54, 80, BaiduSceneResult.PALACE, BaiduSceneResult.VARIOUS_TICKETS, 158}, new int[]{6, 32, 58, 84, BaiduSceneResult.CASTLE, BaiduSceneResult.APPAREL, 162}, new int[]{6, 26, 54, 82, BaiduSceneResult.CASTLE, BaiduSceneResult.COSMETICS, 166}, new int[]{6, 30, 58, 86, BaiduSceneResult.BRIDGE, BaiduSceneResult.DIGITAL_PRODUCT, 170}};
    private static final int[][] POSITION_DETECTION_PATTERN;
    private static final int[][] TYPE_INFO_COORDINATES;

    static {
        r0 = new int[7][];
        r1 = new int[7];
        r1 = new int[7];
        r1[0] = 1;
        r1[2] = 1;
        r1[3] = 1;
        r1[4] = 1;
        r1[6] = 1;
        r0[2] = r1;
        int[] iArr = new int[7];
        iArr[0] = 1;
        iArr[2] = 1;
        iArr[3] = 1;
        iArr[4] = 1;
        iArr[6] = 1;
        r0[3] = iArr;
        r1 = new int[7];
        r1[0] = 1;
        r1[2] = 1;
        r1[3] = 1;
        r1[4] = 1;
        r1[6] = 1;
        r0[4] = r1;
        iArr = new int[7];
        POSITION_DETECTION_PATTERN = r0;
        r0 = new int[5][];
        r1 = new int[5];
        r1 = new int[5];
        r1[0] = 1;
        r1[2] = 1;
        r1[4] = 1;
        r0[2] = r1;
        iArr = new int[5];
        iArr[0] = 1;
        iArr[4] = 1;
        r0[3] = iArr;
        r0[4] = new int[]{1, 1, 1, 1, 1};
        POSITION_ADJUSTMENT_PATTERN = r0;
        r0 = new int[15][];
        r1 = new int[]{8, r1};
        r0[1] = new int[]{8, 1};
        r0[2] = new int[]{8, 2};
        r0[3] = new int[]{8, 3};
        r0[4] = new int[]{8, 4};
        r0[5] = new int[]{8, 5};
        r0[6] = new int[]{8, 7};
        r0[7] = new int[]{8, 8};
        r0[8] = new int[]{7, 8};
        r0[9] = new int[]{5, 8};
        r0[10] = new int[]{4, 8};
        r0[11] = new int[]{3, 8};
        r0[12] = new int[]{2, 8};
        r0[13] = new int[]{1, 8};
        iArr = new int[]{8, iArr};
        TYPE_INFO_COORDINATES = r0;
    }

    static void clearMatrix(ByteMatrix matrix) {
        matrix.clear((byte) -1);
    }

    static void buildMatrix(BitArray dataBits, ErrorCorrectionLevel ecLevel, Version version, int maskPattern, ByteMatrix matrix) throws WriterException {
        clearMatrix(matrix);
        embedBasicPatterns(version, matrix);
        embedTypeInfo(ecLevel, maskPattern, matrix);
        maybeEmbedVersionInfo(version, matrix);
        embedDataBits(dataBits, maskPattern, matrix);
    }

    static void embedBasicPatterns(Version version, ByteMatrix matrix) throws WriterException {
        embedPositionDetectionPatternsAndSeparators(matrix);
        embedDarkDotAtLeftBottomCorner(matrix);
        maybeEmbedPositionAdjustmentPatterns(version, matrix);
        embedTimingPatterns(matrix);
    }

    static void embedTypeInfo(ErrorCorrectionLevel ecLevel, int maskPattern, ByteMatrix matrix) throws WriterException {
        BitArray typeInfoBits = new BitArray();
        makeTypeInfoBits(ecLevel, maskPattern, typeInfoBits);
        for (int i = 0; i < typeInfoBits.getSize(); i++) {
            boolean bit = typeInfoBits.get((typeInfoBits.getSize() - 1) - i);
            matrix.set(TYPE_INFO_COORDINATES[i][0], TYPE_INFO_COORDINATES[i][1], bit);
            if (i < 8) {
                matrix.set((matrix.getWidth() - i) - 1, 8, bit);
            } else {
                matrix.set(8, (matrix.getHeight() - 7) + (i - 8), bit);
            }
        }
    }

    static void maybeEmbedVersionInfo(Version version, ByteMatrix matrix) throws WriterException {
        if (version.getVersionNumber() >= 7) {
            BitArray versionInfoBits = new BitArray();
            makeVersionInfoBits(version, versionInfoBits);
            int bitIndex = 17;
            for (int i = 0; i < 6; i++) {
                for (int j = 0; j < 3; j++) {
                    boolean bit = versionInfoBits.get(bitIndex);
                    bitIndex--;
                    matrix.set(i, (matrix.getHeight() - 11) + j, bit);
                    matrix.set((matrix.getHeight() - 11) + j, i, bit);
                }
            }
        }
    }

    static void embedDataBits(BitArray dataBits, int maskPattern, ByteMatrix matrix) throws WriterException {
        int bitIndex = 0;
        int direction = -1;
        int x = matrix.getWidth() - 1;
        int y = matrix.getHeight() - 1;
        while (x > 0) {
            if (x == 6) {
                x--;
            }
            while (y >= 0 && y < matrix.getHeight()) {
                for (int i = 0; i < 2; i++) {
                    int xx = x - i;
                    if (isEmpty(matrix.get(xx, y))) {
                        boolean bit;
                        if (bitIndex < dataBits.getSize()) {
                            bit = dataBits.get(bitIndex);
                            bitIndex++;
                        } else {
                            bit = false;
                        }
                        if (maskPattern != -1 && MaskUtil.getDataMaskBit(maskPattern, xx, y)) {
                            bit = !bit;
                        }
                        matrix.set(xx, y, bit);
                    }
                }
                y += direction;
            }
            direction = -direction;
            y += direction;
            x -= 2;
        }
        if (bitIndex != dataBits.getSize()) {
            throw new WriterException("Not all bits consumed: " + bitIndex + '/' + dataBits.getSize());
        }
    }

    static int findMSBSet(int value) {
        int numDigits = 0;
        while (value != 0) {
            value >>>= 1;
            numDigits++;
        }
        return numDigits;
    }

    static int calculateBCHCode(int value, int poly) {
        if (poly == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int msbSetInPoly = findMSBSet(poly);
        value <<= msbSetInPoly - 1;
        while (findMSBSet(value) >= msbSetInPoly) {
            value ^= poly << (findMSBSet(value) - msbSetInPoly);
        }
        return value;
    }

    static void makeTypeInfoBits(ErrorCorrectionLevel ecLevel, int maskPattern, BitArray bits) throws WriterException {
        if (QRCode.isValidMaskPattern(maskPattern)) {
            int typeInfo = (ecLevel.getBits() << 3) | maskPattern;
            bits.appendBits(typeInfo, 5);
            bits.appendBits(calculateBCHCode(typeInfo, 1335), 10);
            BitArray maskBits = new BitArray();
            maskBits.appendBits(21522, 15);
            bits.xor(maskBits);
            if (bits.getSize() != 15) {
                throw new WriterException("should not happen but we got: " + bits.getSize());
            }
            return;
        }
        throw new WriterException("Invalid mask pattern");
    }

    static void makeVersionInfoBits(Version version, BitArray bits) throws WriterException {
        bits.appendBits(version.getVersionNumber(), 6);
        bits.appendBits(calculateBCHCode(version.getVersionNumber(), 7973), 12);
        if (bits.getSize() != 18) {
            throw new WriterException("should not happen but we got: " + bits.getSize());
        }
    }

    private static boolean isEmpty(int value) {
        return value == -1;
    }

    private static void embedTimingPatterns(ByteMatrix matrix) {
        for (int i = 8; i < matrix.getWidth() - 8; i++) {
            int bit = (i + 1) % 2;
            if (isEmpty(matrix.get(i, 6))) {
                matrix.set(i, 6, bit);
            }
            if (isEmpty(matrix.get(6, i))) {
                matrix.set(6, i, bit);
            }
        }
    }

    private static void embedDarkDotAtLeftBottomCorner(ByteMatrix matrix) throws WriterException {
        if (matrix.get(8, matrix.getHeight() - 8) == (byte) 0) {
            throw new WriterException();
        }
        matrix.set(8, matrix.getHeight() - 8, 1);
    }

    private static void embedHorizontalSeparationPattern(int xStart, int yStart, ByteMatrix matrix) throws WriterException {
        int x = 0;
        while (x < 8) {
            if (isEmpty(matrix.get(xStart + x, yStart))) {
                matrix.set(xStart + x, yStart, 0);
                x++;
            } else {
                throw new WriterException();
            }
        }
    }

    private static void embedVerticalSeparationPattern(int xStart, int yStart, ByteMatrix matrix) throws WriterException {
        int y = 0;
        while (y < 7) {
            if (isEmpty(matrix.get(xStart, yStart + y))) {
                matrix.set(xStart, yStart + y, 0);
                y++;
            } else {
                throw new WriterException();
            }
        }
    }

    private static void embedPositionAdjustmentPattern(int xStart, int yStart, ByteMatrix matrix) {
        for (int y = 0; y < 5; y++) {
            for (int x = 0; x < 5; x++) {
                matrix.set(xStart + x, yStart + y, POSITION_ADJUSTMENT_PATTERN[y][x]);
            }
        }
    }

    private static void embedPositionDetectionPattern(int xStart, int yStart, ByteMatrix matrix) {
        for (int y = 0; y < 7; y++) {
            for (int x = 0; x < 7; x++) {
                matrix.set(xStart + x, yStart + y, POSITION_DETECTION_PATTERN[y][x]);
            }
        }
    }

    private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix matrix) throws WriterException {
        int pdpWidth = POSITION_DETECTION_PATTERN[0].length;
        embedPositionDetectionPattern(0, 0, matrix);
        embedPositionDetectionPattern(matrix.getWidth() - pdpWidth, 0, matrix);
        embedPositionDetectionPattern(0, matrix.getWidth() - pdpWidth, matrix);
        embedHorizontalSeparationPattern(0, 7, matrix);
        embedHorizontalSeparationPattern(matrix.getWidth() - 8, 7, matrix);
        embedHorizontalSeparationPattern(0, matrix.getWidth() - 8, matrix);
        embedVerticalSeparationPattern(7, 0, matrix);
        embedVerticalSeparationPattern((matrix.getHeight() - 7) - 1, 0, matrix);
        embedVerticalSeparationPattern(7, matrix.getHeight() - 7, matrix);
    }

    private static void maybeEmbedPositionAdjustmentPatterns(Version version, ByteMatrix matrix) {
        if (version.getVersionNumber() >= 2) {
            int index = version.getVersionNumber() - 1;
            int[] coordinates = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[index];
            int numCoordinates = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[index].length;
            for (int i = 0; i < numCoordinates; i++) {
                for (int j = 0; j < numCoordinates; j++) {
                    int y = coordinates[i];
                    int x = coordinates[j];
                    if (!(x == -1 || y == -1 || !isEmpty(matrix.get(x, y)))) {
                        embedPositionAdjustmentPattern(x - 2, y - 2, matrix);
                    }
                }
            }
        }
    }
}
