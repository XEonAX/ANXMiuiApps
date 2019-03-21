package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import miui.view.animation.CubicEaseOutInterpolator;

public class DownloadView extends LinearLayout {
    private ImageView mImageView;
    private ObjectAnimator mRotationAnimal;
    private TextView mTextView;

    public DownloadView(Context context) {
        super(context);
        initView(context);
    }

    public DownloadView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    private void initView(Context context) {
        inflate(context, R.layout.photo_editor_text_download_view, this);
        this.mTextView = (TextView) findViewById(R.id.text_item);
        this.mImageView = (ImageView) findViewById(R.id.img_item);
    }

    private void doDownloading() {
        this.mImageView.setImageResource(R.drawable.photo_editor_icon_downloading);
        rotation();
    }

    public void setText(CharSequence text) {
        this.mTextView.setText(text);
    }

    private void endDownloading() {
        hide(this.mImageView, new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                DownloadView.this.show(DownloadView.this.mImageView, new AnimatorListenerAdapter() {
                    public void onAnimationEnd(Animator animation) {
                        super.onAnimationEnd(animation);
                        DownloadView.this.hide(DownloadView.this, null);
                        DownloadView.this.mTextView.setText("");
                    }

                    public void onAnimationStart(Animator animation) {
                        super.onAnimationStart(animation);
                        DownloadView.this.mImageView.setImageResource(R.drawable.video_editor_icon_downloaded);
                    }
                });
            }
        });
    }

    public void clearAnimator() {
        if (this.mRotationAnimal != null) {
            this.mRotationAnimal.end();
            this.mRotationAnimal = null;
        }
        this.mImageView.animate().cancel();
    }

    public void setStateImage(int downloadState) {
        clearAnimator();
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
            case 20:
                setVisibility(0);
                this.mImageView.setImageResource(R.drawable.video_editor_icon_download);
                return;
            default:
                return;
        }
    }

    private void show(View view, AnimatorListenerAdapter listener) {
        view.setAlpha(0.0f);
        view.setScaleX(0.6f);
        view.setScaleY(0.6f);
        view.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(350).setListener(listener).setInterpolator(new CubicEaseOutInterpolator());
    }

    private void hide(View view, AnimatorListenerAdapter listener) {
        view.setAlpha(1.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.animate().alpha(0.0f).scaleX(0.6f).scaleY(0.6f).setDuration(250).setListener(listener).setInterpolator(new CubicEaseOutInterpolator());
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
