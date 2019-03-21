package com.miui.gallery.share;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.google.zxing.WriterException;
import com.miui.gallery.R;
import com.zxing.encoding.EncodingHandler;
import java.lang.ref.WeakReference;

public class QRPreference extends Preference implements OnClickListener {
    private WeakReference<Bitmap> mQRCodeRef;
    private OnClickListener mRetryListener;
    private Status mStatus;
    private String mTextQR;

    public enum Status {
        REQUESTING,
        SUCCESS,
        FAILED
    }

    public QRPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public QRPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mStatus = Status.REQUESTING;
        setLayoutResource(R.layout.share_album_qr_code_view);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        int qrSize = getQRCodeParentSize();
        View qrContent = view.findViewById(R.id.qr_code_content);
        LayoutParams params = qrContent.getLayoutParams();
        params.height = qrSize;
        params.width = qrSize;
        qrContent.requestLayout();
        view.findViewById(R.id.retry_btn).setOnClickListener(this);
        update(view);
    }

    public void onClick(View v) {
        if (this.mRetryListener != null) {
            this.mRetryListener.onClick(v);
        }
    }

    public void setRetryListener(OnClickListener l) {
        this.mRetryListener = l;
    }

    public void setStatus(Status status) {
        this.mStatus = status;
        notifyChanged();
    }

    public String getQRText() {
        return this.mTextQR;
    }

    public void setQRText(String text) {
        if (!TextUtils.equals(this.mTextQR, text)) {
            this.mTextQR = text;
            this.mQRCodeRef = null;
        }
    }

    private void update(View root) {
        View errorView = root.findViewById(R.id.qr_code_error);
        View requestingView = root.findViewById(R.id.qr_code_requesting);
        ImageView qrView = (ImageView) root.findViewById(R.id.qr_code_image);
        if (this.mStatus == Status.REQUESTING) {
            requestingView.setVisibility(0);
            errorView.setVisibility(8);
            qrView.setVisibility(8);
        } else if (this.mStatus == Status.FAILED) {
            errorView.setVisibility(0);
            requestingView.setVisibility(8);
            qrView.setVisibility(8);
        } else if (this.mStatus == Status.SUCCESS) {
            qrView.setVisibility(0);
            errorView.setVisibility(8);
            requestingView.setVisibility(8);
            if (TextUtils.isEmpty(this.mTextQR)) {
                qrView.setImageBitmap(null);
                return;
            }
            try {
                Bitmap bm;
                long c = SystemClock.uptimeMillis();
                if (this.mQRCodeRef != null) {
                    bm = (Bitmap) this.mQRCodeRef.get();
                } else {
                    bm = null;
                }
                if (bm == null) {
                    bm = EncodingHandler.createQRCode(this.mTextQR, getContext().getResources().getDimensionPixelSize(R.dimen.album_share_qr_size));
                    if (bm != null) {
                        this.mQRCodeRef = new WeakReference(bm);
                    }
                }
                qrView.setImageBitmap(bm);
            } catch (WriterException e) {
                qrView.setImageBitmap(null);
            } catch (OutOfMemoryError e2) {
                qrView.setImageBitmap(null);
            }
        }
    }

    private int getQRCodeParentSize() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.qr_code_size);
    }
}
