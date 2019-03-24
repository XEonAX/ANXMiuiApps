package miui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.miui.internal.R;
import com.miui.internal.variable.Android_Widget_PopupWindow_class.Factory;
import com.miui.internal.widget.ArrowPopupView;
import miui.util.AttributeResolver;

public class ArrowPopupWindow extends PopupWindow {
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_MODE = 1;
    private int OT;
    protected ArrowPopupView mArrowPopupView;
    private Context mContext;

    public ArrowPopupWindow(Context context) {
        this(context, null);
    }

    public ArrowPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.Widget_PopupWindow);
    }

    public ArrowPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ArrowPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mContext = context;
        eg();
    }

    public Context getContext() {
        return this.mContext;
    }

    private void eg() {
        int i;
        this.OT = this.mContext.getResources().getDimensionPixelOffset(R.dimen.arrow_popup_window_list_max_height);
        this.mArrowPopupView = (ArrowPopupView) getLayoutInflater().inflate(R.layout.arrow_popup_view, null, false);
        super.setContentView(this.mArrowPopupView);
        if (eh()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
            i = displayMetrics.heightPixels;
        } else {
            i = -1;
        }
        super.setWidth(-1);
        super.setHeight(i);
        setSoftInputMode(3);
        this.mArrowPopupView.setArrowPopupWindow(this);
        super.setTouchInterceptor(getDefaultOnTouchListener());
        onPrepareWindow();
        update();
    }

    protected LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(this.mContext);
    }

    protected void onPrepareWindow() {
    }

    public final void setContentView(View view) {
        this.mArrowPopupView.setContentView(view);
    }

    public final void setContentView(View view, LayoutParams layoutParams) {
        this.mArrowPopupView.setContentView(view, layoutParams);
    }

    public View getContentView() {
        return this.mArrowPopupView.getContentView();
    }

    public final void setContentView(int i) {
        this.mArrowPopupView.setContentView(i);
    }

    public int getArrowMode() {
        return this.mArrowPopupView.getArrowMode();
    }

    public void setArrowMode(int i) {
        this.mArrowPopupView.setArrowMode(i);
    }

    public void show(View view, int i, int i2) {
        this.mArrowPopupView.setAnchor(view);
        this.mArrowPopupView.setOffset(i, i2);
        Factory.getInstance().get().setLayoutInScreenEnabled(this, eh());
        showAtLocation(view, 8388659, 0, 0);
        this.mArrowPopupView.animateToShow();
    }

    private boolean eh() {
        if (getContext().getResources().getInteger(R.integer.window_translucent_status) == 0 || AttributeResolver.resolveInt(getContext(), R.attr.windowTranslucentStatus, 0) == 0) {
            return false;
        }
        return true;
    }

    public void showAsDropDown(View view, int i, int i2) {
        show(view, i, i2);
    }

    public void dismiss(boolean z) {
        if (z) {
            this.mArrowPopupView.animateToDismiss();
        } else {
            dismiss();
        }
    }

    public void showAsDropDown(View view, int i, int i2, int i3) {
        show(view, i, i2);
    }

    public void update(int i, int i2, int i3, int i4, boolean z) {
        super.update(0, 0, -2, -2, z);
        setContentHeight(i4);
    }

    public void setTouchInterceptor(OnTouchListener onTouchListener) {
        this.mArrowPopupView.setTouchInterceptor(onTouchListener);
    }

    public void setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.mArrowPopupView.setPositiveButton(charSequence, onClickListener);
    }

    public int getWidth() {
        return getContentWidth();
    }

    public int getContentWidth() {
        View contentView = getContentView();
        if (contentView != null) {
            return contentView.getWidth();
        }
        return 0;
    }

    public void setWidth(int i) {
        setContentWidth(i);
    }

    public void setContentWidth(int i) {
        View contentView = getContentView();
        if (contentView != null) {
            LayoutParams layoutParams = contentView.getLayoutParams();
            layoutParams.width = i;
            contentView.setLayoutParams(layoutParams);
        }
    }

    public int getHeight() {
        return getContentHeight();
    }

    public int getContentHeight() {
        View contentView = getContentView();
        if (contentView != null) {
            return contentView.getHeight();
        }
        return 0;
    }

    public void setHeight(int i) {
        setContentHeight(i);
    }

    public void setContentHeight(int i) {
        View contentView = getContentView();
        if ((contentView instanceof ListView) && i > this.OT) {
            i = this.OT;
        }
        if (contentView != null) {
            LayoutParams layoutParams = contentView.getLayoutParams();
            layoutParams.height = i;
            contentView.setLayoutParams(layoutParams);
        }
    }

    public void setPositiveButton(int i, OnClickListener onClickListener) {
        setPositiveButton(this.mContext.getString(i), onClickListener);
    }

    public Button getPositiveButton() {
        return this.mArrowPopupView.getPositiveButton();
    }

    public void setNegativeButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.mArrowPopupView.setNegativeButton(charSequence, onClickListener);
    }

    public void setNegativeButton(int i, OnClickListener onClickListener) {
        setNegativeButton(this.mContext.getString(i), onClickListener);
    }

    public Button getNegativeButton() {
        return this.mArrowPopupView.getNegativeButton();
    }

    public void setTitle(CharSequence charSequence) {
        this.mArrowPopupView.setTitle(charSequence);
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public OnTouchListener getDefaultOnTouchListener() {
        return this.mArrowPopupView;
    }
}
