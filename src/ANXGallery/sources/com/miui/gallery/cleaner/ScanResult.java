package com.miui.gallery.cleaner;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import com.miui.gallery.R;

public class ScanResult {
    private int mAction;
    private int mCount;
    private int mDescription;
    private OnScanResultClickListener mOnClickListener;
    private String[] mPaths;
    private long mSize;
    private int mTitle;
    private int mType;

    public static class Builder {
        private int mAction;
        private Context mContext;
        private int mCount;
        private int mDescription;
        private OnScanResultClickListener mOnClickListener;
        private String[] mPaths;
        private long mSize;
        private int mTitle;
        private int mType = -1;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder setType(int type) {
            this.mType = type;
            return this;
        }

        public Builder setSize(long size) {
            this.mSize = size;
            return this;
        }

        public Builder setPaths(String[] paths) {
            this.mPaths = paths;
            return this;
        }

        public Builder setCount(int count) {
            this.mCount = count;
            return this;
        }

        public Builder setTitle(int title) {
            this.mTitle = title;
            return this;
        }

        public Builder setAction(int action) {
            this.mAction = action;
            return this;
        }

        public Builder setDescription(int description) {
            this.mDescription = description;
            return this;
        }

        public Builder setOnScanResultClickListener(OnScanResultClickListener listener) {
            this.mOnClickListener = listener;
            return this;
        }

        public ScanResult build() {
            long j = 0;
            if (this.mType == -1) {
                throw new RuntimeException("the type must set.");
            } else if (this.mTitle == 0) {
                throw new RuntimeException("the title must not be empty.");
            } else if (this.mAction == 0) {
                throw new RuntimeException("the action must not be empty.");
            } else if (this.mOnClickListener == null) {
                throw new RuntimeException("the OnScanResultClickListener must not be null");
            } else {
                ScanResult result = new ScanResult();
                result.mType = this.mType;
                if (this.mSize >= 0) {
                    j = this.mSize;
                }
                result.mSize = j;
                result.mPaths = this.mPaths;
                result.mCount = this.mCount;
                result.mTitle = this.mTitle;
                result.mDescription = this.mDescription;
                result.mAction = this.mAction;
                result.mOnClickListener = this.mOnClickListener;
                return result;
            }
        }
    }

    private static class CenteredImageSpan extends ImageSpan {
        CenteredImageSpan(Drawable drawable) {
            super(drawable);
        }

        public void draw(Canvas canvas, CharSequence text, int start, int end, float x, int top, int y, int bottom, Paint paint) {
            Drawable drawable = getDrawable();
            canvas.save();
            canvas.translate(x, ((float) (bottom - drawable.getBounds().bottom)) / 2.0f);
            drawable.draw(canvas);
            canvas.restore();
        }
    }

    public interface OnScanResultClickListener {
        void onClick(Context context);
    }

    private ScanResult() {
    }

    public int getType() {
        return this.mType;
    }

    public long getSize() {
        return this.mSize;
    }

    public String[] getPaths() {
        return this.mPaths;
    }

    public CharSequence getMergedTitle(Context context) {
        String title = context.getString(this.mTitle);
        if (this.mCount <= 0) {
            return title;
        }
        String count = context.getResources().getQuantityString(R.plurals.file_count_format, this.mCount, new Object[]{Integer.valueOf(this.mCount)});
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.info_divider);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        CenteredImageSpan centeredImageSpan = new CenteredImageSpan(drawable);
        SpannableString spannableTitle = new SpannableString(title + "+" + count);
        spannableTitle.setSpan(centeredImageSpan, title.length(), title.length() + 1, 33);
        return spannableTitle;
    }

    public int getDescription() {
        return this.mDescription;
    }

    public int getAction() {
        return this.mAction;
    }

    public void onClick(Context context) {
        if (this.mOnClickListener != null) {
            this.mOnClickListener.onClick(context);
        }
    }
}
