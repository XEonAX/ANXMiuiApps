package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.TreeMap;

public class NvsMultiThumbnailSequenceView extends HorizontalScrollView {
    private static final String TAG = "Meicam";
    public static final int THUMBNAIL_IMAGE_FILLMODE_ASPECTCROP = 1;
    public static final int THUMBNAIL_IMAGE_FILLMODE_STRETCH = 0;
    private ContentView m_contentView;
    private int m_contentWidth = 0;
    private ArrayList<ThumbnailSequenceDesc> m_descArray;
    private int m_endPadding = 0;
    private long m_internalObject = 0;
    private long m_maxTimelinePosToScroll = 0;
    private double m_pixelPerMicrosecond = 5.4E-5d;
    Bitmap m_placeholderBitmap;
    private OnScrollChangeListener m_scrollChangeListener;
    private boolean m_scrollEnabled = true;
    private int m_startPadding = 0;
    private float m_thumbnailAspectRatio = 0.5625f;
    private int m_thumbnailImageFillMode = 0;
    private TreeMap<ThumbnailId, Thumbnail> m_thumbnailMap = new TreeMap();
    private ArrayList<ThumbnailSequence> m_thumbnailSequenceArray = new ArrayList();
    private TreeMap<Integer, ThumbnailSequence> m_thumbnailSequenceMap = new TreeMap();
    private int m_thumbnailWidth = 0;
    private boolean m_updatingThumbnail = false;

    private class ContentView extends ViewGroup {
        public ContentView(Context context) {
            super(context);
        }

        public boolean shouldDelayChildPressedState() {
            return false;
        }

        protected void onMeasure(int i, int i2) {
            int access$000 = NvsMultiThumbnailSequenceView.this.m_contentWidth;
            int mode = MeasureSpec.getMode(i2);
            int size = MeasureSpec.getSize(i2);
            if (!(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
                size = NvsMultiThumbnailSequenceView.this.getHeight();
            }
            setMeasuredDimension(resolveSizeAndState(Math.max(access$000, getSuggestedMinimumWidth()), i, 0), resolveSizeAndState(Math.max(size, getSuggestedMinimumHeight()), i2, 0));
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            NvsMultiThumbnailSequenceView.this.updateThumbnails();
        }

        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            if (i2 != i4) {
                NvsMultiThumbnailSequenceView.this.requestUpdateThumbnailSequenceGeometry();
            }
            super.onSizeChanged(i, i2, i3, i4);
        }
    }

    public interface OnScrollChangeListener {
        void onScrollChanged(NvsMultiThumbnailSequenceView nvsMultiThumbnailSequenceView, int i, int i2);
    }

    private static class Thumbnail {
        long m_iconTaskId = 0;
        ImageView m_imageView;
        boolean m_imageViewUpToDate = false;
        ThumbnailSequence m_owner;
        long m_timestamp = 0;
        boolean m_touched = false;
    }

    private static class ThumbnailId implements Comparable<ThumbnailId> {
        public int m_seqIndex;
        public long m_timestamp;

        public ThumbnailId(int i, long j) {
            this.m_seqIndex = i;
            this.m_timestamp = j;
        }

        public int compareTo(ThumbnailId thumbnailId) {
            if (this.m_seqIndex < thumbnailId.m_seqIndex) {
                return -1;
            }
            if (this.m_seqIndex > thumbnailId.m_seqIndex) {
                return 1;
            }
            if (this.m_timestamp < thumbnailId.m_timestamp) {
                return -1;
            }
            if (this.m_timestamp > thumbnailId.m_timestamp) {
                return 1;
            }
            return 0;
        }
    }

    private static class ThumbnailSequence {
        long m_inPoint = 0;
        int m_index = 0;
        String m_mediaFilePath;
        long m_outPoint = 0;
        boolean m_stillImageHint = false;
        long m_trimDuration = 0;
        long m_trimIn = 0;
        int m_width = 0;
        int m_x = 0;

        public long calcTimestampFromX(int i) {
            return this.m_trimIn + ((long) Math.floor(((((double) (i - this.m_x)) / ((double) this.m_width)) * ((double) this.m_trimDuration)) + 0.5d));
        }
    }

