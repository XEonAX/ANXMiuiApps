package com.taobao.ma.analyze.api;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.Camera;
import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.common.usertrack.UTLogger;
import com.taobao.ma.decode.DecodeResult;
import com.taobao.ma.decode.MaDecode;
import com.taobao.ma.handler.MaHandler;
import com.taobao.ma.parser.MaParSer;
import com.taobao.ma.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class MaAnalyzeAPI {
    private static MaHandler mHandler;
    private static List<MaParSer> mParsers = new ArrayList();
    private static List<MaResult> mResults = new ArrayList();
    private static String[] whiteList = new String[]{"http://s.tb.cn", "https://s.tb.cn", "HTTP://S.TB.CN", "HTTPS://S.TB.CN"};

    public static MaResult decode(Bitmap image, MaType... maTypes) {
        ArrayList<Integer> discernTypes = new ArrayList();
        int scanMode = 0;
        for (int i = 0; i < maTypes.length; i++) {
            if (!discernTypes.contains(Integer.valueOf(maTypes[i].getDiscernType()))) {
                discernTypes.add(Integer.valueOf(maTypes[i].getDiscernType()));
            }
        }
        Iterator i$ = discernTypes.iterator();
        while (i$.hasNext()) {
            scanMode |= ((Integer) i$.next()).intValue();
        }
        DecodeResult decodeResult = MaDecode.codeDecodePictureWithQr(image, scanMode);
        if (decodeResult != null) {
            return new MaResult(MaType.QR, decodeResult.strCode);
        }
        return null;
    }

    public static MaResult decode(YuvImage yuvImage, Rect region) {
        MaType[] maTypes = new MaType[MaType.values().length];
        int i = 0;
        for (MaType type : MaType.values()) {
            maTypes[i] = type;
            i++;
        }
        return decode(yuvImage, region, maTypes);
    }

    public static MaResult decode(YuvImage yuvImage, Rect region, MaType... maTypes) {
        if (yuvImage == null) {
            return null;
        }
        if (region == null) {
            region = buildDefaultDecodeRegion(yuvImage.getWidth(), yuvImage.getHeight());
        }
        ArrayList<Integer> discernTypes = new ArrayList();
        int scanMode = 0;
        for (int i = 0; i < maTypes.length; i++) {
            if (!discernTypes.contains(Integer.valueOf(maTypes[i].getDiscernType()))) {
                discernTypes.add(Integer.valueOf(maTypes[i].getDiscernType()));
            }
        }
        Iterator i$ = discernTypes.iterator();
        while (i$.hasNext()) {
            scanMode |= ((Integer) i$.next()).intValue();
        }
        DecodeResult decodeResult = MaDecode.yuvcodeDecode(yuvImage, region, scanMode, "", whiteList);
        if (decodeResult == null || StringUtils.isEmpty(decodeResult.strCode)) {
            return null;
        }
        MaLogger.i(decodeResult.toString());
        MaWapperResult wapperResult = wapperResult(decodeResult);
        MaType maType = MaAnalyzeHelper.getMaType(wapperResult);
        wapperResult.maType = maType;
        if (!Arrays.asList(maTypes).contains(maType)) {
            return null;
        }
        if (mParsers.size() == 0) {
            MaLogger.e("Do not add parser");
            return null;
        }
        if (mParsers.size() > 0) {
            mResults.clear();
            for (MaParSer pa : mParsers) {
                mResults.add(pa.decode(wapperResult));
            }
        }
        mParsers.clear();
        mResults.removeAll(Collections.singleton(null));
        if (mResults.size() == 0) {
            return null;
        }
        MaResult result = (MaResult) mResults.get(0);
        UTLogger.userTrack(result);
        return result;
    }

    public static MaResult decode(byte[] data, Camera camera) {
        return mHandler.decode(data, camera);
    }

    public static MaResult decode(String path, int scanMode) {
        if (StringUtils.isEmpty(path)) {
            return null;
        }
        DecodeResult decodeResult = MaDecode.codeDecodePictureWithQr(path, scanMode);
        if (decodeResult == null || StringUtils.isEmpty(decodeResult.strCode)) {
            return null;
        }
        MaResult result = null;
        if (decodeResult.type == 1) {
            if (decodeResult.subType == 32768) {
                return new MaResult(MaType.GEN3, decodeResult.strCode);
            }
            result = new MaResult(MaType.QR, decodeResult.strCode);
        }
        UTLogger.userTrack(result);
        return result;
    }

    public static MaResult decode(String path) {
        return decode(path, 512);
    }

    public static void registerResultParser(MaParSer parser) {
        mParsers.add(parser);
    }

    public static void registerResultParser(List<MaParSer> parsers) {
        mParsers.addAll(parsers);
    }

    public static void removeAllResultParser() {
        mParsers.clear();
    }

    public static void registerHandler(MaHandler handler) {
        if (mHandler == null) {
            mHandler = handler;
        }
    }

    private static Rect buildDefaultDecodeRegion(int width, int height) {
        int x1 = Math.abs((width - height) / 2);
        int w1 = (Math.min(width, height) / 8) * 8;
        return new Rect(x1, 0, x1 + w1, 0 + w1);
    }

    private static MaWapperResult wapperResult(DecodeResult decodeResult) {
        MaWapperResult wapperResult = new MaWapperResult();
        wapperResult.type = decodeResult.type;
        wapperResult.subType = decodeResult.subType;
        wapperResult.strCode = decodeResult.strCode;
        wapperResult.decodeBytes = decodeResult.decodeBytes;
        wapperResult.hiddenData = decodeResult.hiddenData;
        wapperResult.x = decodeResult.x;
        wapperResult.y = decodeResult.y;
        wapperResult.width = decodeResult.width;
        wapperResult.height = decodeResult.height;
        wapperResult.xCorner = decodeResult.xCorner;
        wapperResult.yCorner = decodeResult.yCorner;
        return wapperResult;
    }
}
