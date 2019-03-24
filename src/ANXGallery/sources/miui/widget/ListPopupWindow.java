package miui.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ListPopupWindow {
    private static final boolean DEBUG = false;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    private static final int Ud = 250;
    public static final int WRAP_CONTENT = -2;
    private Rect Mz;
    private DataSetObserver Ub;
    private final ResizePopupRunnable Ue;
    private final PopupTouchInterceptor Uf;
    private final PopupScrollListener Ug;
    private final ListSelectorHider Uh;
    int Ui;
    private ArrowPopupWindow Uj;
    private DropDownListView Uk;
    private int Ul;
    private int Um;
    private int Un;
    private int Uo;
    private boolean Up;
    private boolean Uq;
    private boolean Ur;
    private View Us;
    private int Ut;
    private View Uu;
    private Drawable Uv;
    private OnItemClickListener Uw;
    private OnItemSelectedListener Ux;
    private Runnable Uy;
    private boolean Uz;
    private ListAdapter mAdapter;
    private Context mContext;
    private Handler mHandler;

    private static class DropDownListView extends ListView {
        public static final int INVALID_POSITION = -1;
        static final int UC = -1;
        private boolean UD;
        private boolean UE;

        public DropDownListView(Context context, boolean z) {
            super(context, null, 16842861);
            this.UE = z;
            setCacheColorHint(0);
        }

        private int h(int i, boolean z) {
            ListAdapter adapter = getAdapter();
            if (adapter == null || isInTouchMode()) {
                return -1;
            }
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z) {
                    i = Math.max(0, i);
                    while (i < count && !adapter.isEnabled(i)) {
                        i++;
                    }
                } else {
                    i = Math.min(i, count - 1);
                    while (i >= 0 && !adapter.isEnabled(i)) {
                        i--;
                    }
                }
                if (i < 0 || i >= count) {
                    return -1;
                }
                return i;
            } else if (i < 0 || i >= count) {
                return -1;
            } else {
                return i;
            }
        }

        public boolean isInTouchMode() {
            return (this.UE && this.UD) || super.isInTouchMode();
        }

        public boolean hasWindowFocus() {
            return this.UE || super.hasWindowFocus();
        }

        public boolean isFocused() {
            return this.UE || super.isFocused();
        }

        public boolean hasFocus() {
            return this.UE || super.hasFocus();
        }

        final int a(int i, int i2, int i3, int i4, int i5) {
            i2 = getListPaddingTop();
            i3 = getListPaddingBottom();
            int dividerHeight = getDividerHeight();
            Drawable divider = getDivider();
            ListAdapter adapter = getAdapter();
            if (adapter == null) {
                return i2 + i3;
            }
            i2 += i3;
            if (dividerHeight <= 0 || divider == null) {
                dividerHeight = 0;
            }
            int count = adapter.getCount();
            int i6 = i2;
            i2 = 0;
            int i7 = i2;
            int i8 = i7;
            View view = null;
            while (i2 < count) {
                int itemViewType = adapter.getItemViewType(i2);
                if (itemViewType != i7) {
                    view = null;
                    i7 = itemViewType;
                }
                view = adapter.getView(i2, view, this);
                itemViewType = view.getLayoutParams().height;
                if (itemViewType > 0) {
                    itemViewType = MeasureSpec.makeMeasureSpec(itemViewType, 1073741824);
                } else {
                    itemViewType = MeasureSpec.makeMeasureSpec(0, 0);
                }
                view.measure(i, itemViewType);
                if (i2 > 0) {
                    i6 += dividerHeight;
                }
                i6 += view.getMeasuredHeight();
                if (i6 >= i4) {
                    if (i5 >= 0 && i2 > i5 && i8 > 0 && i6 != i4) {
                        i4 = i8;
                    }
                    return i4;
                }
                if (i5 >= 0 && i2 >= i5) {
                    i8 = i6;
                }
                i2++;
            }
            return i6;
        }
    }

    private class ListSelectorHider implements Runnable {
        private ListSelectorHider() {
        }

        /* synthetic */ ListSelectorHider(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    private class PopupDataSetObserver extends DataSetObserver {
        private PopupDataSetObserver() {
        }

        /* synthetic */ PopupDataSetObserver(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        public void onInvalidated() {
            ListPopupWindow.this.dismiss(true);
        }
    }

    private class PopupScrollListener implements OnScrollListener {
        private PopupScrollListener() {
        }

        /* synthetic */ PopupScrollListener(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1 && !ListPopupWindow.this.isInputMethodNotNeeded() && ListPopupWindow.this.Uj.getContentView() != null) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.Ue);
                ListPopupWindow.this.Ue.run();
            }
        }
    }

    private class PopupTouchInterceptor implements OnTouchListener {
        private PopupTouchInterceptor() {
        }

        /* synthetic */ PopupTouchInterceptor(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && ListPopupWindow.this.Uj != null && ListPopupWindow.this.Uj.isShowing() && x >= 0 && x < ListPopupWindow.this.Uj.getContentWidth() && y >= 0 && y < ListPopupWindow.this.Uj.getContentHeight()) {
                ListPopupWindow.this.mHandler.postDelayed(ListPopupWindow.this.Ue, 250);
            } else if (action == 1) {
                ListPopupWindow.this.mHandler.removeCallbacks(ListPopupWindow.this.Ue);
            }
            return false;
        }
    }

    private class ResizePopupRunnable implements Runnable {
        private ResizePopupRunnable() {
        }

        /* synthetic */ ResizePopupRunnable(ListPopupWindow listPopupWindow, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void run() {
            if (ListPopupWindow.this.Uk != null && ListPopupWindow.this.Uk.getCount() > ListPopupWindow.this.Uk.getChildCount() && ListPopupWindow.this.Uk.getChildCount() <= ListPopupWindow.this.Ui) {
                ListPopupWindow.this.Uj.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, 16843519);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843519);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this.Ue = new ResizePopupRunnable(this, null);
        this.Uf = new PopupTouchInterceptor(this, null);
        this.Ug = new PopupScrollListener(this, null);
        this.Uh = new ListSelectorHider(this, null);
        this.Ui = Integer.MAX_VALUE;
        this.Ul = -2;
        this.Um = -2;
        this.Uq = false;
        this.Ur = false;
        this.Ut = 0;
        this.mHandler = new Handler();
        this.Mz = new Rect();
        this.mContext = context;
        this.Uj = new ArrowPopupWindow(context, attributeSet, i);
    }

    public ArrowPopupWindow getPopupWindow() {
        return this.Uj;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.Ub == null) {
            this.Ub = new PopupDataSetObserver(this, null);
        } else if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.Ub);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            listAdapter.registerDataSetObserver(this.Ub);
        }
        if (this.Uk != null) {
            this.Uk.setAdapter(this.mAdapter);
        }
    }

    public int getPromptPosition() {
        return this.Ut;
    }

    public void setPromptPosition(int i) {
        this.Ut = i;
    }

    public boolean isModal() {
        return this.Uz;
    }

    public void setModal(boolean z) {
        this.Uz = true;
        this.Uj.setFocusable(z);
    }

    public void setForceIgnoreOutsideTouch(boolean z) {
        this.Ur = z;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.Uq;
    }

    public void setDropDownAlwaysVisible(boolean z) {
        this.Uq = z;
    }

    public int getSoftInputMode() {
        return this.Uj.getSoftInputMode();
    }

    public void setSoftInputMode(int i) {
        this.Uj.setSoftInputMode(i);
    }

    public void setListSelector(Drawable drawable) {
        this.Uv = drawable;
    }

    public Drawable getBackground() {
        return this.Uj.getBackground();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.Uj.setBackgroundDrawable(drawable);
    }

    public int getAnimationStyle() {
        return this.Uj.getAnimationStyle();
    }

    public void setAnimationStyle(int i) {
        this.Uj.setAnimationStyle(i);
    }

    public View getAnchorView() {
        return this.Uu;
    }

    public void setAnchorView(View view) {
        this.Uu = view;
    }

    public int getHorizontalOffset() {
        return this.Un;
    }

    public void setHorizontalOffset(int i) {
        this.Un = i;
    }

    public int getVerticalOffset() {
        if (this.Up) {
            return this.Uo;
        }
        return 0;
    }

    public void setVerticalOffset(int i) {
        this.Uo = i;
        this.Up = true;
    }

    public int getWidth() {
        return this.Um;
    }

    public void setWidth(int i) {
        this.Um = i;
    }

    public void setContentWidth(int i) {
        Drawable background = this.Uj.getBackground();
        if (background != null) {
            background.getPadding(this.Mz);
            this.Um = (this.Mz.left + this.Mz.right) + i;
            return;
        }
        setWidth(i);
    }

    public int getHeight() {
        return this.Ul;
    }

    public void setHeight(int i) {
        this.Ul = i;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.Uw = onItemClickListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.Ux = onItemSelectedListener;
    }

    public void setPromptView(View view) {
        boolean isShowing = isShowing();
        if (isShowing) {
            eV();
        }
        this.Us = view;
        if (isShowing) {
            show();
        }
    }

    public void postShow() {
        this.mHandler.post(this.Uy);
    }

    public void show() {
        int eW = eW();
        if (this.Um != -1) {
            if (this.Um == -2) {
                this.Uj.setContentWidth(getAnchorView().getWidth());
            } else {
                this.Uj.setContentWidth(this.Um);
            }
        }
        if (this.Ul != -1) {
            if (this.Ul == -2) {
                this.Uj.setContentHeight(eW);
            } else {
                this.Uj.setContentHeight(this.Ul);
            }
        }
        boolean z = true;
        this.Uj.setFocusable(true);
        ArrowPopupWindow arrowPopupWindow;
        if (this.Uj.isShowing()) {
            arrowPopupWindow = this.Uj;
            if (this.Ur || this.Uq) {
                z = false;
            }
            arrowPopupWindow.setOutsideTouchable(z);
            this.Uj.update(getAnchorView(), this.Un, this.Uo, -1, -1);
            return;
        }
        this.Uj.setWindowLayoutMode(-1, -1);
        arrowPopupWindow = this.Uj;
        if (this.Ur || this.Uq) {
            z = false;
        }
        arrowPopupWindow.setOutsideTouchable(z);
        this.Uj.setTouchInterceptor(this.Uf);
        this.Uj.show(getAnchorView(), this.Un, this.Uo);
        this.Uk.setSelection(-1);
        if (!this.Uz || this.Uk.isInTouchMode()) {
            clearListSelection();
        }
        if (!this.Uz) {
            this.mHandler.post(this.Uh);
        }
    }

    public void dismiss() {
        dismiss(true);
    }

    public void dismiss(boolean z) {
        this.Uj.dismiss(z);
        eV();
        this.Uk = null;
        this.mHandler.removeCallbacks(this.Ue);
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.Uj.setOnDismissListener(onDismissListener);
    }

    private void eV() {
        if (this.Us != null) {
            ViewParent parent = this.Us.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.Us);
            }
        }
    }

    public int getInputMethodMode() {
        return this.Uj.getInputMethodMode();
    }

    public void setInputMethodMode(int i) {
        this.Uj.setInputMethodMode(i);
    }

    public void setSelection(int i) {
        DropDownListView dropDownListView = this.Uk;
        if (isShowing() && dropDownListView != null) {
            dropDownListView.UD = false;
            dropDownListView.setSelection(i);
            if (dropDownListView.getChoiceMode() != 0) {
                dropDownListView.setItemChecked(i, true);
            }
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.Uk;
        if (dropDownListView != null) {
            dropDownListView.UD = true;
            dropDownListView.requestLayout();
        }
    }

    public boolean isShowing() {
        return this.Uj.isShowing();
    }

    public boolean isInputMethodNotNeeded() {
        return this.Uj.getInputMethodMode() == 2;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.Uw != null) {
            AdapterView adapterView = this.Uk;
            int i2 = i;
            this.Uw.onItemClick(adapterView, adapterView.getChildAt(i - adapterView.getFirstVisiblePosition()), i2, adapterView.getAdapter().getItemId(i));
        }
        return true;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.Uk.getSelectedItem();
        }
        return null;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.Uk.getSelectedItemPosition();
        }
        return -1;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.Uk.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.Uk.getSelectedView();
        }
        return null;
    }

    public ListView getListView() {
        return this.Uk;
    }

    void ar(int i) {
        this.Ui = i;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isShowing() && i != 62 && (this.Uk.getSelectedItemPosition() >= 0 || !(i == 66 || i == 23))) {
            int count;
            int selectedItemPosition = this.Uk.getSelectedItemPosition();
            int isAboveAnchor = this.Uj.isAboveAnchor() ^ 1;
            ListAdapter listAdapter = this.mAdapter;
            int i2 = Integer.MAX_VALUE;
            if (listAdapter != null) {
                int i3;
                boolean areAllItemsEnabled = listAdapter.areAllItemsEnabled();
                if (areAllItemsEnabled) {
                    i3 = 0;
                } else {
                    i3 = this.Uk.h(0, true);
                }
                if (areAllItemsEnabled) {
                    count = listAdapter.getCount() - 1;
                } else {
                    count = this.Uk.h(listAdapter.getCount() - 1, false);
                }
                i2 = i3;
            } else {
                count = Integer.MIN_VALUE;
            }
            if ((isAboveAnchor == 0 || i != 19 || selectedItemPosition > i2) && !(isAboveAnchor == 0 && i == 20 && selectedItemPosition >= count)) {
                this.Uk.UD = false;
                if (this.Uk.onKeyDown(i, keyEvent)) {
                    this.Uj.setInputMethodMode(2);
                    this.Uk.requestFocusFromTouch();
                    show();
                    if (!(i == 23 || i == 66)) {
                        switch (i) {
                            case 19:
                            case 20:
                                break;
                        }
                    }
                    return true;
                } else if (isAboveAnchor == 0 || i != 20) {
                    if (isAboveAnchor == 0 && i == 19 && selectedItemPosition == i2) {
                        return true;
                    }
                    return false;
                } else if (selectedItemPosition == count) {
                    return true;
                }
            }
            clearListSelection();
            this.Uj.setInputMethodMode(1);
            show();
            return true;
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isShowing() || this.Uk.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean onKeyUp = this.Uk.onKeyUp(i, keyEvent);
        if (onKeyUp && (i == 23 || i == 66)) {
            dismiss(true);
        }
        return onKeyUp;
    }

    private int eW() {
        int measuredHeight;
        int i;
        boolean z = true;
        if (this.Uk == null) {
            Context context = this.mContext;
            this.Uy = new Runnable() {
                public void run() {
                    View anchorView = ListPopupWindow.this.getAnchorView();
                    if (anchorView != null && anchorView.getWindowToken() != null) {
                        ListPopupWindow.this.show();
                    }
                }
            };
            this.Uk = new DropDownListView(context, this.Uz ^ true);
            if (this.Uv != null) {
                this.Uk.setSelector(this.Uv);
            }
            this.Uk.setAdapter(this.mAdapter);
            this.Uk.setOnItemClickListener(this.Uw);
            this.Uk.setFocusable(true);
            this.Uk.setFocusableInTouchMode(true);
            this.Uk.setOnItemSelectedListener(new OnItemSelectedListener() {
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i != -1) {
                        DropDownListView a = ListPopupWindow.this.Uk;
                        if (a != null) {
                            a.UD = false;
                        }
                    }
                }

                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.Uk.setOnScrollListener(this.Ug);
            if (this.Ux != null) {
                this.Uk.setOnItemSelectedListener(this.Ux);
            }
            View view = this.Uk;
            View view2 = this.Us;
            if (view2 != null) {
                View linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.Ut) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(view, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(view, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Invalid hint position ");
                        stringBuilder.append(this.Ut);
                        Log.e(str, stringBuilder.toString());
                        break;
                }
                view2.measure(MeasureSpec.makeMeasureSpec(this.Um, Integer.MIN_VALUE), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = (view2.getMeasuredHeight() + layoutParams2.topMargin) + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
            }
            this.Uj.setContentView(view);
        } else {
            View view3 = this.Us;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = (view3.getMeasuredHeight() + layoutParams3.topMargin) + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.Uj.getBackground();
        if (background != null) {
            background.getPadding(this.Mz);
            i = this.Mz.top + this.Mz.bottom;
            if (!this.Up) {
                this.Uo = -this.Mz.top;
            }
        } else {
            this.Mz.setEmpty();
            i = 0;
        }
        if (this.Uj.getInputMethodMode() != 2) {
            z = false;
        }
        int maxAvailableHeight = getMaxAvailableHeight(getAnchorView(), this.Uo, z);
        if (this.Uq || this.Ul == -1) {
            return maxAvailableHeight + i;
        }
        int makeMeasureSpec;
        switch (this.Um) {
            case -2:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Mz.left + this.Mz.right), Integer.MIN_VALUE);
                break;
            case -1:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.Mz.left + this.Mz.right), 1073741824);
                break;
            default:
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.Um, 1073741824);
                break;
        }
        makeMeasureSpec = this.Uk.a(makeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (makeMeasureSpec > 0) {
            measuredHeight += i;
        }
        return makeMeasureSpec + measuredHeight;
    }

    public int getMaxAvailableHeight(View view, int i, boolean z) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = rect.bottom;
        if (z) {
            i2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
        }
        int max = Math.max((i2 - (iArr[1] + view.getHeight())) - i, (iArr[1] - rect.top) + i);
        if (this.Uj.getBackground() == null) {
            return max;
        }
        this.Uj.getBackground().getPadding(this.Mz);
        return max - (this.Mz.top + this.Mz.bottom);
    }
}
