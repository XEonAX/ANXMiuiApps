package com.miui.gallery.movie.ui.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.miui.gallery.R;
import miui.view.animation.CubicEaseOutInterpolator;

public class DownloadView extends RelativeLayout {
    private ImageView mImageView;
    private ObjectAnimator mRotationAnimal;

    private abstract class MyAnimalListener implements AnimatorListener {
        private MyAnimalListener() {
        }

        /* synthetic */ MyAnimalListener(DownloadView x0, AnonymousClass1 x1) {
            this();
        }

        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    public DownloadView(Context context) {
        super(context);
        initView();
    }

    public DownloadView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView();
    }

    private void initView() {
        this.mImageView = new ImageView(getContext());
        addView(this.mImageView, -2, -2);
        ((LayoutParams) this.mImageView.getLayoutParams()).addRule(13);
    }

    private void doDownloading() {
        this.mImageView.setImageResource(R.drawable.movie_icon_downloading);
        rotation();
    }

    public void endDownloading() {
        hide(this.mImageView, new MyAnimalListener() {
            public void onAnimationEnd(Animator animator) {
                DownloadView.this.show(DownloadView.this.mImageView, new MyAnimalListener() {
                    {
                        DownloadView downloadView = DownloadView.this;
                    }

                    public void onAnimationEnd(Animator animator) {
                        DownloadView.this.hide(DownloadView.this, null);
                    }

                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        DownloadView.this.mImageView.setImageResource(R.drawable.movie_icon_downloaded);
                    }
                });
            }
        });
    }

    public void clearAnimation() {
        super.clearAnimation();
        if (this.mRotationAnimal != null) {
            this.mRotationAnimal.end();
            this.mRotationAnimal = null;
        }
        this.mImageView.clearAnimation();
    }

    public void setStateImage(int downloadState) {
        clearAnimation();
        switch (downloadState) {
            case 0:
                setVisibility(0);
                endDownloading();
                return;
            case 17:
                setVisibility(8);
                return;
            case 18:
                setVisibility(0);
                doDownloading();
                return;
            case 19:
                setVisibility(0);
                this.mImageView.setImageResource(R.drawable.movie_icon_download);
                return;
            case 20:
                setVisibility(0);
                this.mImageView.setImageResource(R.drawable.movie_icon_download);
                return;
            default:
                return;
        }
    }

    private void show(View view, AnimatorListener listener) {
        PropertyValuesHolder valuesHolderAlpha = PropertyValuesHolder.ofFloat("alpha", new float[]{0.0f, 1.0f});
        PropertyValuesHolder valuesHolderScaleX = PropertyValuesHolder.ofFloat("scaleX", new float[]{0.6f, 1.0f});
        PropertyValuesHolder valuesHolderScaleY = PropertyValuesHolder.ofFloat("scaleY", new float[]{0.6f, 1.0f});
        ObjectAnimator objectAnimator = ObjectAnimator.ofPropertyValuesHolder(view, new PropertyValuesHolder[]{valuesHolderAlpha, valuesHolderScaleX, valuesHolderScaleY});
        if (listener != null) {
            objectAnimator.addListener(listener);
        }
        objectAnimator.setInterpolator(new CubicEaseOutInterpolator());
        objectAnimator.setDuration(350).start();
    }

    private void hide(View view, AnimatorListener listener) {
        PropertyValuesHolder valuesHolderAlpha = PropertyValuesHolder.ofFloat("alpha", new float[]{1.0f, 0.0f});
        PropertyValuesHolder valuesHolderScaleX = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f, 0.6f});
        PropertyValuesHolder valuesHolderScaleY = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f, 0.6f});
        ObjectAnimator objectAnimator = ObjectAnimator.ofPropertyValuesHolder(view, new PropertyValuesHolder[]{valuesHolderAlpha, valuesHolderScaleX, valuesHolderScaleY});
        if (listener != null) {
            objectAnimator.addListener(listener);
        }
        objectAnimator.setInterpolator(new CubicEaseOutInterpolator());
        objectAnimator.setDuration(250).start();
    }

    private void rotation() {
        if (this.mRotationAnimal != null) {
            this.mRotationAnimal.end();
        }
        this.mRotationAnimal = ObjectAnimator.ofFloat(this.mImageView, "rotation", new float[]{0.0f, 360.0f});
        this.mRotationAnimal.setRepeatCount(-1);
        this.mRotationAnimal.setInterpolator(new LinearInterpolator());
        this.mRotationAnimal.setDuration(1000);
        this.mRotationAnimal.start();
    }
}
