package com.xiaomi.scanner.module;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.YuvImage;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;
import com.alibaba.imagesearch.Pailitao;
import com.alibaba.imagesearch.Pailitao.PailitaoInitCallback;
import com.alibaba.imagesearch.PailitaoSettings;
import com.taobao.ma.analyze.api.MaAnalyzeAPI;
import com.taobao.ma.bar.parser.MaBarParSer;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;
import com.taobao.ma.qr.parser.Ma4GParSer;
import com.taobao.ma.qr.parser.MaDMParSer;
import com.taobao.ma.qr.parser.MaGen3ParSer;
import com.taobao.ma.qr.parser.MaQrParSer;
import com.taobao.ma.qr.parser.MaTBAntiFakeParSer;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.DecodeParams;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.NetworkUtil;

public class PailitaoManager {
    private static final int STATUS_INITIALIZATION_DONE_FAILURE = 21;
    private static final int STATUS_INITIALIZATION_DONE_SUCCESS = 20;
    private static final int STATUS_INITIALIZATION_DONING = 10;
    private static final int STATUS_INITIALIZATION_NENER = 0;
    private static final Tag TAG = new Tag("PailitaoManager");
    private static Integer sStatus = Integer.valueOf(0);

    private PailitaoManager() {
    }

    public static final boolean isReady() {
        return sStatus.intValue() == 20;
    }

    public static final MaResult decode(DecodeParams params) {
        try {
            return pailitaoDecode(params.getYuvImage());
        } catch (Exception e) {
            Log.e(TAG, "Pailitao.decode", e);
            return null;
        }
    }

    public static MaResult pailitaoDecode(YuvImage yuvimage) {
        long var2 = System.currentTimeMillis();
        MaAnalyzeAPI.removeAllResultParser();
        MaAnalyzeAPI.registerResultParser(new MaBarParSer());
        MaAnalyzeAPI.registerResultParser(new MaQrParSer());
        MaAnalyzeAPI.registerResultParser(new MaTBAntiFakeParSer());
        MaAnalyzeAPI.registerResultParser(new Ma4GParSer());
        MaAnalyzeAPI.registerResultParser(new MaDMParSer());
        MaAnalyzeAPI.registerResultParser(new MaGen3ParSer());
        return MaAnalyzeAPI.decode(yuvimage, null, MaType.QR, MaType.PRODUCT);
    }

    public static void searchImage(Context context, String filepath) {
        Pailitao.searchImage(context, filepath);
    }

    public static boolean showMaPage(Activity activity, MaResult result) {
        if (result.getType() == MaType.PRODUCT && NetworkUtil.isNetworkConnected()) {
            return Pailitao.showMaPage(activity, result, new AlibcTradeCallback() {
                public void onTradeSuccess(AlibcTradeResult tradeResult) {
                    Log.w(PailitaoManager.TAG, "show page success");
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_GOTO_TAOBAO_SUCCESS_COUNT);
                }

                public void onFailure(int i, String s) {
                    Log.w(PailitaoManager.TAG, "show page fail");
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_GOTO_TAOBAO_FAIL_COUNT);
                }
            });
        }
        return false;
    }

    public static void initialize(Application application) {
        if (!AppUtil.isUserAgreeToRun() || DeviceUtil.isInternationalBuild()) {
            Log.i(TAG, "no need to init sdk");
        } else if (sStatus.intValue() == 0) {
            PailitaoSettings settings = new PailitaoSettings();
            settings.openType = 1;
            settings.vendorId = AppUtil.XIAOMI;
            settings.brand = AppUtil.XIAOMI;
            settings.setTaokePid(AppUtil.TAOKE_ID);
            sStatus = Integer.valueOf(10);
            Pailitao.initialize(application, settings, new PailitaoInitCallback() {
                public void onSuccess() {
                    Log.i(PailitaoManager.TAG, "Pailitao.initialize onSuccess");
                    PailitaoManager.sStatus = Integer.valueOf(20);
                }

                public void onFailure(int code, String content) {
                    Log.i(PailitaoManager.TAG, "Pailitao.initialize onFailure code =" + code + ", content=" + content);
                    PailitaoManager.sStatus = Integer.valueOf(21);
                }
            });
        }
    }
}
