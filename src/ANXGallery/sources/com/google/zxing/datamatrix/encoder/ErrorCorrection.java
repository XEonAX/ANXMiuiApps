package com.google.zxing.datamatrix.encoder;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.nexeditorsdk.nexClip;
import miui.hybrid.Response;

public final class ErrorCorrection {
    private static final int[] ALOG = new int[255];
    private static final int[][] FACTORS = new int[][]{new int[]{228, 48, 15, BaiduSceneResult.WESTERN_ARCHITECTURE, 62}, new int[]{23, 68, BaiduSceneResult.TAG_COUNT, BaiduSceneResult.SCREEN_TEXT, 240, 92, 254}, new int[]{28, 24, 185, 166, 223, 248, BaiduSceneResult.CAR, 255, BaiduSceneResult.CASTLE, 61}, new int[]{175, BaiduSceneResult.COSMETICS, Response.CODE_ACTION_ERROR, 12, 194, 168, 39, 245, 60, 97, BaiduSceneResult.MOTORCYCLE}, new int[]{41, 153, 158, 91, 61, 42, BaiduSceneResult.DIGITAL_PRODUCT, 213, 97, 178, 100, 242}, new int[]{156, 97, 192, 252, 95, 9, 157, BaiduSceneResult.BICYCLE, BaiduSceneResult.COSMETICS, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, 213, BaiduSceneResult.CHURCH, BaiduSceneResult.ACCOUNT_BOOK, 94, 254, 225, 48, 90, 188}, new int[]{15, 195, nexClip.AVC_Profile_High444, 9, 233, 71, 168, 2, 188, 160, 153, 145, 253, 79, 108, 82, 27, 174, 186, 172}, new int[]{52, 190, 88, Response.CODE_ACTION_ERROR, BaiduSceneResult.CHURCH, 39, 176, 21, 155, 197, 251, 223, 155, 21, 5, 172, 254, BaiduSceneResult.PIER, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, 174, 37, 151, 170, 53, 75, 34, 249, BaiduSceneResult.STATION, 17, BaiduSceneResult.COSMETICS, BaiduSceneResult.CASTLE, 213, BaiduSceneResult.GAME, BaiduSceneResult.APPAREL, BaiduSceneResult.MOTORCYCLE, 151, 233, 168, 93, 255}, new int[]{245, BaiduSceneResult.BANK_CARD, 242, 218, BaiduSceneResult.VISA, 250, 162, 181, 102, BaiduSceneResult.MOTORCYCLE, 84, 179, 220, 251, 80, 182, 229, 18, 2, 4, 68, 33, 101, BaiduSceneResult.JEWELRY, 95, BaiduSceneResult.BICYCLE, BaiduSceneResult.BUILDING_OTHER, 44, 175, 184, 59, 25, 225, 98, 81, BaiduSceneResult.STREET_VIEW}, new int[]{77, 193, BaiduSceneResult.JEWELRY, 31, 19, 38, 22, 153, 247, 105, 122, 2, 245, BaiduSceneResult.EXPRESS_ORDER, 242, 8, 175, 95, 100, 9, 167, 105, 214, BaiduSceneResult.WESTERN_ARCHITECTURE, 57, BaiduSceneResult.STATION, 21, 1, 253, 57, 54, 101, 248, Response.CODE_SIGNATURE_ERROR, 69, 50, 150, 177, 226, 5, 9, 5}, new int[]{245, BaiduSceneResult.VARIOUS_TICKETS, 172, 223, 96, 32, BaiduSceneResult.FERRY, 22, 238, BaiduSceneResult.EXPRESS_ORDER, 238, 231, Response.CODE_ACTION_ERROR, 188, 237, 87, 191, 106, 16, 147, BaiduSceneResult.SUBWAY, 23, 37, 90, 170, Response.CODE_ACTION_ERROR, BaiduSceneResult.INVOICE, 88, BaiduSceneResult.MOTORCYCLE, 100, 66, BaiduSceneResult.COSMETICS, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, 213, 92, 253, 225, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 175, 170, 230, 192, 215, 235, 150, 159, 36, 223, 38, Response.CODE_GENERIC_ERROR, BaiduSceneResult.VARIOUS_TICKETS, 54, 228, 146, 218, 234, BaiduSceneResult.FERRY, Response.CODE_PERMISSION_ERROR, 29, 232, BaiduSceneResult.TAG_COUNT, 238, 22, 150, Response.CODE_CONFIG_ERROR, BaiduSceneResult.FERRY, 62, 207, 164, 13, BaiduSceneResult.JEWELRY, 245, BaiduSceneResult.BANK_CARD, 67, 247, 28, 155, 43, Response.CODE_PERMISSION_ERROR, 107, 233, 53, BaiduSceneResult.BLACK_WHITE, 46}, new int[]{242, 93, 169, 50, BaiduSceneResult.TAG_COUNT, 210, 39, BaiduSceneResult.SUBWAY, Response.CODE_SIGNATURE_ERROR, 188, Response.CODE_CONFIG_ERROR, 189, BaiduSceneResult.BLACK_WHITE, 108, 196, 37, 185, BaiduSceneResult.STREET_VIEW, BaiduSceneResult.SCREEN_TEXT, 230, 245, 63, 197, 190, 250, 106, 185, 221, 175, 64, BaiduSceneResult.BRIDGE, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, BaiduSceneResult.VISA, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, BaiduSceneResult.PIER, 86, 47, 11, Response.CODE_FEATURE_ERROR}, new int[]{220, 228, 173, 89, 251, 149, 159, 56, 89, 33, 147, nexClip.AVC_Profile_High444, 154, 36, 73, BaiduSceneResult.BANK_CARD, 213, BaiduSceneResult.APPAREL, 248, nexClip.kClip_Rotate_180, 234, 197, 158, 177, 68, 122, 93, 213, 15, 160, 227, 236, 66, BaiduSceneResult.FASHION_OTHER, 153, 185, Response.CODE_SIGNATURE_ERROR, 167, 179, 25, 220, 232, 96, 210, 231, BaiduSceneResult.APPAREL, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, 189, 64, 54, 108, 153, BaiduSceneResult.VARIOUS_TICKETS, 63, 96, 103, 82, 186}};
    private static final int[] FACTOR_SETS = new int[]{5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[] LOG = new int[256];

    static {
        int p = 1;
        for (int i = 0; i < 255; i++) {
            ALOG[i] = p;
            LOG[p] = i;
            p *= 2;
            if (p >= 256) {
                p ^= 301;
            }
        }
    }

    public static String encodeECC200(String codewords, SymbolInfo symbolInfo) {
        if (codewords.length() != symbolInfo.getDataCapacity()) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        StringBuilder sb = new StringBuilder(symbolInfo.getDataCapacity() + symbolInfo.getErrorCodewords());
        sb.append(codewords);
        int blockCount = symbolInfo.getInterleavedBlockCount();
        if (blockCount == 1) {
            sb.append(createECCBlock(codewords, symbolInfo.getErrorCodewords()));
        } else {
            sb.setLength(sb.capacity());
            int[] dataSizes = new int[blockCount];
            int[] errorSizes = new int[blockCount];
            int[] startPos = new int[blockCount];
            for (int i = 0; i < blockCount; i++) {
                dataSizes[i] = symbolInfo.getDataLengthForInterleavedBlock(i + 1);
                errorSizes[i] = symbolInfo.getErrorLengthForInterleavedBlock(i + 1);
                startPos[i] = 0;
                if (i > 0) {
                    startPos[i] = startPos[i - 1] + dataSizes[i];
                }
            }
            for (int block = 0; block < blockCount; block++) {
                StringBuilder temp = new StringBuilder(dataSizes[block]);
                for (int d = block; d < symbolInfo.getDataCapacity(); d += blockCount) {
                    temp.append(codewords.charAt(d));
                }
                String ecc = createECCBlock(temp.toString(), errorSizes[block]);
                int pos = 0;
                int e = block;
                while (e < errorSizes[block] * blockCount) {
                    int pos2 = pos + 1;
                    sb.setCharAt(symbolInfo.getDataCapacity() + e, ecc.charAt(pos));
                    e += blockCount;
                    pos = pos2;
                }
            }
        }
        return sb.toString();
    }

    private static String createECCBlock(CharSequence codewords, int numECWords) {
        return createECCBlock(codewords, 0, codewords.length(), numECWords);
    }

    private static String createECCBlock(CharSequence codewords, int start, int len, int numECWords) {
        int i;
        int table = -1;
        for (i = 0; i < FACTOR_SETS.length; i++) {
            if (FACTOR_SETS[i] == numECWords) {
                table = i;
                break;
            }
        }
        if (table < 0) {
            throw new IllegalArgumentException("Illegal number of error correction codewords specified: " + numECWords);
        }
        int[] poly = FACTORS[table];
        char[] ecc = new char[numECWords];
        for (i = 0; i < numECWords; i++) {
            ecc[i] = 0;
        }
        for (i = start; i < start + len; i++) {
            int m = ecc[numECWords - 1] ^ codewords.charAt(i);
            int k = numECWords - 1;
            while (k > 0) {
                if (m == 0 || poly[k] == 0) {
                    ecc[k] = ecc[k - 1];
                } else {
                    ecc[k] = (char) (ecc[k - 1] ^ ALOG[(LOG[m] + LOG[poly[k]]) % 255]);
                }
                k--;
            }
            if (m == 0 || poly[0] == 0) {
                ecc[0] = 0;
            } else {
                ecc[0] = (char) ALOG[(LOG[m] + LOG[poly[0]]) % 255];
            }
        }
        char[] eccReversed = new char[numECWords];
        for (i = 0; i < numECWords; i++) {
            eccReversed[i] = ecc[(numECWords - i) - 1];
        }
        return String.valueOf(eccReversed);
    }
}
