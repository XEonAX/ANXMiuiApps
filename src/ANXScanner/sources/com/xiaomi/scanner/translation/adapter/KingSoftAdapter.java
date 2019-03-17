package com.xiaomi.scanner.translation.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.kingsoft.iciba.powerwordocrjar.BaseInfoBean;
import com.kingsoft.iciba.powerwordocrjar.CibaOcrEngine;
import com.kingsoft.iciba.powerwordocrjar.IKSCibaQueryResultListener;
import com.kingsoft.iciba.powerwordocrjar.InfoBean;
import com.kingsoft.iciba.powerwordocrjar.ShiyiBean;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.settings.Keys;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationListener;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationPair;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.translation.bean.ScanDataBean;
import com.xiaomi.scanner.translation.bean.ScanDataBean.ScanType;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.Util;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class KingSoftAdapter extends TranslationAdapter {
    private static final int KING_SOFT_DEFINITION = 2;
    private static final int KING_SOFT_DONE = 3;
    private static final int KING_SOFT_IDLE = 0;
    private static final int KING_SOFT_OCR = 1;
    private static final String LAN_CHINESE = "chinese_cn";
    private static final String LAN_ENGLISH = "english";
    private static final String LAN_FRENCH = "french";
    private static final String LAN_GERMAN = "german";
    private static final String LAN_JAPANESE = "japanese";
    private static final String LAN_KOREAN = "korean";
    private static final String LAN_SPANISH = "spanish";
    private static final int MSG_SUB_SCAN = 1;
    private static final String NARROW_SPACE_STRING = " [narrow] ";
    private static final String NARROW_STRING = "[narrow]";
    private static final Pattern REMOVE_CHARACTERS = Pattern.compile("[`~@#^&*+=|{}\\[\\]<>/~@#%……&*（）——+|{}【】]");
    private static final int SCAN_STATE_PAUSE = 18;
    private static final int SCAN_STATE_START = 17;
    private static final int SCAN_STATE_STOP = 19;
    private static final int SIZE = 65536;
    private static final Tag TAG = new Tag("KingSoftAdapter");
    private static ArrayList<TranslationPair> sSupportedLanguagesPairs = new ArrayList();
    private int[] iCharRectBottom = new int[65536];
    private int[] iCharRectLeft = new int[65536];
    private int[] iCharRectRight = new int[65536];
    private int[] iCharRectTop = new int[65536];
    private int[] iDistance = new int[65536];
    private CibaOcrEngine mCibaOcrEngine;
    private long mDebugTime;
    private IKSCibaQueryResultListener mIKSCibaQueryResultListener = new IKSCibaQueryResultListener() {
        public void iksCibaQueryResultListener(InfoBean infoBean) {
            Log.v(KingSoftAdapter.TAG, "receive iksCibaQueryResultListener callback, cost=" + (System.currentTimeMillis() - KingSoftAdapter.this.mDebugTime));
            if (KingSoftAdapter.this.mTranslationResult == null) {
                Log.v(KingSoftAdapter.TAG, "drop this result, while translation is done");
                KingSoftAdapter.this.notifyTranslationFail();
                return;
            }
            synchronized (KingSoftAdapter.this.mLock) {
                if (infoBean.status == 0) {
                    KingSoftAdapter.this.mTranslationResult.setState(3);
                } else {
                    KingSoftAdapter.this.mTranslationResult.setState(1);
                }
            }
            if (!(infoBean.baseInfoBeans == null || infoBean.baseInfoBeans.isEmpty())) {
                BaseInfoBean baseInfoBean = (BaseInfoBean) infoBean.baseInfoBeans.get(0);
                ArrayList<ShiyiBean> shiyiBeans = baseInfoBean.shiyiBeans;
                ArrayList<String> symbols = new ArrayList();
                if (TextUtils.isEmpty(baseInfoBean.chSymbol)) {
                    if (!TextUtils.isEmpty(baseInfoBean.ukSymbol)) {
                        symbols.add("英 [" + baseInfoBean.ukSymbol + "]");
                    }
                    if (!TextUtils.isEmpty(baseInfoBean.usSymbol)) {
                        symbols.add("美 [" + baseInfoBean.usSymbol + "]");
                    }
                } else {
                    symbols.add("[" + baseInfoBean.chSymbol + "]");
                }
                StringBuilder explanation = new StringBuilder();
                Iterator it = shiyiBeans.iterator();
                while (it.hasNext()) {
                    ShiyiBean s = (ShiyiBean) it.next();
                    explanation.append(s.cixing).append("   ").append(s.shiyi).append("\n");
                }
                KingSoftAdapter.this.mTranslationResult.setDefinition(explanation.toString());
                KingSoftAdapter.this.mTranslationResult.setOcrResult(infoBean.word);
                KingSoftAdapter.this.mTranslationResult.setSymbols(symbols);
            }
            KingSoftAdapter.this.appendStatus(2);
            if (KingSoftAdapter.this.mTranslationListener != null) {
                KingSoftAdapter.this.mTranslationListener.onDefinitionDone(KingSoftAdapter.this.mTranslationResult);
            }
            KingSoftAdapter.this.notifyTranslationDone();
        }
    };
    private Object mLock = new Object();
    private int mScanStatus = 17;
    private Handler mSubHandler;
    private String mTempPath;
    private HandlerThread mThread;
    private TranslationResult mTranslationResult;
    private int mTranslationStatus = 0;
    private byte[] rst = new byte[65536];

    private static class ScannerSubHandler extends Handler {
        private WeakReference<KingSoftAdapter> weakReference;

        ScannerSubHandler(Looper looper, KingSoftAdapter adapter) {
            super(looper);
            this.weakReference = new WeakReference(adapter);
        }

        public void handleMessage(Message msg) {
            Log.v(KingSoftAdapter.TAG, "handle " + msg.what);
            switch (msg.what) {
                case 1:
                    KingSoftAdapter adapter = (KingSoftAdapter) this.weakReference.get();
                    if (adapter == null) {
                        return;
                    }
                    if (adapter.getStatus() == 0) {
                        adapter.scanInternal((ScanDataBean) msg.obj);
                        return;
                    } else {
                        sendMessageDelayed(obtainMessage(1, msg.obj), 200);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    static {
        if (sSupportedLanguagesPairs.isEmpty()) {
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_ENGLISH, LAN_CHINESE));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_CHINESE, LAN_ENGLISH));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_JAPANESE, LAN_CHINESE));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_FRENCH, LAN_CHINESE));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_SPANISH, LAN_CHINESE));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_GERMAN, LAN_CHINESE));
            sSupportedLanguagesPairs.add(new TranslationPair(LAN_KOREAN, LAN_CHINESE));
        }
    }

    public KingSoftAdapter(Context context, SettingsManager settingsManager, TranslationListener translationListener) {
        super(context, settingsManager, translationListener);
        checkSupportedPair();
        setSupportedPairEntry();
    }

    public void initTranslationEngine() {
        if (this.mIsEngineInitialized || this.mContext == null) {
            Log.i(TAG, "initTranslationEngine mIsEngineInitialized=" + this.mIsEngineInitialized);
            return;
        }
        File file = this.mContext.getFilesDir();
        if (file == null) {
            Log.w(TAG, "initTranslationEngine null file");
            return;
        }
        this.mTempPath = file.getPath() + "/temp.jpg";
        try {
            this.mCibaOcrEngine = new CibaOcrEngine(this.mContext);
            this.mCibaOcrEngine.setOnIKSCibaQueryResultListener(this.mIKSCibaQueryResultListener);
            this.mIsEngineInitialized = true;
        } catch (NullPointerException e) {
            Log.e(TAG, "CibaOcrEngine", e);
        } catch (Throwable e2) {
            Log.e(TAG, "CibaOcrEngine", e2);
        }
    }

    public void initScan() {
        Log.e(TAG, "initScan");
        if (this.mThread == null || !this.mThread.isAlive()) {
            this.mScanStatus = 17;
            this.mThread = new HandlerThread("TranslationEngine");
            this.mThread.start();
            this.mSubHandler = new ScannerSubHandler(this.mThread.getLooper(), this);
        }
    }

    public void pauseScan() {
        Log.e(TAG, "pauseScan");
        if (this.mSubHandler != null) {
            this.mScanStatus = 18;
            this.mSubHandler.removeCallbacksAndMessages(null);
        }
    }

    public void stopScan() {
        Log.e(TAG, "stopScan");
        ScannerThreadPool.runOnUiThread(new Runnable() {
            public void run() {
                if (KingSoftAdapter.this.mSubHandler != null) {
                    KingSoftAdapter.this.mScanStatus = 19;
                    KingSoftAdapter.this.mSubHandler.removeCallbacksAndMessages(null);
                    KingSoftAdapter.this.mThread.quit();
                    KingSoftAdapter.this.mThread = null;
                    KingSoftAdapter.this.mSubHandler = null;
                }
            }
        });
    }

    private int getStatus() {
        int i;
        synchronized (this.mLock) {
            i = this.mTranslationStatus;
        }
        return i;
    }

    private void setStatus(int status) {
        synchronized (this.mLock) {
            this.mTranslationStatus = status;
        }
    }

    private void appendStatus(int status) {
        synchronized (this.mLock) {
            this.mTranslationStatus |= status;
        }
    }

    private void notifyTranslationDone() {
        if (getStatus() == 3) {
            Log.v(TAG, "notifyTranslationDone");
            if (this.mTranslationListener != null) {
                this.mTranslationListener.onTranslationDone();
            }
            this.mTranslationResult = null;
            setStatus(0);
        }
    }

    private void notifyTranslationFail() {
        Log.v(TAG, "notifyTranslationFail");
        if (this.mTranslationListener != null) {
            this.mTranslationListener.onTranslationDone();
        }
        this.mTranslationResult = null;
        setStatus(0);
    }

    private void setSupportedPairEntry() {
        Iterator it = sSupportedLanguagesPairs.iterator();
        while (it.hasNext()) {
            TranslationPair pair = (TranslationPair) it.next();
            pair.mSourceEntry = getLanguageEntryFromValues(pair.mSource);
            pair.mDestEntry = getLanguageEntryFromValues(pair.mDest);
        }
    }

    private void checkSupportedPair() {
        if (!sSupportedLanguagesPairs.contains(new TranslationPair(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_SOURCE_LAN, LAN_ENGLISH), this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_DEST_LAN, LAN_CHINESE))) && !sSupportedLanguagesPairs.isEmpty()) {
            TranslationPair defPair = (TranslationPair) sSupportedLanguagesPairs.get(0);
            if (sSupportedLanguagesPairs.contains(new TranslationPair(defPair.mSource, defPair.mDest))) {
                this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_SOURCE_LAN, defPair.mSource);
                this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_DEST_LAN, defPair.mDest);
                return;
            }
            this.mIsLanguageChoiceValid = false;
        }
    }

    public String getSourceEntry() {
        return getLanguageEntryFromValues(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_SOURCE_LAN, LAN_ENGLISH));
    }

    public String getDestEntry() {
        return getLanguageEntryFromValues(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_DEST_LAN, LAN_CHINESE));
    }

    public int getSourceID() {
        return getLanguageIdFromValues(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_SOURCE_LAN, LAN_ENGLISH));
    }

    public int getDestID() {
        return getLanguageIdFromValues(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_DEST_LAN, LAN_CHINESE));
    }

    public int getOcrLanguageID() {
        return getLanguageIdFromValues(this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, Keys.KEY_DOCUMENT_OCR_LANGUAGE, DeviceUtil.isInternationalBuild() ? LAN_ENGLISH : LAN_CHINESE));
    }

    public int getSelection(String srcEntry, String desEntry) {
        for (int i = 0; i < sSupportedLanguagesPairs.size(); i++) {
            TranslationPair pair = (TranslationPair) sSupportedLanguagesPairs.get(i);
            if (TextUtils.equals(srcEntry, pair.mSourceEntry) && TextUtils.equals(desEntry, pair.mDestEntry)) {
                return i;
            }
        }
        return -1;
    }

    public boolean updateSelection(String srcEntry, String desEntry) {
        int position = getSelection(srcEntry, desEntry);
        if (position < 0 || position >= sSupportedLanguagesPairs.size()) {
            return false;
        }
        TranslationPair pair = (TranslationPair) sSupportedLanguagesPairs.get(position);
        this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_SOURCE_LAN, pair.mSource);
        this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_TRANSLATION_DEST_LAN, pair.mDest);
        return true;
    }

    public List<TranslationPair> getAllTranslatePairs() {
        return sSupportedLanguagesPairs;
    }

    public void setOcrLanguage(String language) {
        this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_DOCUMENT_OCR_LANGUAGE, language);
    }

    public void scan(ScanDataBean bean) {
        if (this.mThread == null || !this.mThread.isAlive()) {
            this.mThread = new HandlerThread("TranslationEngine");
            this.mThread.start();
            this.mSubHandler = new ScannerSubHandler(this.mThread.getLooper(), this);
        }
        if (this.mSubHandler != null) {
            this.mScanStatus = 17;
            this.mSubHandler.obtainMessage(1, bean).sendToTarget();
        }
    }

    private void scanInternal(ScanDataBean bean) {
        Log.i(TAG, "scanInternal");
        if (getStatus() != 0) {
            Log.e(TAG, "last translation is going on, mTranslationStatus=" + getStatus());
        } else if (bean == null || bean.getBitmap() == null) {
            String str;
            Tag tag = TAG;
            StringBuilder append = new StringBuilder().append("scan data bean is null, bean=").append(bean);
            if (bean != null) {
                str = " bitmap== null " + (bean.getBitmap() == null);
            } else {
                str = "";
            }
            Log.e(tag, append.append(str).toString());
            notifyTranslationFail();
        } else if (this.mScanStatus == 17 || !bean.isScanPointType()) {
            this.mDebugTime = System.currentTimeMillis();
            initTranslationEngine();
            if (!this.mIsEngineInitialized) {
                Log.e(TAG, "TranslationEngine init fail, engine=" + this.mCibaOcrEngine);
                notifyTranslationFail();
            } else if (saveData(bean)) {
                setOcrRect(bean);
                ocrProc(bean.getScanType());
            } else {
                Log.e(TAG, "save bitmap failed");
                notifyTranslationFail();
            }
        } else {
            Log.e(TAG, "scan pause by user, mScanStatus = " + this.mScanStatus);
            notifyTranslationFail();
        }
    }

    protected void processHyperLinkClick(String text) {
        if (this.mCibaOcrEngine != null) {
            try {
                this.mCibaOcrEngine.showDetailMeaning(this.mContext, text, false, 1);
            } catch (Exception e) {
                Log.e(TAG, "process Hyper link error, use broswer open it", e);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(268435456);
                intent.setData(Uri.parse("http://www.iciba.com/" + text));
                this.mContext.startActivity(intent);
            }
        }
    }

    public String getVendorInfo() {
        return this.mContext.getResources().getString(R.string.vender_info_translation_kingsoft);
    }

    public synchronized void clear() {
        this.rst = null;
        this.iDistance = null;
        this.iCharRectLeft = null;
        this.iCharRectTop = null;
        this.iCharRectRight = null;
        this.iCharRectBottom = null;
        this.mTranslationListener = null;
        if (this.mCibaOcrEngine != null) {
            this.mCibaOcrEngine.setOnIKSCibaQueryResultListener(null);
        }
    }

    private void setOcrRect(ScanDataBean bean) {
        int bitmapWidth = 0;
        int bitmapHeight = 0;
        if (bean.getBitmap() != null) {
            bitmapWidth = bean.getBitmap().getWidth();
            bitmapHeight = bean.getBitmap().getHeight();
        }
        this.mOcrRect.left = 0;
        this.mOcrRect.top = 0;
        this.mOcrRect.right = bitmapWidth;
        this.mOcrRect.bottom = bitmapHeight;
    }

    public void finishCurrentTranslation() {
        synchronized (this.mLock) {
            if (this.mTranslationResult != null) {
                this.mTranslationResult.setState(4);
            }
        }
    }

    private boolean saveData(ScanDataBean bean) {
        boolean recycleBitmap = true;
        Bitmap bitmap = null;
        if (bean.getBitmap() != null) {
            if (bean.getCropRect() != null) {
                bitmap = PictureDecoder.cropBitmap(bean.getBitmap(), bean.getCropRect());
                bean.setBitmap(bitmap);
            } else {
                bitmap = bean.getBitmap();
            }
            recycleBitmap = false;
        }
        return Util.saveBitmap(bitmap, this.mTempPath, recycleBitmap);
    }

    private synchronized void ocrProc(ScanType type) {
        if (this.rst == null) {
            Log.d(TAG, "skip ocr");
        } else {
            int[] itemnum = new int[256];
            itemnum[0] = 0;
            int sourceLan = type == ScanType.OCR ? getOcrLanguageID() : getSourceID();
            int destLan = type == ScanType.OCR ? sourceLan : getDestID();
            Log.e(TAG, "ocr imagePath: " + this.mTempPath);
            Log.e(TAG, "ocr language:" + sourceLan + "->" + destLan);
            Log.e(TAG, "ocr rect: " + this.mOcrRect);
            long time = System.currentTimeMillis();
            this.mTranslationResult = new TranslationResult();
            if (type == ScanType.TRANSLATE_POINT) {
                TranslationResult translationResult = this.mTranslationResult;
                boolean z = this.iDistance[0] >= 0 && this.iDistance[0] < 80;
                translationResult.setCredibility(z);
                this.mCibaOcrEngine.instantTransPoint(this.mTempPath, sourceLan, destLan, 0, this.rst, itemnum, (this.mOcrRect.right - this.mOcrRect.left) / 2, (this.mOcrRect.bottom - this.mOcrRect.top) / 2, this.iDistance, this.iCharRectLeft, this.iCharRectTop, this.iCharRectRight, this.iCharRectBottom);
                appendStatus(1);
            } else if (type == ScanType.TRANSLATE_AREA) {
                this.mCibaOcrEngine.instantTransArea(this.mTempPath, sourceLan, destLan, 0, this.rst, itemnum, this.mOcrRect.left, this.mOcrRect.top, this.mOcrRect.right, this.mOcrRect.bottom, this.iDistance, this.iCharRectLeft, this.iCharRectTop, this.iCharRectRight, this.iCharRectBottom);
                appendStatus(1);
                this.mTranslationResult.setCredibility(true);
                try {
                    this.mTranslationResult.setOcrResult(REMOVE_CHARACTERS.matcher(new String(this.rst, 0, itemnum[0], "UCS-2").replace("\r\n", "")).replaceAll(""));
                } catch (Throwable e) {
                    Log.e(TAG, "ocr exception:" + e.getMessage(), e);
                    this.mTranslationResult.setCredibility(false);
                }
            } else {
                this.mTranslationResult.setOcrResult(this.mCibaOcrEngine.instantRecogArea(this.mTempPath, sourceLan, destLan, 0, this.rst, itemnum, this.mOcrRect.left, this.mOcrRect.top, this.mOcrRect.right, this.mOcrRect.bottom, this.iDistance, this.iCharRectLeft, this.iCharRectTop, this.iCharRectRight, this.iCharRectBottom));
                setStatus(3);
                this.mTranslationResult.setCredibility(true);
            }
            Log.d(TAG, "ocr cost=" + (System.currentTimeMillis() - time) + " credibility=" + this.iDistance[0]);
            if (this.mTranslationListener != null) {
                this.mTranslationListener.onOcrDone(this.mTranslationResult, type);
            }
            notifyTranslationDone();
        }
    }
}
