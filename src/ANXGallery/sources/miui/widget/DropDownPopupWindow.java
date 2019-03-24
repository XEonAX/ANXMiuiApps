package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class.Factory;
import com.miui.internal.widget.ActionModeView;
import miui.content.res.ThemeResources;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;

public class DropDownPopupWindow {
    private PopupWindow Rk;
    private ContainerView Rl;
    private ContentController Rm;
    private ContainerController Rn;
    private Controller Ro;
    private int Rp = ActionModeView.ANIMATION_DURATION;
    private int Rq = ActionModeView.ANIMATION_DURATION;
    private boolean Rr;
    private AnimatorUpdateListener Rs = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) DropDownPopupWindow.this.vE.getAnimatedValue()).floatValue();
            if (DropDownPopupWindow.this.Rn != null) {
                DropDownPopupWindow.this.Rn.onAniamtionUpdate(DropDownPopupWindow.this.Rl, floatValue);
            }
            if (DropDownPopupWindow.this.Rm != null) {
                DropDownPopupWindow.this.Rm.onAniamtionUpdate(DropDownPopupWindow.this.mContentView, floatValue);
            }
        }
    };
    private AnimatorListener Rt = new AnimatorListener() {
        private void eF() {
            if (DropDownPopupWindow.this.Rr) {
                DropDownPopupWindow.this.eD();
            }
        }

        public void onAnimationStart(Animator animator) {
            if (DropDownPopupWindow.this.Rr && DropDownPopupWindow.this.Ro != null) {
                DropDownPopupWindow.this.Ro.onDismiss();
            }
        }

        public void onAnimationEnd(Animator animator) {
            eF();
        }

        public void onAnimationCancel(Animator animator) {
            eF();
        }

        public void onAnimationRepeat(Animator animator) {
        }
    };
    private View mContentView;
    private Context mContext;
    private View oP;
    private ValueAnimator vE;

    public interface Controller {
        void onAniamtionUpdate(View view, float f);

        void onDismiss();

        void onShow();
    }

    public interface ContainerController extends Controller {
        boolean onAddContent(View view, View view2);
    }

    private class ContainerView extends FrameLayout {
        public ContainerView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!super.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
                DropDownPopupWindow.this.dismiss();
            }
            return true;
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return false;
            }
            DropDownPopupWindow.this.dismiss();
            return true;
        }
    }

    public interface ContentController extends Controller {
        View getContentView();
    }

    public static class DefaultContainerController implements ContainerController {
        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onAniamtionUpdate(View view, float f) {
            Drawable background = view.getBackground();
            if (background != null) {
                background.setAlpha((int) (255.0f * f));
            }
        }

        public boolean onAddContent(View view, View view2) {
            return false;
        }
    }

    public static class ViewContentController implements ContentController {
        private int Rv;
        private View Rw;
        private Context mContext;

        public ViewContentController(DropDownPopupWindow dropDownPopupWindow, int i) {
            this(dropDownPopupWindow.getContext(), i);
            dropDownPopupWindow.setContentController(this);
        }

        public ViewContentController(Context context, int i) {
            this.mContext = context;
            this.Rv = i;
        }

        protected void initContent() {
            if (this.Rw == null) {
                this.Rw = LayoutInflater.from(this.mContext).inflate(this.Rv, null);
                onContentInit(this.Rw);
            }
        }

        protected void onContentInit(View view) {
        }

        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onAniamtionUpdate(View view, float f) {
            if (view != null) {
                view.setTranslationY(((float) (-view.getHeight())) * (1.0f - f));
            }
        }

        public View getContentView() {
            initContent();
            return this.Rw;
        }
    }

    public static class ListController extends ViewContentController {
        private ListView cv;

        public ListController(DropDownPopupWindow dropDownPopupWindow) {
            super(dropDownPopupWindow, R.layout.drop_down_popup_list);
        }

        public ListController(DropDownPopupWindow dropDownPopupWindow, int i) {
            super(dropDownPopupWindow, i);
        }

        public ListController(Context context) {
            this(context, R.layout.drop_down_popup_list);
        }

        public ListController(Context context, int i) {
            super(context, i);
        }

        protected void onContentInit(View view) {
            this.cv = (ListView) view.findViewById(16908298);
        }

        public ListView getListView() {
            initContent();
            return this.cv;
        }
    }

    public void setContainerController(ContainerController containerController) {
        this.Rn = containerController;
    }

    public void setContentController(ContentController contentController) {
        this.Rm = contentController;
    }

    public void setDropDownController(Controller controller) {
        this.Ro = controller;
    }

    public Context getContext() {
        return this.mContext;
    }

    public DropDownPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this.mContext = context;
        this.Rk = new PopupWindow(context, attributeSet, 0, i);
        this.Rl = new ContainerView(context, attributeSet, i);
        this.Rk.setAnimationStyle(0);
        eC();
    }

    private void eC() {
        int resolveColor;
        this.Rk.setContentView(this.Rl);
        this.Rk.setWidth(-1);
        this.Rk.setHeight(-1);
        Android_Widget_PopupWindow_class android_Widget_PopupWindow_class = Factory.getInstance().get();
        android_Widget_PopupWindow_class.setLayoutInScreenEnabled(this.Rk, true);
        android_Widget_PopupWindow_class.setLayoutInsetDecor(this.Rk, true);
        this.Rk.setSoftInputMode(3);
        this.Rk.setOutsideTouchable(false);
        this.Rk.setFocusable(true);
        this.Rk.setTouchInterceptor(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (motionEvent.getAction() != 0 || (x >= 0 && x < DropDownPopupWindow.this.Rl.getWidth() && y >= 0 && y < DropDownPopupWindow.this.Rl.getHeight())) {
                    return false;
                }
                DropDownPopupWindow.this.dismiss();
                return true;
            }
        });
        this.Rl.setFocusableInTouchMode(true);
        try {
            resolveColor = AttributeResolver.resolveColor(this.mContext, R.attr.arrowPopupWindowDimColor);
        } catch (Exception e) {
            resolveColor = -1;
        }
        if (resolveColor == -1) {
            if (ViewUtils.isNightMode(this.mContext)) {
                resolveColor = this.mContext.getResources().getColor(R.color.arrow_popup_window_dim_color_dark);
            } else {
                resolveColor = this.mContext.getResources().getColor(R.color.arrow_popup_window_dim_color_light);
            }
        }
        this.Rl.setBackgroundColor(resolveColor);
    }

    public void setAnchor(View view) {
        this.oP = view;
    }

    public void show() {
        if (!this.Rk.isShowing()) {
            if (this.Rm != null) {
                this.mContentView = this.Rm.getContentView();
                if (this.mContentView != null && (this.Rn == null || !this.Rn.onAddContent(this.Rl, this.mContentView))) {
                    this.Rl.removeAllViews();
                    this.Rl.addView(this.mContentView, new LayoutParams(-1, -2));
                }
            }
            if (this.Rn != null) {
                this.Rn.onShow();
            }
            c(0.0f, 1.0f, this.Rp);
            if (this.oP == null || !this.oP.isAttachedToWindow()) {
                this.Rk.showAtLocation(this.Rl, 8388659, 0, 0);
                return;
            }
            eE();
            int[] iArr = new int[2];
            this.oP.getLocationInWindow(iArr);
            this.Rk.showAtLocation(this.Rl, 0, 0, iArr[1] + this.oP.getHeight());
        } else if (this.oP != null) {
            this.Rk.update(this.oP, 0, 0);
        } else {
            this.Rk.update(0, 0);
        }
    }

    private void c(float f, float f2, int i) {
        if (this.vE != null) {
            this.vE.cancel();
        }
        if (this.Rn != null || this.Rm != null) {
            if (this.vE == null) {
                this.vE = ValueAnimator.ofFloat(new float[]{f, f2});
            } else {
                this.vE.setFloatValues(new float[]{f, f2});
            }
            this.vE.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? (long) i : 0);
            this.vE.addUpdateListener(this.Rs);
            this.vE.addListener(this.Rt);
            this.vE.start();
        }
    }

    private void eD() {
        if (this.Rk != null) {
            this.Rk.dismiss();
        }
        if (this.Rn != null) {
            this.Rn.onDismiss();
        }
        if (this.Rm != null) {
            this.Rm.onDismiss();
        }
        this.Rr = false;
    }

    public void dismiss() {
        this.Rr = true;
        c(1.0f, 0.0f, this.Rq);
    }

    private void eE() {
        View view = this.oP;
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int i = rect.bottom - rect.top;
        int aW = aW();
        if (rect.top > aW) {
            aW = 0;
        }
        i = ((i + aW) - iArr[1]) - view.getHeight();
        if (i > 0) {
            this.Rk.setHeight(i);
        }
    }

    private int aW() {
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", ThemeResources.FRAMEWORK_PACKAGE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
