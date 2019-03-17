package com.xiaomi.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xiaomi.scanner.R;

public class LanguagePairLayout extends LinearLayout {
    private TextView mItemDest;
    private TextView mItemSource;

    public LanguagePairLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemSource = (TextView) findViewById(R.id.pair_source);
        this.mItemDest = (TextView) findViewById(R.id.pair_dest);
    }

    public void initAsItem() {
        LayoutParams selfParams = getLayoutParams();
        selfParams.width = getContext().getResources().getDimensionPixelSize(R.dimen.translation_language_pair_list_width);
        selfParams.height = getContext().getResources().getDimensionPixelSize(R.dimen.translation_language_pair_item_height);
        setLayoutParams(selfParams);
    }

    public void setLanguageEntry(String source, String dest) {
        this.mItemSource.setText(source);
        this.mItemDest.setText(dest);
    }
}
