package miui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.EditText;
import com.miui.internal.R;
import com.miui.internal.widget.ExploreByTouchHelper;
import java.util.List;
import miui.util.ViewUtils;

public class ClearableEditText extends EditText {
    private static final int[] EMPTY_STATE_SET = new int[]{16842921};
    private Drawable OR;
    private boolean Qd;
    private boolean Qe;
    private AccessHelper Qf;

    private class AccessHelper extends ExploreByTouchHelper {
        private static final int Qh = 0;
        private final Rect Qi = new Rect();
        private final View Qj;

        public AccessHelper(View view) {
            super(view);
            this.Qj = view;
        }

        protected int getVirtualViewAt(float f, float f2) {
            if (ClearableEditText.this.Qe && d(f, f2)) {
                return 0;
            }
            return Integer.MIN_VALUE;
        }

        protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
            super.onPopulateEventForHost(accessibilityEvent);
            if (accessibilityEvent.getEventType() == 2048 && !ClearableEditText.this.Qe && this.Qj.isFocused()) {
                this.Qj.sendAccessibilityEvent(32768);
            }
        }

        protected void onPopulateNodeForHost(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onPopulateNodeForHost(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ClearableEditText.class.getName());
        }

        protected void getVisibleVirtualViews(List list) {
            if (ClearableEditText.this.Qe) {
                list.add(Integer.valueOf(0));
            }
        }

        protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(getDescription());
        }

        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setContentDescription(getDescription());
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.setClassName(Button.class.getName());
            b(this.Qi);
            accessibilityNodeInfo.setBoundsInParent(this.Qi);
            accessibilityNodeInfo.setClickable(true);
        }

        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i == Integer.MIN_VALUE || i2 != 16) {
                return false;
            }
            ClearableEditText.this.ep();
            return true;
        }

        private CharSequence getDescription() {
            return ClearableEditText.this.getResources().getString(R.string.clearable_edittext_clear_description);
        }

        private void b(Rect rect) {
            this.Qj.getLocalVisibleRect(this.Qi);
            if (ViewUtils.isLayoutRtl(ClearableEditText.this)) {
                rect.right -= (ClearableEditText.this.getWidth() - ClearableEditText.this.OR.getIntrinsicWidth()) - (ClearableEditText.this.getPaddingLeft() * 2);
            } else {
                rect.left += (ClearableEditText.this.getWidth() - (ClearableEditText.this.getPaddingRight() * 2)) - ClearableEditText.this.OR.getIntrinsicWidth();
            }
        }

        private boolean d(float f, float f2) {
            boolean z = false;
            if (ViewUtils.isLayoutRtl(ClearableEditText.this)) {
                if (f < ((float) (ClearableEditText.this.OR.getIntrinsicWidth() + (ClearableEditText.this.getPaddingLeft() * 2)))) {
                    z = true;
                }
                return z;
            }
            if (f > ((float) ((ClearableEditText.this.getWidth() - (ClearableEditText.this.getPaddingRight() * 2)) - ClearableEditText.this.OR.getIntrinsicWidth()))) {
                z = true;
            }
            return z;
        }
    }

    public ClearableEditText(Context context) {
        this(context, null);
    }

    public ClearableEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextSearchStyle);
    }

    public ClearableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        if (compoundDrawablesRelative[0] == null && compoundDrawablesRelative[1] == null && compoundDrawablesRelative[2] != null && compoundDrawablesRelative[3] == null) {
            this.OR = compoundDrawablesRelative[2];
            addTextChangedListener(new TextWatcher() {
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void afterTextChanged(Editable editable) {
                    if (ClearableEditText.this.Qe != (editable.length() > 0)) {
                        ClearableEditText.this.Qe = ClearableEditText.this.Qe ^ true;
                        ClearableEditText.this.refreshDrawableState();
                        if (ClearableEditText.this.Qf != null) {
                            ClearableEditText.this.Qf.invalidateRoot();
                        }
                    }
                }
            });
            if (VERSION.SDK_INT >= 19) {
                this.Qf = new AccessHelper(this);
                setAccessibilityDelegate(this.Qf);
                return;
            }
            return;
        }
        throw new IllegalStateException("ClearableEditText need only drawableEnd");
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new IllegalStateException("ClearableEditText can only set drawables by setCompoundDrawablesRelative()");
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null && drawable2 == null && drawable3 != null && drawable4 == null) {
            this.OR = drawable3;
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new IllegalStateException("ClearableEditText can only set drawableRight");
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = this.Qe && (ViewUtils.isLayoutRtl(this) ? motionEvent.getX() >= ((float) (this.OR.getIntrinsicWidth() + getPaddingLeft())) : motionEvent.getX() <= ((float) ((getWidth() - getPaddingRight()) - this.OR.getIntrinsicWidth())));
        if (!z) {
            return super.dispatchTouchEvent(motionEvent);
        }
        c(motionEvent);
        return true;
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (!this.Qe) {
            mergeDrawableStates(onCreateDrawableState, EMPTY_STATE_SET);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.OR != null) {
            this.OR.setState(getDrawableState());
            invalidate();
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.OR;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.OR != null) {
            this.OR.jumpToCurrentState();
        }
    }

    private void c(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 3) {
            switch (action) {
                case 0:
                    if (isEnabled() && this.Qe) {
                        this.Qd = true;
                        return;
                    }
                    return;
                case 1:
                    if (isEnabled() && this.Qd) {
                        ep();
                        return;
                    }
                    return;
                default:
                    return;
            }
        } else if (this.Qd) {
            this.Qd = false;
        }
    }

    private void ep() {
        setText("");
    }

    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (VERSION.SDK_INT < 19 || this.Qf == null || !this.Qe || !this.Qf.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }
}
