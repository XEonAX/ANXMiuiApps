package com.miui.internal.util;

import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_Drawable_class.Factory;
import com.miui.internal.variable.Android_View_ViewGroup_class;
import com.miui.internal.variable.Android_View_View_class;
import miui.R;
import miui.util.ViewUtils;
import miui.view.OnTaggingDrawableState;

public class TaggingDrawableHelper {
    private static final Android_Graphics_Drawable_Drawable_class DrawableClass = Factory.getInstance().get();
    private static final Android_View_View_class jC = Android_View_View_class.Factory.getInstance().get();
    private static final Android_View_ViewGroup_class jD = Android_View_ViewGroup_class.Factory.getInstance().get();
    static int[] jE = new int[]{R.attr.children_sequence_state};
    private static final ThreadLocal<Rect> jF = new ThreadLocal();

    private TaggingDrawableHelper() {
    }

    public static void tagChildSequenceState(ViewGroup viewGroup) {
        if (jD.getTagChildrenSequenceState(viewGroup)) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    a(childAt, a(viewGroup, i, true), a(viewGroup, i, false));
                }
            }
        }
    }

    private static int a(ViewGroup viewGroup, int i, boolean z) {
        boolean sameWithNeighbour;
        boolean sameWithNeighbour2;
        if (viewGroup instanceof OnTaggingDrawableState) {
            OnTaggingDrawableState onTaggingDrawableState = (OnTaggingDrawableState) viewGroup;
            sameWithNeighbour = onTaggingDrawableState.sameWithNeighbour(viewGroup, i, z, false);
            sameWithNeighbour2 = onTaggingDrawableState.sameWithNeighbour(viewGroup, i, z, true);
        } else {
            sameWithNeighbour = sameWithNeighbour(viewGroup, i, z, false);
            sameWithNeighbour2 = sameWithNeighbour(viewGroup, i, z, true);
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(viewGroup);
        return sameWithNeighbour ? sameWithNeighbour2 ? z ? R.attr.state_middle_h : R.attr.state_middle_v : isLayoutRtl ? z ? R.attr.state_first_h : R.attr.state_last_v : z ? R.attr.state_last_h : R.attr.state_last_v : sameWithNeighbour2 ? isLayoutRtl ? z ? R.attr.state_last_h : R.attr.state_first_v : z ? R.attr.state_first_h : R.attr.state_first_v : z ? R.attr.state_single_h : R.attr.state_single_v;
    }

    private static boolean b(ViewGroup viewGroup, int i, boolean z) {
        View childAt;
        int i2 = -1;
        int i3 = z ? 1 : -1;
        if (z) {
            i2 = viewGroup.getChildCount();
        }
        View childAt2 = viewGroup.getChildAt(i);
        View view = null;
        do {
            i += i3;
            if (i == i2) {
                break;
            }
            childAt = viewGroup.getChildAt(i);
        } while (childAt.getVisibility() == 8);
        view = childAt;
        if (view == null || view.getVisibility() == 4 || !a(view, childAt2)) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Missing block: B:41:0x00a6, code:
            if (r3 == 0) goto L_0x00ae;
     */
    /* JADX WARNING: Missing block: B:43:0x00aa, code:
            if (r3 == 1) goto L_0x00ae;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean sameWithNeighbour(ViewGroup viewGroup, int i, boolean z, boolean z2) {
        int i2 = 1;
        int childCount;
        if (viewGroup instanceof AbsListView) {
            int numColumns;
            AbsListView absListView = (AbsListView) viewGroup;
            if (absListView instanceof GridView) {
                numColumns = ((GridView) absListView).getNumColumns();
            } else {
                numColumns = 1;
            }
            childCount = absListView.getChildCount();
            int i3;
            if (z) {
                i3 = i % numColumns;
                if (numColumns == 1) {
                    return false;
                }
                if (z2) {
                    if (i3 + 1 >= numColumns) {
                        return false;
                    }
                    i3 = i + 1;
                    if (i3 < childCount) {
                        return a(absListView.getChildAt(i), absListView.getChildAt(i3));
                    }
                    return false;
                } else if (i3 - 1 >= 0) {
                    return a(absListView.getChildAt(i), absListView.getChildAt(i - 1));
                } else {
                    return false;
                }
            }
            boolean a;
            i3 = absListView.getFirstVisiblePosition();
            Adapter adapter = absListView.getAdapter();
            int count = absListView.getCount();
            if (z2) {
                numColumns += i;
                if (numColumns < childCount) {
                    a = a(absListView.getChildAt(i), absListView.getChildAt(numColumns));
                } else {
                    numColumns += i3;
                    if (numColumns >= count || adapter.getItemViewType(i + i3) != adapter.getItemViewType(numColumns)) {
                        return false;
                    }
                    return true;
                }
            }
            int i4 = i - numColumns;
            if (i4 >= 0) {
                a = a(absListView.getChildAt(i), absListView.getChildAt(i4));
            } else {
                i4 += i3;
                if (i4 < 0 || adapter.getItemViewType(i + i3) != adapter.getItemViewType(i4)) {
                    return false;
                }
                return true;
            }
            return a;
        }
        boolean z3 = viewGroup instanceof LinearLayout;
        if (z3) {
            childCount = ((LinearLayout) viewGroup).getOrientation();
            if (z) {
            }
            if (!z) {
            }
        }
        i2 = 0;
        if (i2 != 0 || (!z3 && z)) {
            return b(viewGroup, i, z2);
        }
        return false;
    }

    private static boolean a(View view, View view2) {
        boolean z = false;
        if (view == null || view2 == null) {
            return false;
        }
        Drawable background = view.getBackground();
        Drawable background2 = view2.getBackground();
        if (background == background2) {
            return true;
        }
        if (background == null || background2 == null) {
            return false;
        }
        int id = DrawableClass.getId(background);
        int id2 = DrawableClass.getId(background2);
        if (id != 0 && id == id2) {
            z = true;
        }
        return z;
    }

    private static void a(View view, int i, int i2) {
        int horizontalState = jC.getHorizontalState(view);
        int verticalState = jC.getVerticalState(view);
        if (horizontalState != i || verticalState != i2) {
            jC.setHorizontalState(view, i);
            jC.setVerticalState(view, i2);
            i = view.getPaddingLeft();
            i2 = view.getPaddingTop();
            horizontalState = view.getPaddingRight();
            verticalState = view.getPaddingBottom();
            view.refreshDrawableState();
            if (i != view.getPaddingLeft() || i2 != view.getPaddingTop() || horizontalState != view.getPaddingRight() || verticalState != view.getPaddingBottom()) {
                jC.relayout(view);
            }
        }
    }

    public static void onDrawableStateChange(View view) {
        Drawable background = view.getBackground();
        if (background != null && background.isStateful()) {
            ConstantState constantState = background.getConstantState();
            if (background.isStateful() && constantState != null && (constantState instanceof DrawableContainerState) && ((DrawableContainerState) constantState).getConstantPadding() == null) {
                Rect rect = (Rect) jF.get();
                if (rect == null) {
                    rect = new Rect();
                    jF.set(rect);
                }
                if (background.getPadding(rect) && !(rect.left == view.getPaddingLeft() && rect.top == view.getPaddingTop() && rect.right == view.getPaddingRight() && rect.bottom == view.getPaddingBottom())) {
                    if (DrawableClass.getLayoutDirection(background) != 1) {
                        view.setPadding(rect.left, rect.top, rect.right, rect.bottom);
                    } else {
                        view.setPadding(rect.right, rect.top, rect.left, rect.bottom);
                    }
                }
            }
        }
    }

    public static void initTagChildSequenceState(ViewGroup viewGroup, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes(attributeSet, jE);
        boolean z = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        jD.setTagChildrenSequenceState(viewGroup, z);
    }

    public static void initViewSequenceStates(View view, AttributeSet attributeSet) {
        if (!jC.hasInitViewSequenceStates(view)) {
            jC.setHasInitViewSequenceStates(view, true);
            TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.DrawableStates);
            int length = R.styleable.DrawableStates.length;
            int i = R.attr.state_single_h;
            int i2 = R.attr.state_single_v;
            int i3 = i;
            i = 0;
            while (i < length) {
                if (obtainStyledAttributes.getBoolean(i, false)) {
                    if (i == R.styleable.DrawableStates_state_first_h || i == R.styleable.DrawableStates_state_middle_h || i == R.styleable.DrawableStates_state_last_h || i == R.styleable.DrawableStates_state_single_h) {
                        i3 = R.styleable.DrawableStates[i];
                    } else if (i == R.styleable.DrawableStates_state_first_v || i == R.styleable.DrawableStates_state_middle_v || i == R.styleable.DrawableStates_state_last_v || i == R.styleable.DrawableStates_state_single_v) {
                        i2 = R.styleable.DrawableStates[i];
                    }
                }
                i++;
            }
            obtainStyledAttributes.recycle();
            jC.setHorizontalState(view, i3);
            jC.setVerticalState(view, i2);
        }
    }
}
