package com.miui.gallery.search.navigationpage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class NavigationRecommendView extends GridView implements NavigationSectionContentView {
    public NavigationRecommendView(Context context) {
        this(context, null);
    }

    public NavigationRecommendView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NavigationRecommendView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setContentAdapter(NavigationSectionAdapter adapter) {
        setAdapter(adapter);
    }

    public NavigationSectionAdapter getContentAdapter() {
        return getAdapter() == null ? null : (NavigationSectionAdapter) getAdapter();
    }
}
