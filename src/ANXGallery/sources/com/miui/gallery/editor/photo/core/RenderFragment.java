package com.miui.gallery.editor.photo.core;

import android.app.Activity;
import android.app.Fragment;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.miui.gallery.editor.photo.utils.Attachable;
import java.util.List;

public abstract class RenderFragment extends Fragment {
    private Bitmap mBitmap;
    private Effect<?> mEffect;

    public interface Callbacks {
    }

    public abstract void clear();

    public abstract boolean isEmpty();

    protected abstract RenderData onExport();

    protected abstract List<String> onSample();

    public void setArguments(Bundle args) {
        Bundle pre = getArguments();
        if (pre == null || pre.isEmpty()) {
            super.setArguments(args);
        } else {
            pre.putAll(args);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mEffect == null) {
            this.mEffect = Effect.values()[getArguments().getInt("RenderFragment:effect")];
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Fragment parent = getParentFragment();
        if (parent instanceof Attachable) {
            ((Attachable) parent).attach(this);
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mBitmap = null;
        clear();
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public boolean isSupportBitmap(Bitmap bitmap) {
        return true;
    }

    public int getUnSupportStringRes() {
        return 0;
    }

    public final RenderData export() {
        if (isEmpty()) {
            return null;
        }
        RenderData data = onExport();
        data.mType = this.mEffect;
        return data;
    }

    public final List<String> sample() {
        return onSample();
    }
}
