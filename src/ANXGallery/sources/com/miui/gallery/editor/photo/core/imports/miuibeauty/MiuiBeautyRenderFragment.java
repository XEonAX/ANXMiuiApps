package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.RenderRecord;
import com.miui.gallery.editor.photo.core.GLFragment;
import com.miui.gallery.editor.photo.core.GLFragment.GLContext;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.widgets.BeautyImageView;
import com.miui.gallery.editor.photo.widgets.BeautyImageView.InitRenderCallback;
import com.miui.gallery.editor.photo.widgets.StrokeBoardView;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

public class MiuiBeautyRenderFragment extends AbstractEffectFragment implements RenderRecord, GLFragment, InitRenderCallback {
    private List<Map<BeautyParameterType, Float>> mBeautyParameterList;
    private Map<BeautyParameterType, Float> mBeautyParameters;
    private ProgressBar mBeautyProgressBar;
    private Button mCompareBtn;
    private boolean mCompareOrigin;
    private ListIterator<Map<BeautyParameterType, Float>> mCurrIterator;
    private BeautyContext mGLContext = new BeautyContext(this, null);
    private OnBeautyProcessListener mOnBeautyProcessListener;
    private ImageView mOriginalImageView;
    private Bitmap mPreProcessBitmap;
    private FrameLayout mPreviewContainer;
    private int mRecordHead;
    private int mRecordTail;
    BeautyImageView mRenderView;
    private boolean mShowProgressDelay = true;
    private StrokeBoardView mStrokeBoardView;
    private Bitmap mToBeCompared;

    public interface OnBeautyProcessListener {
        void onBeautyProcessEnd();

        void onBeautyProcessStart();
    }

    private class BeautyContext extends GLContext {
        private BeautyContext() {
        }

        /* synthetic */ BeautyContext(MiuiBeautyRenderFragment x0, AnonymousClass1 x1) {
            this();
        }

        void triggerCreated() {
            super.performCreated();
        }

        protected void onResume() {
        }

        protected void onPause() {
        }
    }

    private static class RenderTask extends AsyncTask<Void, Void, Void> {
        private WeakReference<MiuiBeautyRenderFragment> mFragmentWeakReference;
        boolean mTaskDone;

        RenderTask(MiuiBeautyRenderFragment fragment) {
            this.mFragmentWeakReference = new WeakReference(fragment);
        }

        protected Void doInBackground(Void... params) {
            MiuiBeautyRenderFragment fragment = (MiuiBeautyRenderFragment) this.mFragmentWeakReference.get();
            if (fragment != null) {
                fragment.mRenderView.reloadTexture(false);
                fragment.mRenderView.requestRender();
            }
            return null;
        }

        protected void onPreExecute() {
            super.onPreExecute();
            MiuiBeautyRenderFragment fragment = (MiuiBeautyRenderFragment) this.mFragmentWeakReference.get();
            if (fragment != null && fragment.mBeautyParameters != null) {
                if (fragment.mOnBeautyProcessListener != null) {
                    fragment.mOnBeautyProcessListener.onBeautyProcessStart();
                }
                this.mTaskDone = false;
                if (fragment.mShowProgressDelay) {
                    fragment.mRenderView.postDelayed(new Runnable() {
                        public void run() {
                            if (!RenderTask.this.mTaskDone) {
                                MiuiBeautyRenderFragment fragment = (MiuiBeautyRenderFragment) RenderTask.this.mFragmentWeakReference.get();
                                if (fragment != null) {
                                    fragment.mBeautyProgressBar.setVisibility(0);
                                }
                            }
                        }
                    }, 1000);
                } else {
                    fragment.mBeautyProgressBar.setVisibility(0);
                }
            }
        }

        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            this.mTaskDone = true;
            MiuiBeautyRenderFragment fragment = (MiuiBeautyRenderFragment) this.mFragmentWeakReference.get();
            if (fragment != null) {
                fragment.mBeautyProgressBar.setVisibility(8);
                if (fragment.mOnBeautyProcessListener != null) {
                    fragment.mOnBeautyProcessListener.onBeautyProcessEnd();
                }
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mBeautyParameterList = new LinkedList();
        this.mCurrIterator = this.mBeautyParameterList.listIterator();
        this.mRecordHead = -1;
        this.mRecordTail = -1;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.miui_beauty_fragment, container, false);
        this.mRenderView = (BeautyImageView) layout.findViewById(R.id.glsurfaceview_image);
        this.mRenderView.setInitRenderCallback(this);
        this.mPreProcessBitmap = MiuiBeautyEngine.preProcessBitmapForPreview(getBitmap());
        this.mToBeCompared = this.mPreProcessBitmap.copy(this.mPreProcessBitmap.getConfig(), true);
        this.mRenderView.setPicData(this.mPreProcessBitmap);
        this.mCompareOrigin = true;
        this.mPreviewContainer = (FrameLayout) layout.findViewById(R.id.preview_container);
        this.mCompareBtn = (Button) layout.findViewById(R.id.compare_btn);
        this.mBeautyProgressBar = (ProgressBar) layout.findViewById(R.id.beauty_progress_bar);
        this.mStrokeBoardView = (StrokeBoardView) layout.findViewById(R.id.stroke_view);
        this.mStrokeBoardView.setBitmap(this.mPreProcessBitmap);
        return layout;
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
    }

