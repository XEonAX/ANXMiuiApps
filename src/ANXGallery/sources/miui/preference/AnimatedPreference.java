package miui.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.miui.internal.R;
import miui.widget.AnimatedImageView;

public class AnimatedPreference extends CheckBoxPreference {
    private static final int Ek = 0;
    private static final int El = 1;
    private static final int Em = 2;
    private static final int En = 4;
    private int Eo;
    private Drawable Ep;
    private Drawable Eq;

    public AnimatedPreference(Context context) {
        this(context, null);
    }

    public AnimatedPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Eo = 0;
        setWidgetLayoutResource(R.layout.preference_widget_animated);
    }

    public AnimatedPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Eo = 0;
        setWidgetLayoutResource(R.layout.preference_widget_animated);
    }

    public void onBindView(View view) {
        super.onBindView(view);
        AnimatedImageView animatedImageView = (AnimatedImageView) view.findViewById(R.id.animate);
        ImageView imageView = (ImageView) view.findViewById(R.id.animate_finish);
        if (this.Ep != null) {
            animatedImageView.setImageDrawable(this.Ep);
        }
        if (this.Eq != null) {
            imageView.setImageDrawable(this.Eq);
        }
        int i = 8;
        animatedImageView.setVisibility(isAnimateVisible() ? 0 : 8);
        animatedImageView.setAnimating(isAnimating());
        if (isAnimateFinish()) {
            i = 0;
        }
        imageView.setVisibility(i);
        ((ImageView) view.findViewById(16908294)).setAlpha(isEnabled() ? 1.0f : 0.3f);
    }

    public void setAnimateVisible(boolean z) {
        f(1, z);
    }

    public boolean isAnimateVisible() {
        return (this.Eo & 1) != 0;
    }

    public void setAnimating(boolean z) {
        f(3, z);
    }

    public boolean isAnimating() {
        return (this.Eo & 2) != 0;
    }

    public void setAnimateFinish(boolean z) {
        f(4, z);
    }

    public boolean isAnimateFinish() {
        return (this.Eo & 4) != 0;
    }

    public void setAnimateDrawable(Drawable drawable) {
        this.Ep = drawable;
        notifyChanged();
    }

    public void setAnimateDrawable(int i) {
        setAnimateDrawable(getContext().getResources().getDrawable(i));
    }

    public void setAnimateFinishDrawable(Drawable drawable) {
        this.Eq = drawable;
        notifyChanged();
    }

    public void setAnimateFinishDrawable(int i) {
        setAnimateFinishDrawable(getContext().getResources().getDrawable(i));
    }

    private void f(int i, boolean z) {
        if (z) {
            this.Eo = i | this.Eo;
        } else {
            this.Eo = (~i) & this.Eo;
        }
        notifyChanged();
    }
}