    public static class ThumbnailSequenceDesc {
        public long inPoint = 0;
        public String mediaFilePath;
        public long outPoint = 4000000;
        public boolean stillImageHint = false;
        public long trimIn = 0;
        public long trimOut = 4000000;
    }

    private native void nativeCancelIconTask(long j, long j2);

    private native void nativeClose(long j);

    private native long nativeGetIcon(long j, String str, long j2);

    private native Bitmap nativeGetIconFromCache(long j, String str, long j2);

    private native long nativeInit();

    public NvsMultiThumbnailSequenceView(Context context) {
        super(context);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsMultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public void setThumbnailSequenceDescArray(ArrayList<ThumbnailSequenceDesc> arrayList) {
        NvsUtils.checkFunctionInMainThread();
        if (arrayList != this.m_descArray) {
            clearThumbnailSequences();
            this.m_descArray = arrayList;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                long j = 0;
                int i = 0;
                while (it.hasNext()) {
                    ThumbnailSequenceDesc thumbnailSequenceDesc = (ThumbnailSequenceDesc) it.next();
                    if (thumbnailSequenceDesc.mediaFilePath == null || thumbnailSequenceDesc.inPoint < j || thumbnailSequenceDesc.outPoint <= thumbnailSequenceDesc.inPoint || thumbnailSequenceDesc.trimIn < 0 || thumbnailSequenceDesc.trimOut <= thumbnailSequenceDesc.trimIn) {
                        Log.e(TAG, "Invalid ThumbnailSequenceDesc!");
                    } else {
                        ThumbnailSequence thumbnailSequence = new ThumbnailSequence();
                        int i2 = i + 1;
                        thumbnailSequence.m_index = i;
                        thumbnailSequence.m_mediaFilePath = thumbnailSequenceDesc.mediaFilePath;
                        thumbnailSequence.m_inPoint = thumbnailSequenceDesc.inPoint;
                        thumbnailSequence.m_outPoint = thumbnailSequenceDesc.outPoint;
                        thumbnailSequence.m_trimIn = thumbnailSequenceDesc.trimIn;
                        thumbnailSequence.m_trimDuration = thumbnailSequenceDesc.trimOut - thumbnailSequenceDesc.trimIn;
                        thumbnailSequence.m_stillImageHint = thumbnailSequenceDesc.stillImageHint;
                        this.m_thumbnailSequenceArray.add(thumbnailSequence);
                        i = i2;
                        j = thumbnailSequenceDesc.outPoint;
                    }
                }
            }
            updateThumbnailSequenceGeometry();
        }
    }

    public ArrayList<ThumbnailSequenceDesc> getThumbnailSequenceDescArray() {
        return this.m_descArray;
    }

