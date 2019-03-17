package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.util.Util;

public class ProcessDocumentLayout extends RelativeLayout implements OnClickListener {
    private TextView mGrayScaleView;
    private MessageDispatcher mMessageDispatcher;
    private View mOcrView;
    private Bitmap mRectifiedImage;
    private ImageView mRectifiedImg;
    private View mRectifyView;
    private View mRetakeView;
    private View mSaveView;
    private boolean mToGrayScale = true;

    public ProcessDocumentLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        int i;
        super.onFinishInflate();
        this.mRetakeView = findViewById(R.id.document_retake_picture);
        this.mSaveView = findViewById(R.id.document_save);
        this.mRectifiedImg = (ImageView) findViewById(R.id.document_rectified_image);
        this.mOcrView = findViewById(R.id.document_ocr);
        this.mRectifyView = findViewById(R.id.document_rectify);
        this.mGrayScaleView = (TextView) findViewById(R.id.document_gray_pic);
        this.mRetakeView.setOnClickListener(this);
        this.mSaveView.setOnClickListener(this);
        this.mOcrView.setOnClickListener(this);
        this.mRectifyView.setOnClickListener(this);
        this.mGrayScaleView.setOnClickListener(this);
        if (!Util.hasNativageBar || Utils.isFullScreenDevice()) {
            i = 0;
        } else {
            i = Utils.getNavigationBarHeight();
        }
        setPadding(0, 0, 0, i);
    }

    public void setMessageDispatcher(MessageDispatcher messageDispatcher) {
        this.mMessageDispatcher = messageDispatcher;
    }

    public void setRectifiedImage(Bitmap bmp) {
        this.mRectifiedImage = bmp;
        this.mRectifiedImg.setImageBitmap(this.mRectifiedImage);
    }

    public void onClick(View v) {
        boolean z = true;
        boolean z2 = false;
        switch (v.getId()) {
            case R.id.document_rectify /*2131558631*/:
            case R.id.document_ocr /*2131558633*/:
            case R.id.document_retake_picture /*2131558635*/:
                if (this.mMessageDispatcher != null) {
                    this.mMessageDispatcher.dispatchMessage(0, v.getId(), 2, null, null);
                    return;
                }
                return;
            case R.id.document_gray_pic /*2131558632*/:
                if (this.mMessageDispatcher != null) {
                    this.mMessageDispatcher.dispatchMessage(0, v.getId(), 2, Boolean.valueOf(this.mToGrayScale), null);
                }
                if (!this.mToGrayScale) {
                    z2 = true;
                }
                updateGrayScaleStatus(z2);
                return;
            case R.id.document_save /*2131558636*/:
                if (this.mMessageDispatcher != null) {
                    MessageDispatcher messageDispatcher = this.mMessageDispatcher;
                    int id = v.getId();
                    if (this.mToGrayScale) {
                        z = false;
                    }
                    messageDispatcher.dispatchMessage(0, id, 2, Boolean.valueOf(z), null);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void updateGrayScaleStatus(boolean toGrayScale) {
        if (this.mToGrayScale != toGrayScale) {
            this.mToGrayScale = toGrayScale;
            if (toGrayScale) {
                this.mGrayScaleView.setText(R.string.document_grayscale);
            } else {
                this.mGrayScaleView.setText(R.string.document_color_picture);
            }
        }
    }
}