    public void add(Metadata effect, Object param) {
        Map<BeautyParameterType, Float> beauayParam = null;
        if (param instanceof Map) {
            beauayParam = (Map) param;
        }
        this.mBeautyParameters = beauayParam;
        this.mRenderView.updateBeautyProcessor(this.mBeautyParameters);
    }

    public void remove(Metadata effect) {
    }

    public void render() {
        new RenderTask(this).execute(new Void[0]);
    }

    public boolean isEmpty() {
        return this.mBeautyParameterList.isEmpty();
    }

    protected List<String> onSample() {
        return null;
    }

    protected RenderData onExport() {
        if (this.mBeautyParameterList.isEmpty()) {
            return new MiuiBeautyRenderData(null);
        }
        RenderData miuiBeautyRenderData = new MiuiBeautyRenderData((Map) this.mBeautyParameterList.get(0));
        for (int i = 1; i <= this.mRecordTail; i++) {
            miuiBeautyRenderData.addParams((Map) this.mBeautyParameterList.get(i));
        }
        return miuiBeautyRenderData;
    }

    public void clear() {
        clearAllRecords();
    }

    public GLContext getGLContext() {
        return this.mGLContext;
    }

    public void onRenderFinish() {
        this.mRenderView.postDelayed(new Runnable() {
            public void run() {
                MiuiBeautyRenderFragment.this.mGLContext.triggerCreated();
            }
        }, 900);
    }

    public void setCompareOrigin(boolean compareOrigin) {
        this.mCompareOrigin = compareOrigin;
    }

    public void enableComparison(boolean enable) {
        if (enable) {
            this.mCompareBtn.setVisibility(0);
            this.mCompareBtn.bringToFront();
            this.mCompareBtn.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == 0) {
                        if (MiuiBeautyRenderFragment.this.mOriginalImageView == null) {
                            MiuiBeautyRenderFragment.this.mOriginalImageView = new ImageView(MiuiBeautyRenderFragment.this.getActivity());
                            MiuiBeautyRenderFragment.this.mOriginalImageView.setScaleType(ScaleType.FIT_CENTER);
                            MiuiBeautyRenderFragment.this.mOriginalImageView.setLayoutParams(new LayoutParams(-1, -1));
                        }
                        MiuiBeautyRenderFragment.this.mOriginalImageView.setImageBitmap(MiuiBeautyRenderFragment.this.mCompareOrigin ? MiuiBeautyRenderFragment.this.mPreProcessBitmap : MiuiBeautyRenderFragment.this.mToBeCompared);
                        MiuiBeautyRenderFragment.this.mPreviewContainer.addView(MiuiBeautyRenderFragment.this.mOriginalImageView, 1);
                        MiuiBeautyRenderFragment.this.mCompareBtn.setSelected(true);
                    } else if (1 == event.getAction() || 3 == event.getAction()) {
                        MiuiBeautyRenderFragment.this.mPreviewContainer.removeView(MiuiBeautyRenderFragment.this.mOriginalImageView);
                        MiuiBeautyRenderFragment.this.mCompareBtn.setSelected(false);
                    }
                    return true;
                }
            });
            return;
        }
        this.mCompareBtn.setVisibility(8);
    }

    public boolean isBeautyParamWorked() {
        return this.mBeautyParameters != null;
    }

    public boolean isComparisonEnable() {
        return this.mCompareBtn.getVisibility() != 8;
    }

    public void previousRecord() {
        if (this.mCurrIterator.hasPrevious()) {
            this.mCurrIterator.previous();
            this.mRecordTail = this.mCurrIterator.previousIndex();
        }
        this.mRenderView.renderPreviousBuffer();
    }

    public void nextRecord() {
        if (this.mCurrIterator.hasNext()) {
            this.mCurrIterator.next();
            this.mRecordTail = this.mCurrIterator.previousIndex();
        }
        this.mRenderView.renderNextBuffer();
    }

    public void clearAllRecords() {
        this.mRenderView.clearAllRecords();
    }

    public void recordCurrent() {
        if (this.mCurrIterator.hasNext()) {
            this.mCurrIterator.next();
            this.mCurrIterator.set(this.mBeautyParameters);
            this.mRecordTail = this.mCurrIterator.previousIndex();
        } else {
            this.mCurrIterator.add(this.mBeautyParameters);
            this.mRecordTail = this.mCurrIterator.previousIndex();
        }
        this.mRenderView.writeRecordFile();
        this.mRenderView.getBmpFromCurrBuffer(this.mToBeCompared);
    }

    public void setOnBeautyProcessListener(OnBeautyProcessListener listener) {
        this.mOnBeautyProcessListener = listener;
    }

    public void setShowProgressDelay(boolean showProgressDelay) {
        this.mShowProgressDelay = showProgressDelay;
    }
}
