package com.miui.gallery.widget;

import android.content.Context;
import android.preference.ListPreference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;

public class ValueListPreference extends ListPreference {
    private int mShowWhichAsValue = 0;

    public ValueListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ValueListPreference(Context context) {
        super(context);
    }

    private CharSequence getRealValue() {
        switch (this.mShowWhichAsValue) {
            case 0:
                return getEntry();
            case 1:
                return getValue();
            default:
                return null;
        }
    }

    public void setWhichAsValue(int which) {
        this.mShowWhichAsValue = which;
        notifyChanged();
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        TextView valueView = (TextView) view.findViewById(R.id.value_right);
        if (valueView != null) {
            CharSequence value = getRealValue();
            if (TextUtils.isEmpty(value)) {
                valueView.setVisibility(8);
                return;
            }
            valueView.setText(String.valueOf(value));
            valueView.setVisibility(0);
        }
    }

    protected View onCreateView(ViewGroup parent) {
        return LayoutInflater.from(getContext()).inflate(R.layout.preference_value_list, parent, false);
    }
}
