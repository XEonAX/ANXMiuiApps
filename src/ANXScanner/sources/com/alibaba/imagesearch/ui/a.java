package com.alibaba.imagesearch.ui;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.imagesearch.utils.f;
import com.alibaba.wireless.security.SecExceptionCode;

public class a extends Dialog {
    private ViewGroup a;
    private ImageView b;
    private TextView c;
    private View d;
    private ViewGroup e;
    private Animation f;
    private LayoutAnimationController g;
    private Activity h;

    public a(Activity activity, OnClickListener onClickListener) {
        super(activity, f.a(activity, "style", "com_taobao_tae_sdk_pailitao_LoadingDialog"));
        this.h = activity;
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        a(onClickListener);
    }

    private Animation a(int i, int i2, int i3, Interpolator interpolator) {
        Animation rotateAnimation = new RotateAnimation((float) i, (float) i2, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration((long) i3);
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setInterpolator(interpolator);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
        rotateAnimation.setStartTime(-1);
        return rotateAnimation;
    }

    private void a(OnClickListener onClickListener) {
        setContentView(f.a(this.h, "layout", "com_alibaba_imagesearch_loading_dialog"));
        this.f = AnimationUtils.loadAnimation(getContext(), f.a(this.h, "anim", "com_alibaba_imagesearch_anim_loading"));
        this.g = new LayoutAnimationController(this.f);
        this.g.setDelay(0.4f);
        this.g.setOrder(2);
        this.e = (ViewGroup) findViewById(f.a(this.h, AlibcConstants.ID, "feis_goods_container"));
        this.a = (ViewGroup) findViewById(f.a(this.h, AlibcConstants.ID, "feis_loading_layout"));
        this.b = (ImageView) findViewById(f.a(this.h, AlibcConstants.ID, "feis_loading_progress"));
        this.c = (TextView) findViewById(f.a(this.h, AlibcConstants.ID, "feis_loading_tip"));
        this.d = findViewById(f.a(this.h, AlibcConstants.ID, "feis_loading_cancel"));
        this.d.setOnClickListener(onClickListener);
    }

    public void setTitle(int i) {
        setTitle(getContext().getString(i));
    }

    public void setTitle(CharSequence charSequence) {
        this.c.setText(charSequence);
    }

    public void show() {
        super.show();
        this.b.startAnimation(a(0, 360, SecExceptionCode.SEC_ERROR_PKG_VALID, new LinearInterpolator()));
        this.e.setVisibility(0);
        this.e.setLayoutAnimation(this.g);
    }
}
