package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import miui.util.AttributeResolver;

public class FilterSortView extends LinearLayout {

    public static class TabView extends LinearLayout {
        private boolean Tb;
        private boolean Tc;
        private FilterSortView Td;
        private ImageView sO;
        private TextView vy;

        public TabView(Context context) {
            this(context, null);
        }

        public TabView(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public TabView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            LayoutInflater.from(context).inflate(R.layout.filter_sort_tab_view, this, true);
            this.vy = (TextView) findViewById(16908308);
            this.sO = (ImageView) findViewById(R.id.arrow);
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FilterSortView, i, 0);
                CharSequence string = obtainStyledAttributes.getString(R.styleable.FilterSortView_android_text);
                boolean z = obtainStyledAttributes.getBoolean(R.styleable.FilterSortView_descending, true);
                obtainStyledAttributes.recycle();
                a(string, z);
            }
        }

        private void a(CharSequence charSequence, boolean z) {
            setGravity(17);
            if (getBackground() == null) {
                Drawable resolveDrawable = AttributeResolver.resolveDrawable(getContext(), R.attr.filterSortTabViewBackground);
                if (resolveDrawable == null) {
                    resolveDrawable = getResources().getDrawable(R.drawable.filter_sort_tab_view_bg_light);
                }
                setBackground(resolveDrawable);
            }
            this.vy.setText(charSequence);
            w(z);
        }

        private void v(boolean z) {
            this.Td = (FilterSortView) getParent();
            if (z && this.Td != null) {
                int childCount = this.Td.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    TabView tabView = (TabView) this.Td.getChildAt(i);
                    if (tabView != this && tabView.Tb) {
                        tabView.v(false);
                    }
                }
            }
            this.Tb = z;
            this.vy.setSelected(z);
            this.sO.setSelected(z);
        }

        private void w(boolean z) {
            this.Tc = z;
            if (z) {
                this.sO.setRotationX(0.0f);
            } else {
                this.sO.setRotationX(180.0f);
            }
        }

        public boolean isDescending() {
            return this.Tc;
        }

        public void setOnClickListener(final OnClickListener onClickListener) {
            super.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (TabView.this.Tb) {
                        TabView.this.w(true ^ TabView.this.Tc);
                    } else {
                        TabView.this.v(true);
                    }
                    onClickListener.onClick(view);
                }
            });
        }
    }

    public FilterSortView(Context context) {
        super(context);
    }

    public FilterSortView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FilterSortView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TabView addTab(CharSequence charSequence) {
        return addTab(charSequence, true);
    }

    public TabView addTab(CharSequence charSequence, boolean z) {
        View tabView = new TabView(getContext());
        Drawable resolveDrawable = AttributeResolver.resolveDrawable(getContext(), R.attr.filterSortTabViewBackground);
        if (resolveDrawable == null) {
            resolveDrawable = getResources().getDrawable(R.drawable.filter_sort_tab_view_bg_light);
        }
        tabView.setBackground(resolveDrawable);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.weight = 1.0f;
        addView(tabView, layoutParams);
        tabView.a(charSequence, z);
        return tabView;
    }

    public void setFilteredTab(TabView tabView) {
        tabView.v(true);
    }
}
