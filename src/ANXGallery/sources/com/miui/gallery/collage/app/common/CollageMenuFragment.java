package com.miui.gallery.collage.app.common;

import android.app.Fragment;
import android.os.Bundle;
import com.miui.gallery.collage.core.CollagePresenter;

public abstract class CollageMenuFragment<P extends CollagePresenter, R extends CollageRenderFragment> extends Fragment {
    protected P mPresenter;
    private R mRenderFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    public void setPresenter(P presenter) {
        this.mPresenter = presenter;
    }

    public R getRenderFragment() {
        return this.mRenderFragment;
    }

    public void setRenderFragment(CollageRenderFragment collageRenderFragment) {
        this.mRenderFragment = collageRenderFragment;
    }
}
