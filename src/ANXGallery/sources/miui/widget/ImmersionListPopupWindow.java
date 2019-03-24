package miui.widget;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LayoutAnimationController;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class.Factory;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;
import miui.view.inputmethod.InputMethodHelper;

public class ImmersionListPopupWindow extends PopupWindow {
    private static final String TAG = "ImmersionListPopupWindow";
    private static final float TE = 8.0f;
    private static final float TF = 8.0f;
    private FrameLayout TI;
    private boolean TP;
    private OnItemClickListener TQ;
    private int TS;
    private int TU;
    private boolean TX;
    private int TY;
    private WindowManager Ua;
    private DataSetObserver Ub = new DataSetObserver() {
        public void onChanged() {
            ImmersionListPopupWindow.this.TX = false;
            if (ImmersionListPopupWindow.this.isShowing()) {
                ImmersionListPopupWindow.this.update(ImmersionListPopupWindow.this.eU(), ImmersionListPopupWindow.this.getHeight());
            }
        }
    };
    private ListView cv;
    private ListAdapter mAdapter;
    private View mContentView;
    private Context mContext;
    private final Rect ph;
    private final int sW;
    private final int sX;

    public ImmersionListPopupWindow(Context context) {
        super(context);
        this.mContext = context;
        Resources resources = context.getResources();
        this.TS = resources.getDimensionPixelSize(R.dimen.list_menu_dialog_maximum_width);
        this.TU = resources.getDimensionPixelSize(R.dimen.list_menu_dialog_minimum_width);
        int i = (int) (resources.getDisplayMetrics().density * 8.0f);
        this.sW = i;
        this.sX = i;
        this.ph = new Rect();
        setFocusable(true);
        this.TI = new FrameLayout(context);
        this.TI.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ImmersionListPopupWindow.this.dismiss();
            }
        });
        Drawable resolveDrawable = AttributeResolver.resolveDrawable(this.mContext, miui.R.attr.immersionWindowBackground);
        if (resolveDrawable != null) {
            resolveDrawable.getPadding(this.ph);
            this.TI.setBackground(resolveDrawable);
        }
        super.setContentView(this.TI);
        Android_Widget_PopupWindow_class android_Widget_PopupWindow_class = Factory.getInstance().get();
        android_Widget_PopupWindow_class.setLayoutInScreenEnabled(this, true);
        android_Widget_PopupWindow_class.setLayoutInsetDecor(this, true);
        i = 0;
        setBackgroundDrawable(new ColorDrawable(0));
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            i = R.style.Animation_PopupWindow_ImmersionMenu;
        }
        setAnimationStyle(i);
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.Ub);
        }
        this.mAdapter = listAdapter;
        if (this.mAdapter != null) {
            this.mAdapter.registerDataSetObserver(this.Ub);
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.TQ = onItemClickListener;
    }

    public void setContentView(View view) {
        this.mContentView = view;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public void show(View view, ViewGroup viewGroup) {
        if (view == null) {
            Log.e(TAG, "show: anchor is null");
            return;
        }
        if (this.mContentView == null) {
            this.mContentView = new ListView(this.mContext);
            this.mContentView.setId(16908298);
        }
        if (!(this.TI.getChildCount() == 1 && this.TI.getChildAt(0) == this.mContentView)) {
            this.TI.removeAllViews();
            this.TI.addView(this.mContentView);
            LayoutParams layoutParams = (LayoutParams) this.mContentView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.gravity = 16;
        }
        this.cv = (ListView) this.mContentView.findViewById(16908298);
        if (this.cv == null) {
            Log.e(TAG, "list not found");
            return;
        }
        this.cv.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int headerViewsCount = i - ImmersionListPopupWindow.this.cv.getHeaderViewsCount();
                if (headerViewsCount >= 0 && headerViewsCount < ImmersionListPopupWindow.this.mAdapter.getCount()) {
                    ImmersionListPopupWindow.this.TQ.onItemClick(adapterView, view, headerViewsCount, j);
                }
            }
        });
        this.cv.setAdapter(this.mAdapter);
        setWidth(eU());
        InputMethodHelper.getInstance().getManager().hideSoftInputFromWindow(view.getWindowToken(), 0);
        p(view);
    }

    private int eU() {
        if (!this.TX) {
            this.TY = a(this.mAdapter, null, this.mContext, this.TS);
            this.TX = true;
        }
        return (Math.max(this.TY, this.TU) + this.ph.left) + this.ph.right;
    }

    private void p(View view) {
        int i;
        this.TP = ViewUtils.isLayoutRtl(view);
        int i2 = ((-view.getHeight()) - this.ph.top) + this.sX;
        if (this.TP) {
            i = 0 - (this.ph.left - this.sW);
        } else {
            i = 0 + (this.ph.right - this.sW);
        }
        showAsDropDown(view, i, i2, 8388661);
    }

    public void fastShow(View view, ViewGroup viewGroup) {
        setWidth(eU());
        p(view);
    }

    @Deprecated
    protected void installHeaderView(View view, ViewGroup viewGroup) {
    }

    private WindowManager getWindowManager() {
        if (this.Ua == null) {
            this.Ua = (WindowManager) this.mContext.getSystemService("window");
        }
        return this.Ua;
    }

    private static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        int i3 = 0;
        int i4 = i3;
        View view = null;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (viewGroup2 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, viewGroup2);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            itemViewType = view.getMeasuredWidth();
            if (itemViewType >= i) {
                return i;
            }
            if (itemViewType > i4) {
                i4 = itemViewType;
            }
            i2++;
        }
        return i4;
    }

    @Deprecated
    protected LayoutAnimationController createDefaultFadeInAnimation() {
        return null;
    }

    @Deprecated
    protected LayoutAnimationController createDefaultFadeOutAnimation() {
        return null;
    }

    @Deprecated
    protected Animator getBackgroundAnimator(LayoutAnimationController layoutAnimationController, boolean z) {
        return null;
    }

    public void dismiss(boolean z) {
        dismiss();
    }

    @Deprecated
    protected Drawable getBlurBackground(Context context, View view) {
        return null;
    }
}
