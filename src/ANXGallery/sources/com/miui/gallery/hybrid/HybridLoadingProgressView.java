package com.miui.gallery.hybrid;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.util.ToastUtils;

public class HybridLoadingProgressView extends LinearLayout {
    private Button mButton;
    private int mErrorResId;
    private HybridOnRefreshListener mOnRefreshListener;
    private ProgressBar mProgressBar;
    private CharSequence mText;
    private int mTextResId;
    private TextView mTextView;

    public interface HybridOnRefreshListener {
        void onRefresh();
    }

    public enum HybridLoadingState {
        NETWORK_ERROR(R.string.hybrid_network_unavaliable),
        SERVICE_ERROR(R.string.hybrid_service_unavailiable),
        DATA_ERROR(R.string.hybrid_data_error),
        LOCATION_ERROR(R.string.hybrid_locating_fail),
        OK(17039370);
        
        private int mDefaultDescription;

        private HybridLoadingState(int defaultDesc) {
            this.mDefaultDescription = defaultDesc;
        }

        public int getDescription() {
            return this.mDefaultDescription;
        }
    }

    public HybridLoadingProgressView(Context context) {
        this(context, null);
    }

    public HybridLoadingProgressView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.hybrid_loading_progress, this, true);
        this.mProgressBar = (ProgressBar) findViewById(R.id.progress);
        this.mTextView = (TextView) findViewById(R.id.text);
        this.mButton = (Button) findViewById(R.id.button);
    }

    private void updateStyle(boolean hasData) {
        if (hasData) {
            getLayoutParams().height = -2;
            setBackgroundResource(R.drawable.hybrid_loading_view_bg);
            return;
        }
        getLayoutParams().height = -1;
        setBackground(null);
    }

    public void onStartLoading(boolean hasData) {
        updateStyle(hasData);
        this.mProgressBar.setVisibility(0);
        this.mTextView.setVisibility(8);
        this.mButton.setVisibility(8);
        showView(this);
    }

    public void onStopLoading(boolean hasData) {
        updateStyle(hasData);
        if (hasData) {
            hideView(this);
            return;
        }
        showView(this);
        this.mProgressBar.setVisibility(8);
        if (this.mTextResId != 0) {
            this.mTextView.setVisibility(0);
            this.mTextView.setText(this.mTextResId);
        } else if (!TextUtils.isEmpty(this.mText)) {
            this.mTextView.setVisibility(0);
            this.mTextView.setText(this.mText);
        }
        this.mTextView.setCompoundDrawablesWithIntrinsicBounds(null, getContext().getResources().getDrawable(R.drawable.hybrid_loading_list_empty), null, null);
        this.mButton.setVisibility(8);
    }

    public void onInit(boolean hasData, boolean isLoading, HybridOnRefreshListener refreshListener) {
        this.mOnRefreshListener = refreshListener;
        updateStyle(hasData);
        if (isLoading) {
            setVisibility(0);
            this.mProgressBar.setVisibility(0);
            this.mTextView.setVisibility(8);
            this.mButton.setVisibility(8);
        } else if (hasData) {
            setVisibility(8);
        } else {
            setVisibility(0);
            this.mProgressBar.setVisibility(8);
            this.mButton.setVisibility(8);
        }
    }

    private void showView(View view) {
        if (view != null && view.getVisibility() == 8) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.appear));
            view.setVisibility(0);
        }
    }

    private void hideView(View view) {
        if (view != null && view.getVisibility() == 0) {
            if (view.isShown()) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.disappear));
            }
            view.setVisibility(8);
        }
    }

    public void setEmptyText(int emptyRes) {
        this.mTextResId = emptyRes;
    }

    public void setErrorText(int errorRes) {
        this.mErrorResId = errorRes;
    }

    public void onError(boolean hasData, final HybridLoadingState state, String description) {
        CharSequence errorDescription;
        if (this.mErrorResId > 0) {
            errorDescription = getContext().getResources().getString(this.mErrorResId);
        } else if (TextUtils.isEmpty(description)) {
            errorDescription = getContext().getResources().getString(state.getDescription());
        } else {
            Object errorDescription2 = description;
        }
        updateStyle(hasData);
        if (hasData) {
            hideView(this);
            ToastUtils.makeText(getContext(), errorDescription2);
            return;
        }
        showView(this);
        this.mProgressBar.setVisibility(8);
        this.mTextView.setVisibility(0);
        this.mTextView.setText(errorDescription2);
        this.mButton.setVisibility(0);
        if (state == HybridLoadingState.NETWORK_ERROR) {
            this.mTextView.setCompoundDrawablesWithIntrinsicBounds(null, getContext().getResources().getDrawable(R.drawable.hybrid_loading_network_error), null, null);
            this.mButton.setVisibility(0);
            this.mButton.setText(R.string.hybrid_check_network);
        } else {
            this.mTextView.setCompoundDrawablesWithIntrinsicBounds(null, getContext().getResources().getDrawable(R.drawable.hybrid_loading_list_empty), null, null);
            this.mButton.setText(R.string.hybrid_try_again);
            if (this.mOnRefreshListener == null) {
                this.mButton.setVisibility(8);
            }
        }
        this.mButton.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (state == HybridLoadingState.NETWORK_ERROR) {
                    Intent intent = new Intent("android.settings.SETTINGS");
                    intent.addFlags(268435456);
                    HybridLoadingProgressView.this.getContext().startActivity(intent);
                } else if (HybridLoadingProgressView.this.mOnRefreshListener != null) {
                    HybridLoadingProgressView.this.mOnRefreshListener.onRefresh();
                }
            }
        });
    }

    public void setIndeterminate(boolean indeterminate) {
        if (this.mProgressBar.isIndeterminate() != indeterminate) {
            LayoutParams params = (LayoutParams) this.mProgressBar.getLayoutParams();
            if (indeterminate) {
                params.width = -2;
                params.height = -2;
                params.gravity = 17;
            } else {
                params.width = -1;
                params.height = (int) TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics());
                params.gravity = 48;
            }
            this.mProgressBar.setLayoutParams(params);
            this.mProgressBar.setIndeterminate(indeterminate);
        }
    }

    public void setProgress(int progress) {
        this.mProgressBar.setProgress(progress);
    }

    public int getProgress() {
        return this.mProgressBar.getProgress();
    }
}
