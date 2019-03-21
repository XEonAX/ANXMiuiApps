package com.miui.gallery.share;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import java.lang.ref.WeakReference;

public class DescriptPreference extends Preference {
    private CharSequence mDescriptDetail;
    private int mDescriptDetailVisibility;
    private CharSequence mDescriptTitle;
    private int mDescriptTitleVisibility;
    private WeakReference<View> mRootRef;

    public DescriptPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DescriptPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDescriptTitleVisibility = 0;
        this.mDescriptDetailVisibility = 8;
        setLayoutResource(R.layout.share_album_public_descript_text);
        setPersistent(false);
    }

    protected void onBindView(View v) {
        this.mRootRef = new WeakReference(v);
        refresh();
    }

    public void setDescriptTitle(int resId) {
        setDescriptTitle(getContext().getString(resId));
    }

    public void setDescriptTitle(CharSequence text) {
        this.mDescriptTitle = text;
    }

    public void setDescriptDetail(CharSequence text) {
        this.mDescriptDetail = text;
    }

    public void setDescriptDetailVisibility(int visibility) {
        this.mDescriptDetailVisibility = visibility;
    }

    private void refresh() {
        if (this.mRootRef != null) {
            View root = (View) this.mRootRef.get();
            if (root != null) {
                TextView titleView = (TextView) root.findViewById(R.id.descript_title);
                titleView.setVisibility(this.mDescriptTitleVisibility);
                titleView.setText(this.mDescriptTitle);
                TextView detailView = (TextView) root.findViewById(R.id.descript_detail);
                detailView.setVisibility(this.mDescriptDetailVisibility);
                detailView.setText(this.mDescriptDetail);
            }
        }
    }
}
