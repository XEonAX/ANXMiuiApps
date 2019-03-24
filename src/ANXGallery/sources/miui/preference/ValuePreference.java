package miui.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import miui.R;

public class ValuePreference extends Preference {
    private Drawable EA;
    private CharSequence Ex;
    private int Ey;
    private boolean Ez;

    public ValuePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ValuePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.valuePreferenceStyle);
    }

    public ValuePreference(Context context) {
        this(context, null);
    }

    public void setValue(String str) {
        if (!TextUtils.equals(str, this.Ex)) {
            this.Ey = 0;
            this.Ex = str;
            notifyChanged();
        }
    }

    public void setValue(int i) {
        setValue(getContext().getString(i));
        this.Ey = i;
    }

    public int getValueRes() {
        return this.Ey;
    }

    public CharSequence getValue() {
        return this.Ex;
    }

    public boolean isShowRightArrow() {
        return this.Ez;
    }

    public void setShowRightArrow(boolean z) {
        this.Ez = z;
    }

    public void setRightArrowRes(int i) {
        setRightArrowDrawable(getContext().getResources().getDrawable(i));
    }

    public void setRightArrowDrawable(Drawable drawable) {
        if ((drawable == null && this.EA != null) || (drawable != null && this.EA != drawable)) {
            this.EA = drawable;
            setShowRightArrow(drawable != null);
            notifyChanged();
        }
    }

    public Drawable getRightArrowDrawable() {
        return this.EA;
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        TextView textView = (TextView) view.findViewById(R.id.value_right);
        if (textView != null) {
            CharSequence value = getValue();
            if (TextUtils.isEmpty(value)) {
                textView.setVisibility(8);
            } else {
                textView.setText(value);
                textView.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) view.findViewById(com.miui.internal.R.id.arrow_right);
        if (imageView != null) {
            imageView.setVisibility(this.Ez ? 0 : 8);
            if (this.Ez) {
                imageView.setVisibility(0);
                if (this.EA != null) {
                    imageView.setImageDrawable(this.EA);
                    return;
                }
                return;
            }
            imageView.setVisibility(8);
        }
    }
}
