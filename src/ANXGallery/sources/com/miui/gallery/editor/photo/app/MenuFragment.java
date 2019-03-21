package com.miui.gallery.editor.photo.app;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Property;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import java.util.List;
import miui.app.ProgressDialog;
import miui.view.animation.CubicEaseOutInterpolator;

public abstract class MenuFragment<F extends RenderFragment, P extends SdkProvider<?, F>> extends EditorFragment {
    private static final Property<View, Float> VIEW_RELATIVE_Y = new Property<View, Float>(Float.class, "relative_y") {
        public void set(View view, Float value) {
            view.setY((((float) ((View) view.getParent()).getHeight()) - ((float) view.getHeight())) + value.floatValue());
        }

        public Float get(View object) {
            return null;
        }
    };
    private static int sAnimAppearDelay;
    private static int sAnimAppearDuration;
    private static int sAnimDisappearDuration;
    private static int sAnimOffset;
    Callbacks mCallbacks;
    private View mDiscardBtn;
    Effect<?> mEffect;
    private Fragment mGestureFragment;
    private OnClickListener mOnClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (v.getId() == R.id.save) {
                MenuFragment.this.notifySave();
            } else if (v.getId() == R.id.discard) {
                MenuFragment.this.notifyDiscard();
            }
        }
    };
    private com.miui.gallery.editor.photo.core.RenderFragment.Callbacks mRenderCallbacks = new com.miui.gallery.editor.photo.core.RenderFragment.Callbacks() {
    };
    private F mRenderFragment;
    private View mSaveBtn;
    protected final P mSdkProvider;

    public interface Callbacks {
        void onDiscard(MenuFragment menuFragment);

        Bitmap onLoadOrigin();

        Bitmap onLoadPreview();

        List<RenderData> onLoadRenderData();

        void onSave(MenuFragment menuFragment);
    }

    public MenuFragment(Effect<P> effect) {
        this.mEffect = effect;
        this.mSdkProvider = SdkManager.INSTANCE.getProvider(effect);
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        ObjectAnimator anim = new ObjectAnimator();
        PropertyValuesHolder y;
        PropertyValuesHolder alpha;
        if (enter) {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) sAnimOffset, 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) sAnimAppearDuration);
            anim.setStartDelay((long) sAnimAppearDelay);
        } else {
            y = PropertyValuesHolder.ofFloat(VIEW_RELATIVE_Y, new float[]{0.0f, (float) sAnimOffset});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) sAnimDisappearDuration);
        }
        anim.setInterpolator(new CubicEaseOutInterpolator());
        return anim;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mRenderFragment = (RenderFragment) getFragmentManager().getFragment(getArguments(), "MenuFragment:display_fragment");
        this.mGestureFragment = getFragmentManager().getFragment(getArguments(), "MenuFragment:gesture_fragment");
        if (sAnimOffset == 0) {
            sAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_enter_sub_editor_sub_menu_offset);
        }
        if (sAnimAppearDuration == 0) {
            sAnimAppearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_appear_duration);
        }
        if (sAnimDisappearDuration == 0) {
            sAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_disappear_duration);
        }
        if (sAnimAppearDelay == 0) {
            sAnimAppearDelay = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_sub_menu_appear_delay);
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        view.setAlpha(0.0f);
        this.mSaveBtn = view.findViewById(R.id.save);
        if (this.mSaveBtn != null) {
            this.mSaveBtn.setOnClickListener(this.mOnClickListener);
        }
        this.mDiscardBtn = view.findViewById(R.id.discard);
        if (this.mDiscardBtn != null) {
            this.mDiscardBtn.setOnClickListener(this.mOnClickListener);
        }
        this.mRenderFragment.setBitmap(getPreview());
        FragmentTransaction ft = getFragmentManager().beginTransaction();
        ft.attach(this.mRenderFragment);
        if (this.mGestureFragment != null) {
            ft.attach(this.mGestureFragment);
        }
        ft.commit();
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (!getFragmentManager().isDestroyed()) {
            FragmentTransaction ft = getFragmentManager().beginTransaction();
            ft.detach(this.mRenderFragment);
            if (this.mGestureFragment != null) {
                ft.detach(this.mGestureFragment);
            }
            ft.commit();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.mRenderFragment = null;
    }

    F createRenderFragment() {
        return this.mSdkProvider.createFragment();
    }

    protected Fragment createGestureFragment() {
        return null;
    }

    protected final Bitmap getPreview() {
        return this.mCallbacks.onLoadPreview();
    }

    protected final Bitmap decodeOrigin() {
        return this.mCallbacks.onLoadOrigin();
    }

    protected final List<RenderData> getPreRenderData() {
        return this.mCallbacks.onLoadRenderData();
    }

    protected final F getRenderFragment() {
        return this.mRenderFragment;
    }

    protected final Fragment getGestureFragment() {
        return this.mGestureFragment;
    }

    protected void notifyDiscard() {
        this.mCallbacks.onDiscard(this);
    }

    protected void notifySave() {
        new Handler().postDelayed(new Runnable() {
            public void run() {
                if (MenuFragment.this.isAdded()) {
                    MenuFragment.this.showProcessDialog();
                }
            }
        }, 1000);
        this.mCallbacks.onSave(this);
    }

    protected final ProgressDialog genProgressDialog(String message) {
        ProgressDialog progressDialog = new ProgressDialog(getActivity());
        progressDialog.setMessage(message);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setCancelable(false);
        progressDialog.setIndeterminate(true);
        return progressDialog;
    }

    protected void showProcessDialog() {
    }

    protected void hideProcessDialog() {
    }
}
