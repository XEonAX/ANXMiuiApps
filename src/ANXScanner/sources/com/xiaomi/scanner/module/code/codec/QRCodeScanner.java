package com.xiaomi.scanner.module.code.codec;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.Result;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.PailitaoManager;
import com.xiaomi.scanner.util.ScannerThreadPool;
import java.lang.ref.WeakReference;
import java.util.Hashtable;
import java.util.Vector;

public class QRCodeScanner {
    private static final String HANDLER_THREAD_NAME = TAG.toString();
    private static final int MSG_PREVIEW_AVAILABLE = 2;
    private static final Tag TAG = new Tag("QRCodeScanner");
    private Context mContext;
    private Hashtable<DecodeHintType, Object> mDecodeHints = new Hashtable();
    private QRScannerHandler mHandler;
    private QRCodeScannerListener mQRScannerListener;
    private HandlerThread mThread;

    public interface QRCodeScannerListener {
        void onDecoded(MaResult maResult, Result result);

        void requestPreviewFrame();
    }

    private static class QRScannerHandler extends Handler {
        private WeakReference<QRCodeScanner> weakReference;

        QRScannerHandler(Looper looper, QRCodeScanner scanner) {
            super(looper);
            this.weakReference = new WeakReference(scanner);
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 2:
                    QRCodeScanner scanner = (QRCodeScanner) this.weakReference.get();
                    if (scanner != null) {
                        DecodeParams params = msg.obj;
                        if (params == null) {
                            scanner.requestPreviewFrame();
                            return;
                        }
                        Result result;
                        if (PailitaoManager.isReady()) {
                            result = scanner.zxingDecode(scanner.mContext, params);
                            if (result != null) {
                                if (DecodeFormat.PRODUCT_FORMATS.contains(result.getBarcodeFormat())) {
                                    scanner.onDecodeSucceed(new MaResult(MaType.PRODUCT, result.getText()), null);
                                    return;
                                } else {
                                    scanner.onDecodeSucceed(null, result);
                                    return;
                                }
                            }
                        }
                        result = scanner.zxingDecode(scanner.mContext, params);
                        if (result != null) {
                            scanner.onDecodeSucceed(null, result);
                            return;
                        }
                        scanner.requestPreviewFrame();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public QRCodeScanner(Context context) {
        this.mContext = context;
        Vector<BarcodeFormat> decodeFormats = new Vector();
        decodeFormats.addAll(DecodeFormat.ONE_D_FORMATS);
        decodeFormats.addAll(DecodeFormat.QR_CODE_FORMATS);
        decodeFormats.addAll(DecodeFormat.DATA_MATRIX_FORMATS);
        this.mDecodeHints.put(DecodeHintType.POSSIBLE_FORMATS, decodeFormats);
        this.mDecodeHints.put(DecodeHintType.CHARACTER_SET, "UTF-8");
    }

    public void setQRCodeScannerListener(QRCodeScannerListener l) {
        this.mQRScannerListener = l;
    }

    public void initScan() {
        if (this.mHandler == null) {
            this.mThread = new HandlerThread(HANDLER_THREAD_NAME);
            this.mThread.start();
            this.mHandler = new QRScannerHandler(this.mThread.getLooper(), this);
        }
    }

    public void start() {
        if (this.mHandler == null) {
            initScan();
        }
        requestPreviewFrame();
    }

    public void quitScan() {
        if (this.mThread != null) {
            this.mThread.quit();
            this.mThread = null;
        }
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
    }

    public void scan(DecodeParams params) {
        if (this.mHandler != null) {
            this.mHandler.removeMessages(2);
            this.mHandler.obtainMessage(2, params).sendToTarget();
            return;
        }
        Log.v(TAG, "scan without handler!");
    }

    private void requestPreviewFrame() {
        ScannerThreadPool.runOnUiThread(new Runnable() {
            public void run() {
                if (QRCodeScanner.this.mQRScannerListener != null) {
                    QRCodeScanner.this.mQRScannerListener.requestPreviewFrame();
                } else {
                    Log.v(QRCodeScanner.TAG, "request a frame but no listener found!");
                }
            }
        });
    }

    private void onDecodeSucceed(final MaResult maResult, final Result result) {
        ScannerThreadPool.runOnUiThread(new Runnable() {
            public void run() {
                if (QRCodeScanner.this.mQRScannerListener != null) {
                    QRCodeScanner.this.mQRScannerListener.onDecoded(maResult, result);
                } else {
                    Log.v(QRCodeScanner.TAG, "MaResult: No listener!");
                }
            }
        });
    }

    private Result zxingDecode(Context context, DecodeParams params) {
        try {
            return QRCodeDecoder.decode(context, params.getYuvImage(), this.mDecodeHints);
        } catch (Exception e) {
            Log.e(TAG, "zxingDecode error", e);
            return null;
        }
    }

    public void clearMessage() {
        if (this.mHandler != null) {
            Log.v(TAG, "clear message");
            this.mHandler.removeCallbacksAndMessages(null);
        }
    }
}
