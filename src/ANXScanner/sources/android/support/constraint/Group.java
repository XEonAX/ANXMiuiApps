package android.support.constraint;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.constraint.ConstraintLayout.LayoutParams;
import android.util.AttributeSet;
import android.view.View;

public class Group extends ConstraintHelper {
    public Group(Context context) {
        super(context);
    }

    public Group(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public Group(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void init(AttributeSet attrs) {
        super.init(attrs);
        this.mUseViewMeasure = false;
    }

    public void updatePreLayout(ConstraintLayout container) {
        int visibility = getVisibility();
        float elevation = 0.0f;
        if (VERSION.SDK_INT >= 21) {
            elevation = getElevation();
        }
        for (int i = 0; i < this.mCount; i++) {
            View view = container.getViewById(this.mIds[i]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > 0.0f && VERSION.SDK_INT >= 21) {
                    view.setElevation(elevation);
                }
            }
        }
    }

    public void updatePostLayout(ConstraintLayout container) {
        LayoutParams params = (LayoutParams) getLayoutParams();
        params.widget.setWidth(0);
        params.widget.setHeight(0);
    }
}
