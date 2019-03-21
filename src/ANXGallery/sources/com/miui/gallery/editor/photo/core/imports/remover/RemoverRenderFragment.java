package com.miui.gallery.editor.photo.core.imports.remover;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.RenderRecord;
import com.miui.gallery.editor.photo.app.remover.Inpaint;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractRemoverFragment;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;
import com.miui.gallery.editor.photo.core.imports.remover.RemoverGestureView.ElementType;
import com.miui.gallery.editor.photo.widgets.MenuUpdateListener;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class RemoverRenderFragment extends AbstractRemoverFragment implements RenderRecord {
    private RemoverCallback mCallback = new RemoverCallback() {
        public void onRemoveStart() {
            RemoverRenderFragment.this.mRemoverGestureView.setIsProcessing(true);
            if (RemoverRenderFragment.this.mMenuUpdateListener != null) {
                RemoverRenderFragment.this.mMenuUpdateListener.onMenuEnabled(false);
            }
            RemoverRenderFragment.this.mHandler.postDelayed(RemoverRenderFragment.this.mProgressRunnable, 500);
        }

        public void removeDone(RemoverPaintData removerPaintData) {
            RemoverRenderFragment.this.mHandler.removeCallbacks(RemoverRenderFragment.this.mProgressRunnable);
            RemoverRenderFragment.this.mProgressBar.setVisibility(8);
            if (removerPaintData != null) {
                RemoverRenderFragment.this.mRemoverPaintData = removerPaintData;
                RemoverRenderFragment.this.recordCurrent();
                if (RemoverRenderFragment.this.mMenuUpdateListener != null) {
                    RemoverRenderFragment.this.mMenuUpdateListener.onMenuUpdated(RemoverRenderFragment.this.mRecordCurr != RemoverRenderFragment.this.mRecordHead, false);
                }
            }
            RemoverRenderFragment.this.mRemoverGestureView.setIsProcessing(false);
            if (RemoverRenderFragment.this.mMenuUpdateListener != null) {
                RemoverRenderFragment.this.mMenuUpdateListener.onMenuEnabled(true);
            }
            RemoverRenderFragment.this.mCompareButton.setVisibility(0);
        }
    };
    private boolean mCanBackToOrigin = true;
    private Button mCompareButton;
    private ListIterator<RemoverPaintData> mCurrIterator = this.mRemoverPaintDataList.listIterator();
    private Handler mHandler = new Handler(new CustomCallback(this, null));
    private MenuUpdateListener mMenuUpdateListener;
    private float mPaintSize;
    private ProgressBar mProgressBar;
    private ProgressRunnable mProgressRunnable = new ProgressRunnable(this, null);
    private int mRecordCurr = 0;
    private int mRecordHead = 0;
    private int mRecordListTail;
    private int mRecordTail;
    private RemoverGestureView mRemoverGestureView;
    private RemoverPaintData mRemoverPaintData;
    private List<RemoverPaintData> mRemoverPaintDataList = new ArrayList();

    private class CustomCallback implements Callback {
        private CustomCallback() {
        }

        /* synthetic */ CustomCallback(RemoverRenderFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean handleMessage(Message msg) {
            return true;
        }
    }

    private class ProgressRunnable implements Runnable {
        private ProgressRunnable() {
        }

        /* synthetic */ ProgressRunnable(RemoverRenderFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            RemoverRenderFragment.this.mProgressBar.setVisibility(0);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Inpaint.initialize();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout layout = (FrameLayout) inflater.inflate(R.layout.remover_preview_container, container, false);
        this.mRemoverGestureView = (RemoverGestureView) layout.findViewById(R.id.remover_gesture_view);
        this.mProgressBar = (ProgressBar) layout.findViewById(R.id.progress);
        this.mCompareButton = (Button) layout.findViewById(R.id.compare_btn);
        this.mRemoverGestureView.setBitmap(getBitmap());
        this.mRemoverGestureView.setRemoverCallback(this.mCallback);
        this.mRemoverGestureView.setStrokeSize((int) this.mPaintSize);
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mRemoverGestureView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        this.mCompareButton.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 0) {
                    RemoverRenderFragment.this.mRemoverGestureView.drawOrigin(true);
                    RemoverRenderFragment.this.mCompareButton.setSelected(true);
                } else if (1 == event.getAction() || 3 == event.getAction()) {
                    RemoverRenderFragment.this.mRemoverGestureView.drawOrigin(false);
                    RemoverRenderFragment.this.mCompareButton.setSelected(false);
                }
                return true;
            }
        });
        this.mCanBackToOrigin = true;
        return layout;
    }

    public boolean isEmpty() {
        return this.mRemoverPaintDataList == null || this.mRemoverPaintDataList.isEmpty();
    }

    protected List<String> onSample() {
        List<String> sampleValues = new ArrayList();
        sampleValues.add(String.valueOf(this.mRecordListTail + 1));
        return sampleValues;
    }

    protected RenderData onExport() {
        List removerPaintDataList = new ArrayList();
        if (!(this.mRemoverPaintDataList == null || this.mRemoverPaintDataList.isEmpty())) {
            for (int i = 0; i <= this.mRecordListTail; i++) {
                removerPaintDataList.add(this.mRemoverPaintDataList.get(i));
            }
        }
        return new RemoverRenderData(removerPaintDataList);
    }

    public void clear() {
        this.mRemoverGestureView.onClear();
    }

    public void setPaintSize(float paintSize) {
        this.mPaintSize = paintSize;
        if (this.mRemoverGestureView != null) {
            this.mRemoverGestureView.setStrokeSize((int) paintSize);
        }
    }

    public void setRemoverData(RemoverData removerData) {
        if (removerData != null) {
            if (removerData.mType == 0) {
                this.mRemoverGestureView.setElementType(ElementType.FREE);
            } else if (removerData.mType == 1) {
                this.mRemoverGestureView.setElementType(ElementType.LINE);
            }
        }
    }

    public void setMenuUpdateListener(MenuUpdateListener listener) {
        this.mMenuUpdateListener = listener;
    }

    public void recordCurrent() {
        if (this.mRecordCurr + 1 == 10) {
            this.mCanBackToOrigin = false;
        }
        this.mRecordCurr = (this.mRecordCurr + 1) % 10;
        this.mRecordTail = this.mRecordCurr;
        Log.d("RemoverRenderFragment", "recordCurrent  mRecordCurr : %d", Integer.valueOf(this.mRecordCurr));
        if (this.mRecordCurr == this.mRecordHead) {
            this.mRecordHead = (this.mRecordCurr + 1) % 10;
        }
        if (this.mCurrIterator.hasNext()) {
            this.mCurrIterator.next();
            this.mCurrIterator.set(this.mRemoverPaintData);
            this.mRecordListTail = this.mCurrIterator.previousIndex();
        } else {
            this.mCurrIterator.add(this.mRemoverPaintData);
            this.mRecordListTail = this.mCurrIterator.previousIndex();
        }
        this.mRemoverGestureView.writeRecordFile();
    }

    public void previousRecord() {
        boolean z = true;
        this.mRecordCurr = (this.mRecordCurr - 1) % 10;
        if (this.mRecordCurr < 0) {
            this.mRecordCurr += 10;
        }
        Log.d("RemoverRenderFragment", "previousRecord  mRecordCurr : %d", Integer.valueOf(this.mRecordCurr));
        if (this.mCurrIterator.hasPrevious()) {
            this.mCurrIterator.previous();
            this.mRecordListTail = this.mCurrIterator.previousIndex();
        }
        this.mRemoverGestureView.renderPreviousBuffer();
        if (this.mMenuUpdateListener != null) {
            MenuUpdateListener menuUpdateListener = this.mMenuUpdateListener;
            boolean z2 = this.mRecordCurr != this.mRecordHead;
            if (this.mRecordCurr == this.mRecordTail) {
                z = false;
            }
            menuUpdateListener.onMenuUpdated(z2, z);
        }
        if (this.mRecordCurr == 0 && this.mCanBackToOrigin) {
            this.mCompareButton.setVisibility(8);
        }
    }

    public void nextRecord() {
        boolean z = true;
        this.mRecordCurr = (this.mRecordCurr + 1) % 10;
        if (this.mCurrIterator.hasNext()) {
            this.mCurrIterator.next();
            this.mRecordListTail = this.mCurrIterator.previousIndex();
        }
        this.mRemoverGestureView.renderNextBuffer();
        if (this.mMenuUpdateListener != null) {
            boolean z2;
            MenuUpdateListener menuUpdateListener = this.mMenuUpdateListener;
            if (this.mRecordCurr != this.mRecordHead) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mRecordCurr == this.mRecordTail) {
                z = false;
            }
            menuUpdateListener.onMenuUpdated(z2, z);
        }
        this.mCompareButton.setVisibility(0);
    }
}
