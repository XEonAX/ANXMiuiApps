package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final int[] INDEXES_START_PATTERN;
    private static final int[] INDEXES_STOP_PATTERN = new int[]{6, 2, 7, 3};
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] START_PATTERN = new int[]{8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = new int[]{7, 1, 1, 3, 1, 1, 1, 2, 1};

    static {
        int[] iArr = new int[4];
        iArr[1] = 4;
        iArr[2] = 1;
        iArr[3] = 5;
        INDEXES_START_PATTERN = iArr;
    }

    private Detector() {
    }

    public static PDF417DetectorResult detect(BinaryBitmap image, Map<DecodeHintType, ?> map, boolean multiple) throws NotFoundException {
        BitMatrix bitMatrix = image.getBlackMatrix();
        List<ResultPoint[]> barcodeCoordinates = detect(multiple, bitMatrix);
        if (barcodeCoordinates.isEmpty()) {
            bitMatrix = bitMatrix.clone();
            bitMatrix.rotate180();
            barcodeCoordinates = detect(multiple, bitMatrix);
        }
        return new PDF417DetectorResult(bitMatrix, barcodeCoordinates);
    }

    private static List<ResultPoint[]> detect(boolean multiple, BitMatrix bitMatrix) {
        List<ResultPoint[]> barcodeCoordinates = new ArrayList();
        int row = 0;
        int column = 0;
        boolean foundBarcodeInRow = false;
        while (row < bitMatrix.getHeight()) {
            ResultPoint[] vertices = findVertices(bitMatrix, row, column);
            if (vertices[0] == null && vertices[3] == null) {
                if (!foundBarcodeInRow) {
                    break;
                }
                foundBarcodeInRow = false;
                column = 0;
                for (ResultPoint[] barcodeCoordinate : barcodeCoordinates) {
                    if (barcodeCoordinate[1] != null) {
                        row = (int) Math.max((float) row, barcodeCoordinate[1].getY());
                    }
                    if (barcodeCoordinate[3] != null) {
                        row = Math.max(row, (int) barcodeCoordinate[3].getY());
                    }
                }
                row += 5;
            } else {
                foundBarcodeInRow = true;
                barcodeCoordinates.add(vertices);
                if (!multiple) {
                    break;
                } else if (vertices[2] != null) {
                    column = (int) vertices[2].getX();
                    row = (int) vertices[2].getY();
                } else {
                    column = (int) vertices[4].getX();
                    row = (int) vertices[4].getY();
                }
            }
        }
        return barcodeCoordinates;
    }

    private static ResultPoint[] findVertices(BitMatrix matrix, int startRow, int startColumn) {
        int height = matrix.getHeight();
        int width = matrix.getWidth();
        ResultPoint[] result = new ResultPoint[8];
        copyToResult(result, findRowsWithPattern(matrix, height, width, startRow, startColumn, START_PATTERN), INDEXES_START_PATTERN);
        if (result[4] != null) {
            startColumn = (int) result[4].getX();
            startRow = (int) result[4].getY();
        }
        copyToResult(result, findRowsWithPattern(matrix, height, width, startRow, startColumn, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return result;
    }

    private static void copyToResult(ResultPoint[] result, ResultPoint[] tmpResult, int[] destinationIndexes) {
        for (int i = 0; i < destinationIndexes.length; i++) {
            result[destinationIndexes[i]] = tmpResult[i];
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:5:0x0011  */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static ResultPoint[] findRowsWithPattern(BitMatrix matrix, int height, int width, int startRow, int startColumn, int[] pattern) {
        int stopRow;
        ResultPoint[] result = new ResultPoint[4];
        boolean found = false;
        int[] counters = new int[pattern.length];
        while (startRow < height) {
            int[] loc = findGuardPattern(matrix, startColumn, startRow, width, false, pattern, counters);
            if (loc != null) {
                int[] previousRowLoc;
                while (startRow > 0) {
                    startRow--;
                    previousRowLoc = findGuardPattern(matrix, startColumn, startRow, width, false, pattern, counters);
                    if (previousRowLoc == null) {
                        startRow++;
                        break;
                    }
                    loc = previousRowLoc;
                }
                result[0] = new ResultPoint((float) loc[0], (float) startRow);
                result[1] = new ResultPoint((float) loc[1], (float) startRow);
                found = true;
                stopRow = startRow + 1;
                if (found) {
                    int skippedRowCount = 0;
                    previousRowLoc = new int[]{(int) result[0].getX(), (int) result[1].getX()};
                    while (stopRow < height) {
                        loc = findGuardPattern(matrix, previousRowLoc[0], stopRow, width, false, pattern, counters);
                        if (loc == null || Math.abs(previousRowLoc[0] - loc[0]) >= 5 || Math.abs(previousRowLoc[1] - loc[1]) >= 5) {
                            if (skippedRowCount > 25) {
                                break;
                            }
                            skippedRowCount++;
                        } else {
                            previousRowLoc = loc;
                            skippedRowCount = 0;
                        }
                        stopRow++;
                    }
                    stopRow -= skippedRowCount + 1;
                    result[2] = new ResultPoint((float) previousRowLoc[0], (float) stopRow);
                    result[3] = new ResultPoint((float) previousRowLoc[1], (float) stopRow);
                }
                if (stopRow - startRow < 10) {
                    for (int i = 0; i < result.length; i++) {
                        result[i] = null;
                    }
                }
                return result;
            }
            startRow += 5;
        }
        stopRow = startRow + 1;
        if (found) {
        }
        if (stopRow - startRow < 10) {
        }
        return result;
    }

    private static int[] findGuardPattern(BitMatrix matrix, int column, int row, int width, boolean whiteFirst, int[] pattern, int[] counters) {
        int x;
        Arrays.fill(counters, 0, counters.length, 0);
        int patternLength = pattern.length;
        boolean isWhite = whiteFirst;
        int patternStart = column;
        int pixelDrift = 0;
        while (matrix.get(patternStart, row) && patternStart > 0) {
            int pixelDrift2 = pixelDrift + 1;
            if (pixelDrift >= 3) {
                pixelDrift = pixelDrift2;
                break;
            }
            patternStart--;
            pixelDrift = pixelDrift2;
        }
        int counterPosition = 0;
        for (x = patternStart; x < width; x++) {
            if ((matrix.get(x, row) ^ isWhite) != 0) {
                counters[counterPosition] = counters[counterPosition] + 1;
            } else {
                if (counterPosition != patternLength - 1) {
                    counterPosition++;
                } else if (patternMatchVariance(counters, pattern, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                    return new int[]{patternStart, x};
                } else {
                    patternStart += counters[0] + counters[1];
                    System.arraycopy(counters, 2, counters, 0, patternLength - 2);
                    counters[patternLength - 2] = 0;
                    counters[patternLength - 1] = 0;
                    counterPosition--;
                }
                counters[counterPosition] = 1;
                isWhite = !isWhite;
            }
        }
        if (counterPosition != patternLength - 1 || patternMatchVariance(counters, pattern, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{patternStart, x - 1};
    }

    private static float patternMatchVariance(int[] counters, int[] pattern, float maxIndividualVariance) {
        int numCounters = counters.length;
        int total = 0;
        int patternLength = 0;
        for (int i = 0; i < numCounters; i++) {
            total += counters[i];
            patternLength += pattern[i];
        }
        if (total < patternLength) {
            return Float.POSITIVE_INFINITY;
        }
        float unitBarWidth = ((float) total) / ((float) patternLength);
        maxIndividualVariance *= unitBarWidth;
        float totalVariance = 0.0f;
        for (int x = 0; x < numCounters; x++) {
            int counter = counters[x];
            float scaledPattern = ((float) pattern[x]) * unitBarWidth;
            float variance = ((float) counter) > scaledPattern ? ((float) counter) - scaledPattern : scaledPattern - ((float) counter);
            if (variance > maxIndividualVariance) {
                return Float.POSITIVE_INFINITY;
            }
            totalVariance += variance;
        }
        return totalVariance / ((float) total);
    }
}
