package com.miui.gallery.editor.photo.app.doodle;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.doodle.PaintSelectView.PaintSizeChangeListener;

public class DoodleGesFragment extends Fragment {
    private int mCurrentColor;
    private PaintSelectView mPaintSelectView;
    private PaintSizeChangeListener mPaintSizeChangeListener;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.doodle_ges_fragment, container, false);
        this.mPaintSelectView = (PaintSelectView) view.findViewById(R.id.paint_select_view);
        return view;
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mPaintSelectView.setPaintSizeChangeListener(this.mPaintSizeChangeListener);
        this.mPaintSelectView.setPaintColor(this.mCurrentColor);
        this.mPaintSelectView.postDelayed(new Runnable() {
            public void run() {
                DoodleGesFragment.this.mPaintSelectView.expansionPaint(true);
                DoodleGesFragment.this.mPaintSelectView.expansionPaint(false, 2000);
            }
        }, 100);
    }

    public void setPaintSizeChangeListener(PaintSizeChangeListener paintSizeChangeListener) {
        this.mPaintSizeChangeListener = paintSizeChangeListener;
        if (this.mPaintSelectView != null) {
            this.mPaintSelectView.setPaintSizeChangeListener(this.mPaintSizeChangeListener);
        }
    }

    public void setPaintColor(int color) {
        this.mCurrentColor = color;
        if (this.mPaintSelectView != null) {
            this.mPaintSelectView.setPaintColor(color);
        }
    }
}
