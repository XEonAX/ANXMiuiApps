package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import com.miui.gallery.R;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.QuadraticEaseInOutInterpolator;

public class SecretTipDialogFragment extends GalleryDialogFragment {
    private OnDismissListener mOnDismissListener;
    private SecretTipDialog mSecretTipDialog;

    private class SecretTipDialog extends Dialog implements OnClickListener {
        private boolean mAnimationCanceled = false;
        private AnimatorSet mAnimatorSet = null;
        private View mContentContainer;
        private AnimatorUpdateListener mContentPaddingUpdateListener = new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                SecretTipDialog.this.mContentContainer.setPadding(0, ((Integer) animation.getAnimatedValue()).intValue(), 0, 0);
            }
        };
        private Button mPositiveBtn;
        private OnClickListener mPositiveListener;
        private View mPressIndicator;

        public SecretTipDialog(Context context) {
            super(context);
        }

        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.secret_tip_dialog);
            this.mContentContainer = SecretTipDialogFragment.this.mSecretTipDialog.findViewById(R.id.content_container);
            this.mPressIndicator = SecretTipDialogFragment.this.mSecretTipDialog.findViewById(R.id.press_indicator);
            this.mPositiveBtn = (Button) findViewById(R.id.positive_btn);
            this.mPositiveBtn.setOnClickListener(this);
            Window window = getWindow();
            LayoutParams lp = window.getAttributes();
            lp.gravity = 80;
            lp.width = -1;
            lp.height = -2;
            window.setAttributes(lp);
        }

        public SecretTipDialog setPositiveButtonOnClickListener(OnClickListener listener) {
            this.mPositiveListener = listener;
            return this;
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.positive_btn /*2131886459*/:
                    if (this.mPositiveListener != null) {
                        this.mPositiveListener.onClick(v);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public void onResume() {
            if (this.mAnimatorSet == null || !this.mAnimatorSet.isPaused()) {
                startAnimation();
            } else {
                this.mAnimatorSet.resume();
            }
        }

        public void onPause() {
            if (this.mAnimatorSet != null && this.mAnimatorSet.isStarted()) {
                this.mAnimatorSet.pause();
            }
        }

        public void stopAnimation() {
            if (this.mAnimatorSet != null) {
                this.mAnimatorSet.cancel();
                this.mAnimatorSet = null;
            }
        }

        public void startAnimation() {
            if (SecretTipDialogFragment.this.getActivity() != null) {
                stopAnimation();
                if (!this.mAnimationCanceled) {
                    if (this.mAnimatorSet == null) {
                        this.mAnimatorSet = loadAnimator();
                    }
                    this.mAnimatorSet.addListener(new AnimatorListenerAdapter() {
                        public void onAnimationCancel(Animator animation) {
                            SecretTipDialog.this.mAnimationCanceled = true;
                        }

                        public void onAnimationEnd(Animator animation) {
                            if (SecretTipDialog.this.mAnimationCanceled) {
                                SecretTipDialog.this.mAnimationCanceled = false;
                            } else if (SecretTipDialogFragment.this.getActivity() != null) {
                                ThreadManager.getMainHandler().postDelayed(new Runnable() {
                                    public void run() {
                                        if (SecretTipDialogFragment.this.getActivity() != null) {
                                            SecretTipDialog.this.startAnimation();
                                        }
                                    }
                                }, (long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_pause3_duration));
                            }
                        }
                    });
                    this.mAnimatorSet.start();
                }
            }
        }

        private AnimatorSet loadAnimator() {
            float scale = SecretTipDialogFragment.this.getResources().getFraction(R.fraction.secret_anim_press_scale, 1, 1);
            View view = this.mPressIndicator;
            r9 = new PropertyValuesHolder[3];
            r9[0] = PropertyValuesHolder.ofFloat("scaleX", new float[]{scale, 1.0f});
            r9[1] = PropertyValuesHolder.ofFloat("scaleY", new float[]{scale, 1.0f});
            r9[2] = PropertyValuesHolder.ofFloat("alpha", new float[]{0.0f, 1.0f});
            ObjectAnimator indicatorPressAnimator = ObjectAnimator.ofPropertyValuesHolder(view, r9);
            indicatorPressAnimator.setInterpolator(new CubicEaseInOutInterpolator());
            indicatorPressAnimator.setDuration((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_press_duration));
            indicatorPressAnimator.setStartDelay((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_pause0_duration));
            int endPadding = SecretTipDialogFragment.this.getResources().getDimensionPixelSize(R.dimen.secret_anim_content_end_top_padding);
            int startPadding = SecretTipDialogFragment.this.getResources().getDimensionPixelSize(R.dimen.secret_anim_content_initial_top_padding);
            ValueAnimator slideDownAnimator = ValueAnimator.ofInt(new int[]{startPadding, endPadding});
            slideDownAnimator.addUpdateListener(this.mContentPaddingUpdateListener);
            slideDownAnimator.setInterpolator(new QuadraticEaseInOutInterpolator());
            slideDownAnimator.setStartDelay((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_pause1_duration));
            slideDownAnimator.setDuration((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_slide_down_duration));
            ValueAnimator slideUpAnimator = ValueAnimator.ofInt(new int[]{endPadding, startPadding});
            slideUpAnimator.addUpdateListener(this.mContentPaddingUpdateListener);
            slideUpAnimator.setInterpolator(new QuadraticEaseInOutInterpolator());
            slideUpAnimator.setStartDelay((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_pause2_duration));
            slideUpAnimator.setDuration((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_slide_up_duration));
            view = this.mPressIndicator;
            r9 = new PropertyValuesHolder[3];
            r9[0] = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f, scale});
            r9[1] = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f, scale});
            r9[2] = PropertyValuesHolder.ofFloat("alpha", new float[]{1.0f, 0.0f});
            ObjectAnimator indicatorReleaseAnimator = ObjectAnimator.ofPropertyValuesHolder(view, r9);
            indicatorReleaseAnimator.setInterpolator(new CubicEaseInOutInterpolator());
            indicatorReleaseAnimator.setDuration((long) SecretTipDialogFragment.this.getResources().getInteger(R.integer.secret_anim_release_duration));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(new Animator[]{indicatorPressAnimator, slideDownAnimator, slideUpAnimator, indicatorReleaseAnimator});
            return animatorSet;
        }
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mSecretTipDialog = new SecretTipDialog(getActivity()).setPositiveButtonOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                SecretTipDialogFragment.this.onDone(SecretTipDialogFragment.this.mSecretTipDialog);
            }
        });
        return this.mSecretTipDialog;
    }

    private void onDone(DialogInterface dialog) {
        if (getActivity() != null) {
            if (this.mSecretTipDialog != null) {
                this.mSecretTipDialog.stopAnimation();
            }
            if (this.mOnDismissListener != null) {
                this.mOnDismissListener.onDismiss(dialog);
            } else {
                dismissAllowingStateLoss();
            }
        }
    }

    public void onResume() {
        super.onResume();
        if (this.mSecretTipDialog != null) {
            this.mSecretTipDialog.onResume();
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mSecretTipDialog != null) {
            this.mSecretTipDialog.onPause();
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        onDone(dialog);
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        onDone(dialog);
    }
}
