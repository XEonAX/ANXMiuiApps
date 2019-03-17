package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xiaomi.recognizer.RecognizeResult;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.util.Util;

public class RectifyImageLayout extends RelativeLayout implements OnClickListener, OnLayoutChangeListener {
    private final Tag TAG = new Tag("RectifyImageLayout");
    private ImageView mCancelButton;
    private DocumentRectifyView mCropRectView;
    private ImageView mCroppedImage;
    private TextView mCroppedTitle;
    private ImageView mDoneButton;
    private MessageDispatcher mMessageDispatcher;
    private Bitmap mSourceBitmap;
    private int mTitleId;

    public RectifyImageLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setMessageDispatcher(MessageDispatcher messageDispatcher) {
        this.mMessageDispatcher = messageDispatcher;
    }

    public void onFinishInflate() {
        int i;
        super.onFinishInflate();
        this.mCroppedTitle = (TextView) findViewById(R.id.crop_title);
        this.mCropRectView = (DocumentRectifyView) findViewById(R.id.rectify_rect);
        this.mCroppedImage = (ImageView) findViewById(R.id.cropped_image);
        this.mCancelButton = (ImageView) findViewById(R.id.cancel_rectify);
        this.mDoneButton = (ImageView) findViewById(R.id.done_rectify);
        this.mCancelButton.setOnClickListener(this);
        this.mDoneButton.setOnClickListener(this);
        if (this.mTitleId != 0) {
            this.mCroppedTitle.setText(this.mTitleId);
        }
        this.mCroppedImage.addOnLayoutChangeListener(this);
        if (!Util.hasNativageBar || Utils.isFullScreenDevice()) {
            i = 0;
        } else {
            i = Utils.getNavigationBarHeight();
        }
        setPadding(0, 0, 0, i);
    }

    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.cancel_rectify /*2131558641*/:
                onCancelCropClicked();
                return;
            case R.id.done_rectify /*2131558642*/:
                onFinishCropClicked();
                return;
            default:
                return;
        }
    }

    public void setCropCorners(Point[] corners) {
        Log.v(this.TAG, "setCropCorners: cropView=" + this.mCropRectView);
        if (this.mCropRectView != null) {
            switchPoint(corners, 2, 3);
            this.mCropRectView.setImageParams(this.mSourceBitmap.getWidth(), this.mSourceBitmap.getHeight(), corners);
        }
    }

    private void switchPoint(Point[] corners, int index1, int index2) {
        if (corners != null) {
            int size = corners.length;
            if (index1 < size && index1 >= 0 && index2 < size && index2 >= 0) {
                Point temp = corners[index1];
                corners[index1] = corners[index2];
                corners[index2] = temp;
            }
        }
    }

    public void setTitle(int id) {
        this.mTitleId = id;
        if (this.mCroppedTitle != null) {
            this.mCroppedTitle.setText(id);
        }
    }

    private void onFinishCropClicked() {
        float[] coordinates = serializeCorners(this.mCropRectView.getImageCropCorners());
        if (coordinates == null) {
            Log.w(this.TAG, "onFinishCropClicked: no coordinates return!");
            return;
        }
        this.mSourceBitmap = null;
        RecognizeResult result = new RecognizeResult();
        result.quadrangleCorners = coordinates;
        result.resultValid = true;
        Log.v(this.TAG, "onFinishCropClicked: " + result);
        notifyCropDoneToController(result);
    }

    private float[] serializeCorners(Point[] corners) {
        if (corners == null || corners.length != 4) {
            int i;
            Tag tag = this.TAG;
            StringBuilder append = new StringBuilder().append("serializeCorners: require 4 points but found ");
            if (corners == null) {
                i = 0;
            } else {
                i = corners.length;
            }
            Log.w(tag, append.append(i).toString());
            return null;
        }
        switchPoint(corners, 2, 3);
        int size = corners.length;
        float[] result = new float[(size * 2)];
        for (int i2 = 0; i2 < size; i2++) {
            Point corner = corners[i2];
            if (corner == null) {
                Log.w(this.TAG, "serializeCorners: invalid corner " + i2);
                return null;
            }
            result[i2 * 2] = (float) corner.x;
            result[(i2 * 2) + 1] = (float) corner.y;
        }
        return result;
    }

    private void notifyCropDoneToController(RecognizeResult result) {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.done_rectify, 2, result, null);
        }
    }

    private void onCancelCropClicked() {
        this.mCroppedImage.setImageBitmap(null);
        this.mSourceBitmap = null;
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.cancel_rectify, 2, null, null);
        }
    }

    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        if (this.mSourceBitmap != null) {
            super.post(new Runnable() {
                public void run() {
                    RectifyImageLayout.this.setCropViewSize(RectifyImageLayout.this.mSourceBitmap);
                }
            });
        }
    }

    public void setSourceImage(Bitmap bmp) {
        this.mSourceBitmap = bmp;
        this.mCroppedImage.setImageBitmap(this.mSourceBitmap);
        setCropViewSize(this.mSourceBitmap);
    }

    private void setCropViewSize(Bitmap bmp) {
        int imageWidth = this.mCroppedImage.getWidth();
        int imageHeight = this.mCroppedImage.getHeight();
        if (bmp != null && imageWidth != 0 && imageHeight != 0) {
            int width = bmp.getWidth();
            int height = bmp.getHeight();
            int cropViewWith = imageWidth;
            int cropViewHeight = imageHeight;
            if (((float) width) / ((float) height) >= ((float) imageWidth) / ((float) imageHeight)) {
                cropViewHeight = (imageWidth * height) / width;
            } else {
                cropViewWith = (imageHeight * width) / height;
            }
            LayoutParams lp = (LayoutParams) this.mCropRectView.getLayoutParams();
            lp.width = cropViewWith;
            lp.height = cropViewHeight;
            this.mCropRectView.setLayoutParams(lp);
            this.mCropRectView.requestLayout();
        }
    }
}
