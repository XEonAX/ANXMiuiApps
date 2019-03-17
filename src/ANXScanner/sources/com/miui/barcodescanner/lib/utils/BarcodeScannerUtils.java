package com.miui.barcodescanner.lib.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.IBinder;
import android.text.TextUtils;
import com.miui.barcodescanner.lib.utils.IRemoteService.Stub;

public class BarcodeScannerUtils implements ServiceConnection {
    private static final String SERVICE_ACTION = "com.xiaomi.scanner.app.RemoteService";
    private Context mContext;
    private int mImageSize;
    private BarcodeListener mListener;
    private IRemoteService mService;
    private String mText;
    private Uri mUri;

    public interface BarcodeListener {
        void onFail();
    }

    public interface CreateQRImageListener extends BarcodeListener {
        void onSuccess(Bitmap bitmap);
    }

    public interface RecogniseQRImageListener extends BarcodeListener {
        void onSuccess(String str);
    }

    public void createQRImage(String text, int qrImageSize, Context context, CreateQRImageListener listener) {
        this.mListener = listener;
        this.mText = text;
        if (!TextUtils.isEmpty(this.mText)) {
            this.mImageSize = qrImageSize;
            this.mContext = context;
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.scanner", SERVICE_ACTION);
            context.bindService(intent, this, 1);
        } else if (listener != null) {
            listener.onFail();
        }
    }

    public void recogniseQRImage(Uri uri, Context context, RecogniseQRImageListener listener) {
        this.mUri = uri;
        this.mContext = context;
        this.mListener = listener;
        if (uri != null) {
            Intent intent = new Intent();
            intent.setAction(SERVICE_ACTION);
            context.bindService(intent, this, 1);
        } else if (listener != null) {
            listener.onFail();
        }
    }

    public void onServiceConnected(ComponentName name, IBinder service) {
        if (this.mListener != null) {
            this.mService = Stub.asInterface(service);
            try {
                if (this.mListener instanceof CreateQRImageListener) {
                    Bitmap bitmap = this.mService.createQRImage(this.mText, this.mImageSize);
                    if (bitmap != null) {
                        ((CreateQRImageListener) this.mListener).onSuccess(bitmap);
                    } else {
                        this.mListener.onFail();
                    }
                } else {
                    String result = this.mService.recogniseQRImage(this.mUri);
                    if (TextUtils.isEmpty(result)) {
                        this.mListener.onFail();
                    } else {
                        ((RecogniseQRImageListener) this.mListener).onSuccess(result);
                    }
                }
            } catch (Exception e) {
            }
            release();
        }
    }

    public void onServiceDisconnected(ComponentName name) {
        release();
    }

    private void unBindSercice() {
        if (this.mContext != null) {
            this.mContext.unbindService(this);
        }
    }

    public void release() {
        try {
            unBindSercice();
            this.mContext = null;
            this.mListener = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