    public void setThumbnailImageFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (!(this.m_thumbnailImageFillMode == 1 || this.m_thumbnailImageFillMode == 0)) {
            this.m_thumbnailImageFillMode = 0;
        }
        if (this.m_thumbnailImageFillMode != i) {
            this.m_thumbnailImageFillMode = i;
            updateThumbnailSequenceGeometry();
        }
    }

    public int getThumbnailImageFillMode() {
        return this.m_thumbnailImageFillMode;
    }

    public void setThumbnailAspectRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        if (f < 0.1f) {
            f = 0.1f;
        } else if (f > 10.0f) {
            f = 10.0f;
        }
        if (Math.abs(this.m_thumbnailAspectRatio - f) >= 0.001f) {
            this.m_thumbnailAspectRatio = f;
            updateThumbnailSequenceGeometry();
        }
    }

    public float getThumbnailAspectRatio() {
        return this.m_thumbnailAspectRatio;
    }

    public void setPixelPerMicrosecond(double d) {
        NvsUtils.checkFunctionInMainThread();
        if (d > 0.0d && d != this.m_pixelPerMicrosecond) {
            this.m_pixelPerMicrosecond = d;
            updateThumbnailSequenceGeometry();
        }
    }

    public double getPixelPerMicrosecond() {
        return this.m_pixelPerMicrosecond;
    }

    public void setStartPadding(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i >= 0 && i != this.m_startPadding) {
            this.m_startPadding = i;
            updateThumbnailSequenceGeometry();
        }
    }

    public int getStartPadding() {
        return this.m_startPadding;
    }

    public void setEndPadding(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i >= 0 && i != this.m_endPadding) {
            this.m_endPadding = i;
            updateThumbnailSequenceGeometry();
        }
    }

    public int getEndPadding() {
        return this.m_endPadding;
    }

    public void setMaxTimelinePosToScroll(int i) {
        NvsUtils.checkFunctionInMainThread();
        int max = Math.max(i, 0);
        if (((long) max) != this.m_maxTimelinePosToScroll) {
            this.m_maxTimelinePosToScroll = (long) max;
            updateThumbnailSequenceGeometry();
        }
    }

    public long getMaxTimelinePosToScroll() {
        return this.m_maxTimelinePosToScroll;
    }

    public long mapTimelinePosFromX(int i) {
        NvsUtils.checkFunctionInMainThread();
        return (long) Math.floor((((double) ((getScrollX() + i) - this.m_startPadding)) / this.m_pixelPerMicrosecond) + 0.5d);
    }

    public int mapXFromTimelinePos(long j) {
        NvsUtils.checkFunctionInMainThread();
        int floor = (int) Math.floor((((double) j) * this.m_pixelPerMicrosecond) + 0.5d);
        return (floor + this.m_startPadding) - getScrollX();
    }

    public void scaleWithAnchor(double d, int i) {
        NvsUtils.checkFunctionInMainThread();
        if (d > 0.0d) {
            long mapTimelinePosFromX = mapTimelinePosFromX(i);
            this.m_pixelPerMicrosecond *= d;
            updateThumbnailSequenceGeometry();
            scrollTo((mapXFromTimelinePos(mapTimelinePosFromX) + getScrollX()) - i, 0);
        }
    }

    public void setOnScrollChangeListenser(OnScrollChangeListener onScrollChangeListener) {
        NvsUtils.checkFunctionInMainThread();
        this.m_scrollChangeListener = onScrollChangeListener;
    }

    public OnScrollChangeListener getOnScrollChangeListenser() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_scrollChangeListener;
    }

    public void setScrollEnabled(boolean z) {
        this.m_scrollEnabled = z;
    }

    public boolean getScrollEnabled() {
        return this.m_scrollEnabled;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            this.m_internalObject = nativeInit();
        }
    }

    protected void onDetachedFromWindow() {
        cancelIconTask();
        this.m_scrollChangeListener = null;
        if (!isInEditMode()) {
            nativeClose(this.m_internalObject);
        }
        this.m_internalObject = 0;
        super.onDetachedFromWindow();
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.m_scrollChangeListener != null) {
            this.m_scrollChangeListener.onScrollChanged(this, i, i3);
        }
        updateThumbnails();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.m_scrollEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.m_scrollEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    private void init(Context context) {
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        this.m_contentView = new ContentView(context);
        addView(this.m_contentView, new LayoutParams(-2, -1));
    }

    private void requestUpdateThumbnailSequenceGeometry() {
        new Handler().post(new Runnable() {
            public void run() {
                NvsMultiThumbnailSequenceView.this.updateThumbnailSequenceGeometry();
            }
        });
    }

    private void updateThumbnailSequenceGeometry() {
        cancelIconTask();
        clearThumbnails();
        int height = getHeight();
        if (height != 0) {
            this.m_thumbnailWidth = (int) Math.floor(((double) (((float) height) * this.m_thumbnailAspectRatio)) + 0.5d);
            this.m_thumbnailWidth = Math.max(this.m_thumbnailWidth, 1);
            this.m_thumbnailSequenceMap.clear();
            height = this.m_startPadding;
            Iterator it = this.m_thumbnailSequenceArray.iterator();
            int i = height;
            while (it.hasNext()) {
                ThumbnailSequence thumbnailSequence = (ThumbnailSequence) it.next();
                int floor = this.m_startPadding + ((int) Math.floor((((double) thumbnailSequence.m_inPoint) * this.m_pixelPerMicrosecond) + 0.5d));
                int floor2 = ((int) Math.floor((((double) thumbnailSequence.m_outPoint) * this.m_pixelPerMicrosecond) + 0.5d)) + this.m_startPadding;
                if (floor2 > floor) {
                    thumbnailSequence.m_x = floor;
                    thumbnailSequence.m_width = floor2 - floor;
                    this.m_thumbnailSequenceMap.put(Integer.valueOf(floor), thumbnailSequence);
                    i = floor2;
                }
            }
            if (this.m_maxTimelinePosToScroll <= 0) {
                i += this.m_endPadding;
            } else {
                height = (int) Math.floor((((double) this.m_startPadding) + (((double) this.m_maxTimelinePosToScroll) * this.m_pixelPerMicrosecond)) + 0.5d);
                if (height < i) {
                    i = height;
                }
            }
            this.m_contentWidth = i;
            this.m_contentView.layout(0, 0, this.m_contentWidth, getHeight());
            this.m_contentView.requestLayout();
            if (getWidth() + getScrollX() > this.m_contentWidth) {
                height = Math.max(getScrollX() - ((getWidth() + getScrollX()) - this.m_contentWidth), 0);
                if (height != getScrollX()) {
                    scrollTo(height, 0);
                }
            }
        }
    }

    private void updateThumbnails() {
        if (this.m_thumbnailSequenceMap.isEmpty()) {
            clearThumbnails();
            return;
        }
        int i = this.m_thumbnailWidth;
        int scrollX = getScrollX();
        int width = getWidth();
        int max = Math.max(scrollX - i, this.m_startPadding);
        int i2 = (max + width) + i;
        if (i2 <= max) {
            clearThumbnails();
            return;
        }
        Entry ceilingEntry;
        Thumbnail thumbnail;
        Object obj = (Integer) this.m_thumbnailSequenceMap.floorKey(Integer.valueOf(max));
        if (obj == null) {
            obj = (Integer) this.m_thumbnailSequenceMap.firstKey();
        }
        for (Entry ceilingEntry2 : this.m_thumbnailSequenceMap.tailMap(obj).entrySet()) {
            ThumbnailSequence thumbnailSequence = (ThumbnailSequence) ceilingEntry2.getValue();
            if (thumbnailSequence.m_x + thumbnailSequence.m_width >= max) {
                if (thumbnailSequence.m_x >= i2) {
                    break;
                }
                if (thumbnailSequence.m_x < max) {
                    scrollX = thumbnailSequence.m_x + (((max - thumbnailSequence.m_x) / this.m_thumbnailWidth) * this.m_thumbnailWidth);
                } else {
                    scrollX = thumbnailSequence.m_x;
                }
                int i3 = thumbnailSequence.m_x + thumbnailSequence.m_width;
                int i4 = scrollX;
                while (i4 < i3) {
                    if (i4 >= i2) {
                        obj = 1;
                        break;
                    }
                    scrollX = this.m_thumbnailWidth;
                    if (i4 + scrollX > i3) {
                        width = i3 - i4;
                    } else {
                        width = scrollX;
                    }
                    long calcTimestampFromX = thumbnailSequence.calcTimestampFromX(i4);
                    ThumbnailId thumbnailId = new ThumbnailId(thumbnailSequence.m_index, calcTimestampFromX);
                    thumbnail = (Thumbnail) this.m_thumbnailMap.get(thumbnailId);
                    if (thumbnail == null) {
                        thumbnail = new Thumbnail();
                        thumbnail.m_owner = thumbnailSequence;
                        thumbnail.m_timestamp = calcTimestampFromX;
                        thumbnail.m_imageViewUpToDate = false;
                        thumbnail.m_touched = true;
                        this.m_thumbnailMap.put(thumbnailId, thumbnail);
                        thumbnail.m_imageView = new ImageView(getContext());
                        if (this.m_thumbnailImageFillMode == 0) {
                            thumbnail.m_imageView.setScaleType(ScaleType.FIT_XY);
                        } else if (this.m_thumbnailImageFillMode == 1) {
                            thumbnail.m_imageView.setScaleType(ScaleType.CENTER_CROP);
                        }
                        this.m_contentView.addView(thumbnail.m_imageView);
                        thumbnail.m_imageView.layout(i4, 0, i4 + width, this.m_contentView.getHeight());
                    } else {
                        thumbnail.m_touched = true;
                    }
                    i4 += width;
                }
                obj = null;
                if (obj != null) {
                    break;
                }
            }
        }
        this.m_updatingThumbnail = true;
        TreeMap treeMap = new TreeMap();
        Iterator it = this.m_thumbnailMap.entrySet().iterator();
        Object obj2 = null;
        while (it.hasNext()) {
            Bitmap bitmap;
            Entry entry = (Entry) it.next();
            Thumbnail thumbnail2 = (Thumbnail) entry.getValue();
            if (thumbnail2.m_imageView != null) {
                Drawable drawable = thumbnail2.m_imageView.getDrawable();
                if (drawable != null) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap != null) {
                        this.m_placeholderBitmap = bitmap;
                    }
                }
            }
            if (thumbnail2.m_touched) {
                thumbnail2.m_touched = false;
                if (thumbnail2.m_imageViewUpToDate) {
                    treeMap.put(entry.getKey(), ((BitmapDrawable) thumbnail2.m_imageView.getDrawable()).getBitmap());
                } else {
                    long j = thumbnail2.m_owner.m_stillImageHint ? 0 : thumbnail2.m_timestamp;
                    bitmap = nativeGetIconFromCache(this.m_internalObject, thumbnail2.m_owner.m_mediaFilePath, j);
                    if (bitmap != null) {
                        treeMap.put(entry.getKey(), bitmap);
                        if (setBitmapToImageView(bitmap, thumbnail2.m_imageView)) {
                            thumbnail2.m_imageViewUpToDate = true;
                            thumbnail2.m_iconTaskId = 0;
                        }
                    } else {
                        obj2 = 1;
                        thumbnail2.m_iconTaskId = nativeGetIcon(this.m_internalObject, thumbnail2.m_owner.m_mediaFilePath, j);
                    }
                }
                obj2 = obj2;
            } else {
                if (thumbnail2.m_iconTaskId != 0) {
                    nativeCancelIconTask(this.m_internalObject, thumbnail2.m_iconTaskId);
                }
                this.m_contentView.removeView(thumbnail2.m_imageView);
                it.remove();
            }
        }
        this.m_updatingThumbnail = false;
        if (obj2 == null) {
            return;
        }
        if (!treeMap.isEmpty()) {
            for (Entry ceilingEntry22 : this.m_thumbnailMap.entrySet()) {
                thumbnail = (Thumbnail) ceilingEntry22.getValue();
                if (!thumbnail.m_imageViewUpToDate) {
                    ceilingEntry22 = treeMap.ceilingEntry(ceilingEntry22.getKey());
                    if (ceilingEntry22 != null) {
                        setBitmapToImageView((Bitmap) ceilingEntry22.getValue(), thumbnail.m_imageView);
                    } else {
                        setBitmapToImageView((Bitmap) treeMap.lastEntry().getValue(), thumbnail.m_imageView);
                    }
                }
            }
        } else if (this.m_placeholderBitmap != null) {
            for (Entry ceilingEntry222 : this.m_thumbnailMap.entrySet()) {
                Thumbnail thumbnail3 = (Thumbnail) ceilingEntry222.getValue();
                if (!thumbnail3.m_imageViewUpToDate) {
                    setBitmapToImageView(this.m_placeholderBitmap, thumbnail3.m_imageView);
                }
            }
        }
    }

    private boolean setBitmapToImageView(Bitmap bitmap, ImageView imageView) {
        if (bitmap == null || imageView == null) {
            return false;
        }
        int width = imageView.getWidth();
        if (width < this.m_thumbnailWidth) {
            width = (width * bitmap.getWidth()) / this.m_thumbnailWidth;
            if (width == 0) {
                return false;
            }
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, bitmap.getHeight());
        }
        imageView.setImageBitmap(bitmap);
        return true;
    }

    private void clearThumbnailSequences() {
        cancelIconTask();
        clearThumbnails();
        this.m_thumbnailSequenceArray.clear();
        this.m_thumbnailSequenceMap.clear();
        this.m_contentWidth = 0;
    }

    private void clearThumbnails() {
        for (Entry value : this.m_thumbnailMap.entrySet()) {
            this.m_contentView.removeView(((Thumbnail) value.getValue()).m_imageView);
        }
        this.m_thumbnailMap.clear();
    }

    private void cancelIconTask() {
        if (!isInEditMode()) {
            nativeCancelIconTask(this.m_internalObject, 0);
        }
    }

    protected void notifyIconArrived() {
        if (this.m_updatingThumbnail) {
            new Handler().post(new Runnable() {
                public void run() {
                    NvsMultiThumbnailSequenceView.this.updateThumbnails();
                }
            });
        } else {
            updateThumbnails();
        }
    }
}
