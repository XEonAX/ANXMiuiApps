package com.miui.gallery.search.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.miui.gallery.R;
import com.miui.gallery.search.hint.SearchBarHintAdapter;
import com.miui.gallery.search.widget.bannerView.BannerView;
import com.miui.gallery.search.widget.bannerView.ILoopController;

public class BannerSearchBar extends LinearLayout implements OnClickListener {
    private BannerView mBannerView;
    private OnHintClickListener mOnHintClickListener;

    public interface OnHintClickListener {
        void onHintClicked(BannerSearchBar bannerSearchBar, int i);
    }

    public BannerSearchBar(Context context) {
        this(context, null);
    }

    public BannerSearchBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BannerSearchBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    public void setOnHintClickListener(OnHintClickListener onHintClickListener) {
        this.mOnHintClickListener = onHintClickListener;
    }

    protected void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.banner_search_bar_layout, this);
        this.mBannerView = (BannerView) findViewById(R.id.banner_view);
        setOnClickListener(this);
    }

    public void onClick(View v) {
        if (this.mOnHintClickListener != null) {
            this.mOnHintClickListener.onHintClicked(this, getLooperController().getCurrentPosition());
        }
    }

    public void setHintAdapter(SearchBarHintAdapter adapter) {
        if (this.mBannerView == null) {
            throw new RuntimeException("No banner view found");
        }
        this.mBannerView.setAdapter(adapter);
    }

    public ILoopController getLooperController() {
        if (this.mBannerView != null) {
            return this.mBannerView;
        }
        throw new RuntimeException("No looper controller found");
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return true;
    }
}
