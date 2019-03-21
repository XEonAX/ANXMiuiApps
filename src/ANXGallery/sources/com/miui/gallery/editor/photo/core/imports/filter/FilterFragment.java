package com.miui.gallery.editor.photo.core.imports.filter;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.opengl.GLSurfaceView;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.GLFragment;
import com.miui.gallery.editor.photo.core.GLFragment.GLContext;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.imports.filter.render.EmptyGPUImageFilter;
import com.miui.gallery.editor.photo.core.imports.filter.render.GPUImage;
import com.miui.gallery.editor.photo.core.imports.filter.render.IFilterEmptyValidate;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class FilterFragment extends AbstractEffectFragment implements Callback, GLFragment {
    private Bitmap mBeautyBitmap;
    private BeautyTask mBeautyTask;
    private Button mCompareBtn;
    private List<Metadata> mEffects = new ArrayList();
    private FilterContext mFilterContext = new FilterContext(this, null);
    private View mFloatView;
    private GLSurfaceView mGLSurfaceView;
    private GPUImage mGPUImage;
    private boolean mNeedDoRender;
    private boolean mShowFloatView;

    private class BeautyTask extends AsyncTask<Bitmap, Void, Bitmap> {
        private BeautyTask() {
        }

        /* synthetic */ BeautyTask(FilterFragment x0, AnonymousClass1 x1) {
            this();
        }

        protected Bitmap doInBackground(Bitmap... params) {
            Bitmap bitmap = params[0].copy(Config.ARGB_8888, true);
            ArcsoftBeautyJni.smartBeauty(bitmap);
            return bitmap;
        }

        protected void onPostExecute(Bitmap bitmap) {
            FilterFragment.this.mBeautyBitmap = bitmap;
            FilterFragment.this.doRenderAfterBeauty();
        }
    }

    private class FilterContext extends GLContext {
        private FilterContext() {
        }

        /* synthetic */ FilterContext(FilterFragment x0, AnonymousClass1 x1) {
            this();
        }

        void surfaceCreated() {
            super.performCreated();
        }

        void surfaceDestroyed() {
            super.performDestroyed();
        }

        protected void onResume() {
        }

        protected void onPause() {
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.filter_effect_fragment, container, false);
        this.mGLSurfaceView = (GLSurfaceView) view.findViewById(R.id.gl_surface_view);
        float bgColorComponent = Float.parseFloat(getString(R.string.filter_bg_color_component));
        this.mGPUImage = new GPUImage(getActivity());
        this.mGPUImage.setBackgroundColor(bgColorComponent, bgColorComponent, bgColorComponent);
        this.mGPUImage.setImage(getBitmap());
        this.mGPUImage.setGLSurfaceView(this.mGLSurfaceView);
        this.mGLSurfaceView.postDelayed(new Runnable() {
            public void run() {
                FilterFragment.this.mFilterContext.surfaceCreated();
            }
        }, 1000);
        this.mFloatView = inflater.inflate(R.layout.editor_compare_btn, null, false);
        this.mCompareBtn = (Button) this.mFloatView.findViewById(R.id.compare_btn);
        createFloatView();
        if (this.mNeedDoRender) {
            doRender();
        }
        return view;
    }

    private void createFloatView() {
        if (!this.mShowFloatView) {
            WindowManager wm = (WindowManager) getActivity().getSystemService("window");
            LayoutParams params = new LayoutParams();
            params.type = 1002;
            params.format = 1;
            params.flags = 40;
            params.width = -1;
            params.height = -2;
            params.gravity = 48;
            wm.addView(this.mFloatView, params);
            this.mShowFloatView = true;
        }
    }

    private void removeFloatView() {
        if (this.mShowFloatView) {
            ((WindowManager) getActivity().getSystemService("window")).removeView(this.mFloatView);
            this.mShowFloatView = false;
        }
    }

    public void onResume() {
        super.onResume();
        createFloatView();
    }

    public void onPause() {
        super.onPause();
        removeFloatView();
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mBeautyTask != null) {
            this.mBeautyTask.cancel(true);
        }
    }

    public void enableComparison(boolean enable) {
        if (enable) {
            this.mCompareBtn.setVisibility(0);
            this.mCompareBtn.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == 0) {
                        FilterFragment.this.renderOriginal();
                        FilterFragment.this.mCompareBtn.setSelected(true);
                    } else if (1 == event.getAction() || 3 == event.getAction()) {
                        FilterFragment.this.render();
                        FilterFragment.this.mCompareBtn.setSelected(false);
                    }
                    return true;
                }
            });
            return;
        }
        this.mCompareBtn.setVisibility(4);
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
        if (this.mGPUImage != null) {
            this.mGPUImage.setImage(bitmap);
        }
    }

    public void add(Metadata effect, Object param) {
        if (effect instanceof Renderable) {
            this.mEffects.add(effect);
        }
    }

    public void remove(Metadata effect) {
        if (effect instanceof Renderable) {
            int index = this.mEffects.indexOf(effect);
            if (index >= 0) {
                this.mEffects.remove(index);
            }
        }
    }

    private void renderOriginal() {
        this.mGPUImage.setImage(getBitmap());
        this.mGPUImage.setFilter(new EmptyGPUImageFilter());
        this.mGPUImage.requestRender();
    }

    public void render() {
        if (this.mGPUImage == null) {
            this.mNeedDoRender = true;
        } else {
            doRender();
        }
    }

    private void doRender() {
        FilterRenderData renderData = new FilterRenderData(this.mEffects);
        if (!renderData.isPortraitBeauty() || !ArcsoftBeautyJni.idBeautyAvailable()) {
            BaseOriginalFilter filter = renderData.instantiate();
            this.mGPUImage.setImage(getBitmap());
            this.mGPUImage.setFilter(filter);
            this.mGPUImage.requestRender();
            boolean changed = true;
            if (filter instanceof IFilterEmptyValidate) {
                if (((IFilterEmptyValidate) filter).isEmpty()) {
                    changed = false;
                } else {
                    changed = true;
                }
            }
            enableComparison(changed);
        } else if (this.mBeautyBitmap == null) {
            this.mBeautyTask = new BeautyTask(this, null);
            this.mBeautyTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Bitmap[]{getBitmap()});
        } else {
            doRenderAfterBeauty();
        }
    }

    private void doRenderAfterBeauty() {
        FilterRenderData renderData = new FilterRenderData(this.mEffects);
        if (isAdded() && renderData.isPortraitBeauty()) {
            BaseOriginalFilter filter = renderData.instantiate();
            this.mGPUImage.setImage(this.mBeautyBitmap);
            this.mGPUImage.setFilter(filter);
            this.mGPUImage.requestRender();
            enableComparison(!(filter instanceof EmptyGPUImageFilter));
        }
    }

    public boolean isEmpty() {
        return new FilterRenderData(this.mEffects).instantiate() instanceof EmptyGPUImageFilter;
    }

    protected List<String> onSample() {
        List<String> values = new ArrayList();
        if (!(this.mEffects == null || this.mEffects.isEmpty())) {
            for (Metadata data : this.mEffects) {
                values.add("V9-" + data.name);
            }
        }
        return values;
    }

    protected RenderData onExport() {
        return new FilterRenderData(this.mEffects);
    }

    public void clear() {
        this.mEffects.clear();
    }

    public GLContext getGLContext() {
        return this.mFilterContext;
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.d("FilterFragment:AbstractEffectFragment", "surfaceCreated");
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i1, int i2) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mFilterContext.surfaceDestroyed();
    }
}
