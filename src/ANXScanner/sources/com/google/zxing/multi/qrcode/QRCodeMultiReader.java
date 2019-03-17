package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class QRCodeMultiReader extends QRCodeReader implements MultipleBarcodeReader {
    private static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];

    private static final class SAComparator implements Comparator<Result>, Serializable {
        private SAComparator() {
        }

        /* synthetic */ SAComparator(SAComparator sAComparator) {
            this();
        }

        public int compare(Result a, Result b) {
            int aNumber = ((Integer) a.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
            int bNumber = ((Integer) b.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
            if (aNumber < bNumber) {
                return -1;
            }
            if (aNumber > bNumber) {
                return 1;
            }
            return 0;
        }
    }

    public Result[] decodeMultiple(BinaryBitmap image) throws NotFoundException {
        return decodeMultiple(image, null);
    }

    public Result[] decodeMultiple(BinaryBitmap image, Map<DecodeHintType, ?> hints) throws NotFoundException {
        List<Result> results = new ArrayList();
        for (DetectorResult detectorResult : new MultiDetector(image.getBlackMatrix()).detectMulti(hints)) {
            try {
                DecoderResult decoderResult = getDecoder().decode(detectorResult.getBits(), (Map) hints);
                ResultPoint[] points = detectorResult.getPoints();
                if (decoderResult.getOther() instanceof QRCodeDecoderMetaData) {
                    ((QRCodeDecoderMetaData) decoderResult.getOther()).applyMirroredCorrection(points);
                }
                Result result = new Result(decoderResult.getText(), decoderResult.getRawBytes(), points, BarcodeFormat.QR_CODE);
                List<byte[]> byteSegments = decoderResult.getByteSegments();
                if (byteSegments != null) {
                    result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
                }
                String ecLevel = decoderResult.getECLevel();
                if (ecLevel != null) {
                    result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, ecLevel);
                }
                if (decoderResult.hasStructuredAppend()) {
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderResult.getStructuredAppendSequenceNumber()));
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderResult.getStructuredAppendParity()));
                }
                results.add(result);
            } catch (ReaderException e) {
            }
        }
        if (results.isEmpty()) {
            return EMPTY_RESULT_ARRAY;
        }
        results = processStructuredAppend(results);
        return (Result[]) results.toArray(new Result[results.size()]);
    }

    private static List<Result> processStructuredAppend(List<Result> results) {
        boolean hasSA = false;
        for (Result result : results) {
            if (result.getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                hasSA = true;
                break;
            }
        }
        if (!hasSA) {
            return results;
        }
        Iterator it;
        List<Result> newResults = new ArrayList();
        List<Result> saResults = new ArrayList();
        for (Result result2 : results) {
            newResults.add(result2);
            if (result2.getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                saResults.add(result2);
            }
        }
        Collections.sort(saResults, new SAComparator());
        StringBuilder concatedText = new StringBuilder();
        int rawBytesLen = 0;
        int byteSegmentLength = 0;
        for (Result saResult : saResults) {
            concatedText.append(saResult.getText());
            rawBytesLen += saResult.getRawBytes().length;
            if (saResult.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                for (byte[] segment : (Iterable) saResult.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)) {
                    byteSegmentLength += segment.length;
                }
            }
        }
        byte[] newRawBytes = new byte[rawBytesLen];
        byte[] newByteSegment = new byte[byteSegmentLength];
        int newRawBytesIndex = 0;
        int byteSegmentIndex = 0;
        for (Result saResult2 : saResults) {
            System.arraycopy(saResult2.getRawBytes(), 0, newRawBytes, newRawBytesIndex, saResult2.getRawBytes().length);
            newRawBytesIndex += saResult2.getRawBytes().length;
            if (saResult2.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                it = ((Iterable) saResult2.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)).iterator();
                while (it.hasNext()) {
                    Object segment2 = (byte[]) it.next();
                    System.arraycopy(segment2, 0, newByteSegment, byteSegmentIndex, segment2.length);
                    byteSegmentIndex += segment2.length;
                }
            }
        }
        Result newResult = new Result(concatedText.toString(), newRawBytes, NO_POINTS, BarcodeFormat.QR_CODE);
        if (byteSegmentLength > 0) {
            Collection<byte[]> byteSegmentList = new ArrayList();
            byteSegmentList.add(newByteSegment);
            newResult.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegmentList);
        }
        newResults.add(newResult);
        return newResults;
    }
}
