package com.google.zxing.datamatrix.decoder;

import com.alibaba.fastjson.asm.Opcodes;
import com.google.zxing.FormatException;

public final class Version {
    private static final Version[] VERSIONS = buildVersions();
    private final int dataRegionSizeColumns;
    private final int dataRegionSizeRows;
    private final ECBlocks ecBlocks;
    private final int symbolSizeColumns;
    private final int symbolSizeRows;
    private final int totalCodewords;
    private final int versionNumber;

    static final class ECB {
        private final int count;
        private final int dataCodewords;

        private ECB(int count, int dataCodewords) {
            this.count = count;
            this.dataCodewords = dataCodewords;
        }

        /* synthetic */ ECB(int i, int i2, ECB ecb) {
            this(i, i2);
        }

        int getCount() {
            return this.count;
        }

        int getDataCodewords() {
            return this.dataCodewords;
        }
    }

    static final class ECBlocks {
        private final ECB[] ecBlocks;
        private final int ecCodewords;

        private ECBlocks(int ecCodewords, ECB ecBlocks) {
            this.ecCodewords = ecCodewords;
            this.ecBlocks = new ECB[]{ecBlocks};
        }

        private ECBlocks(int ecCodewords, ECB ecBlocks1, ECB ecBlocks2) {
            this.ecCodewords = ecCodewords;
            this.ecBlocks = new ECB[]{ecBlocks1, ecBlocks2};
        }

        /* synthetic */ ECBlocks(int i, ECB ecb, ECB ecb2, ECBlocks eCBlocks) {
            this(i, ecb, ecb2);
        }

        int getECCodewords() {
            return this.ecCodewords;
        }

        ECB[] getECBlocks() {
            return this.ecBlocks;
        }
    }

    private Version(int versionNumber, int symbolSizeRows, int symbolSizeColumns, int dataRegionSizeRows, int dataRegionSizeColumns, ECBlocks ecBlocks) {
        this.versionNumber = versionNumber;
        this.symbolSizeRows = symbolSizeRows;
        this.symbolSizeColumns = symbolSizeColumns;
        this.dataRegionSizeRows = dataRegionSizeRows;
        this.dataRegionSizeColumns = dataRegionSizeColumns;
        this.ecBlocks = ecBlocks;
        int total = 0;
        int ecCodewords = ecBlocks.getECCodewords();
        for (ECB ecBlock : ecBlocks.getECBlocks()) {
            total += ecBlock.getCount() * (ecBlock.getDataCodewords() + ecCodewords);
        }
        this.totalCodewords = total;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    public int getSymbolSizeRows() {
        return this.symbolSizeRows;
    }

    public int getSymbolSizeColumns() {
        return this.symbolSizeColumns;
    }

    public int getDataRegionSizeRows() {
        return this.dataRegionSizeRows;
    }

    public int getDataRegionSizeColumns() {
        return this.dataRegionSizeColumns;
    }

    public int getTotalCodewords() {
        return this.totalCodewords;
    }

    ECBlocks getECBlocks() {
        return this.ecBlocks;
    }

    public static Version getVersionForDimensions(int numRows, int numColumns) throws FormatException {
        if ((numRows & 1) == 0 && (numColumns & 1) == 0) {
            for (Version version : VERSIONS) {
                if (version.symbolSizeRows == numRows && version.symbolSizeColumns == numColumns) {
                    return version;
                }
            }
            throw FormatException.getFormatInstance();
        }
        throw FormatException.getFormatInstance();
    }

    public String toString() {
        return String.valueOf(this.versionNumber);
    }

    private static Version[] buildVersions() {
        return new Version[]{new Version(1, 10, 10, 8, 8, new ECBlocks(5, new ECB(1, 3, null), null)), new Version(2, 12, 12, 10, 10, new ECBlocks(7, new ECB(1, 5, null), null)), new Version(3, 14, 14, 12, 12, new ECBlocks(10, new ECB(1, 8, null), null)), new Version(4, 16, 16, 14, 14, new ECBlocks(12, new ECB(1, 12, null), null)), new Version(5, 18, 18, 16, 16, new ECBlocks(14, new ECB(1, 18, null), null)), new Version(6, 20, 20, 18, 18, new ECBlocks(18, new ECB(1, 22, null), null)), new Version(7, 22, 22, 20, 20, new ECBlocks(20, new ECB(1, 30, null), null)), new Version(8, 24, 24, 22, 22, new ECBlocks(24, new ECB(1, 36, null), null)), new Version(9, 26, 26, 24, 24, new ECBlocks(28, new ECB(1, 44, null), null)), new Version(10, 32, 32, 14, 14, new ECBlocks(36, new ECB(1, 62, null), null)), new Version(11, 36, 36, 16, 16, new ECBlocks(42, new ECB(1, 86, null), null)), new Version(12, 40, 40, 18, 18, new ECBlocks(48, new ECB(1, 114, null), null)), new Version(13, 44, 44, 20, 20, new ECBlocks(56, new ECB(1, 144, null), null)), new Version(14, 48, 48, 22, 22, new ECBlocks(68, new ECB(1, 174, null), null)), new Version(15, 52, 52, 24, 24, new ECBlocks(42, new ECB(2, 102, null), null)), new Version(16, 64, 64, 14, 14, new ECBlocks(56, new ECB(2, 140, null), null)), new Version(17, 72, 72, 16, 16, new ECBlocks(36, new ECB(4, 92, null), null)), new Version(18, 80, 80, 18, 18, new ECBlocks(48, new ECB(4, 114, null), null)), new Version(19, 88, 88, 20, 20, new ECBlocks(56, new ECB(4, 144, null), null)), new Version(20, 96, 96, 22, 22, new ECBlocks(68, new ECB(4, 174, null), null)), new Version(21, 104, 104, 24, 24, new ECBlocks(56, new ECB(6, 136, null), null)), new Version(22, 120, 120, 18, 18, new ECBlocks(68, new ECB(6, 175, null), null)), new Version(23, 132, 132, 20, 20, new ECBlocks(62, new ECB(8, Opcodes.IF_ICMPGT, null), null)), new Version(24, 144, 144, 22, 22, new ECBlocks(62, new ECB(8, 156, null), new ECB(2, 155, null), null)), new Version(25, 8, 18, 6, 16, new ECBlocks(7, new ECB(1, 5, null), null)), new Version(26, 8, 32, 6, 14, new ECBlocks(11, new ECB(1, 10, null), null)), new Version(27, 12, 26, 10, 24, new ECBlocks(14, new ECB(1, 16, null), null)), new Version(28, 12, 36, 10, 16, new ECBlocks(18, new ECB(1, 22, null), null)), new Version(29, 16, 36, 14, 16, new ECBlocks(24, new ECB(1, 32, null), null)), new Version(30, 16, 48, 14, 22, new ECBlocks(28, new ECB(1, 49, null), null))};
    }
}
