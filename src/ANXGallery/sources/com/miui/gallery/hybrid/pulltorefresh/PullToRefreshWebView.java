package com.miui.gallery.hybrid.pulltorefresh;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.AnimationStyle;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Mode;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Orientation;

public class PullToRefreshWebView extends PullToRefreshBase<WebView> {
    public PullToRefreshWebView(Context context) {
        super(context);
    }

    public PullToRefreshWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public PullToRefreshWebView(Context context, Mode mode) {
        super(context, mode);
    }

    public PullToRefreshWebView(Context context, Mode mode, AnimationStyle style) {
        super(context, mode, style);
    }

    public final Orientation getPullToRefreshScrollDirection() {
        return Orientation.VERTICAL;
    }

    protected WebView createRefreshableView(Context context, AttributeSet attrs) {
        return new WebView(context, attrs);
    }

    protected boolean isReadyForPullStart() {
        return ((WebView) this.mRefreshableView).getScrollY() == 0 && !isRefreshing();
    }

    protected boolean isReadyForPullEnd() {
        return ((float) ((WebView) this.mRefreshableView).getScrollY()) >= ((float) Math.floor((double) (((WebView) this.mRefreshableView).getScale() * ((float) ((WebView) this.mRefreshableView).getContentHeight())))) - ((float) ((WebView) this.mRefreshableView).getHeight());
    }

    protected void onPtrRestoreInstanceState(Bundle savedInstanceState) {
        super.onPtrRestoreInstanceState(savedInstanceState);
        ((WebView) this.mRefreshableView).restoreState(savedInstanceState);
    }

    protected void onPtrSaveInstanceState(Bundle saveState) {
        super.onPtrSaveInstanceState(saveState);
        ((WebView) this.mRefreshableView).saveState(saveState);
    }
}
