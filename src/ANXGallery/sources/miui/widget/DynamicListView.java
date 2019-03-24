package miui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import miui.util.ArrayMap;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;

public class DynamicListView extends ListView {
    private static final int RC = 255;
    private static final TypeEvaluator<Rect> RD = new TypeEvaluator<Rect>() {
        private Rect Sp = new Rect();

        public Rect evaluate(float f, Rect rect, Rect rect2) {
            this.Sp.set(a(rect.left, rect2.left, f), a(rect.top, rect2.top, f), a(rect.right, rect2.right, f), a(rect.bottom, rect2.bottom, f));
            return this.Sp;
        }

        public int a(int i, int i2, float f) {
            return (int) (((float) i) + (f * ((float) (i2 - i))));
        }
    };
    private static final int RE = 5;
    private static final int RF = 50;
    private final int INVALID_ID = -1;
    private final int INVALID_POINTER_ID = -1;
    private int NW = 0;
    private float RG = 0.0f;
    private long RH = 200;
    private int RI = -1;
    private int RJ = -1;
    private int RK = 0;
    private boolean RL = false;
    private boolean RM = false;
    private int RN = 0;
    private int RP;
    private int RQ;
    private int RR = 0;
    private long RT = -1;
    private long RU = -1;
    private long RV = -1;
    private BitmapDrawable RX;
    private Rect RY;
    private Rect RZ;
    private Rect Sa = new Rect();
    private Rect Sb = new Rect();
    private boolean Sc = false;
    private Drawable Sd;
    private int Se;
    private OnScrollListener Sf;
    private ObjectAnimator Sg;
    private ObjectAnimator Sh;
    private RearrangeListener Si;
    private OnItemRemoveListener Sj;
    private Map<Long, Integer> Sk = new ArrayMap();
    private Bitmap Sl;
    private AnimatorListenerAdapter Sm = new AnimatorListenerAdapter() {
        private boolean qL;

        public void onAnimationStart(Animator animator) {
            DynamicListView.this.setEnabled(false);
            this.qL = false;
        }

        public void onAnimationEnd(Animator animator) {
            View viewForId = DynamicListView.this.getViewForId(DynamicListView.this.RU);
            if (viewForId != null) {
                viewForId.setVisibility(0);
            }
            DynamicListView.this.RT = -1;
            DynamicListView.this.RU = -1;
            DynamicListView.this.RV = -1;
            DynamicListView.this.RX = null;
            DynamicListView.this.setEnabled(true);
            DynamicListView.this.invalidate();
            DynamicListView.this.Sh = null;
            if (!this.qL && DynamicListView.this.Si != null) {
                DynamicListView.this.Si.onDragEnd();
            }
        }

        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            DynamicListView.this.Sh = null;
            this.qL = true;
        }
    };
    private Runnable Sn = new Runnable() {
        public void run() {
            if (DynamicListView.this.RM) {
                DynamicListView.this.smoothScrollBy(DynamicListView.this.RN, 10);
                DynamicListView.this.removeCallbacks(this);
                DynamicListView.this.postDelayed(this, 5);
            }
        }
    };
    private OnScrollListener So = new OnScrollListener() {
        private int SF;
        private int Sw = -1;
        private int Sx = -1;
        private int Sy;
        private int Sz;

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            int i4;
            if (DynamicListView.this.Sf != null) {
                DynamicListView.this.Sf.onScroll(absListView, i, i2, i3);
            }
            this.Sy = i;
            this.Sz = i2;
            if (this.Sw == -1) {
                i4 = this.Sy;
            } else {
                i4 = this.Sw;
            }
            this.Sw = i4;
            if (this.Sx == -1) {
                i4 = this.Sz;
            } else {
                i4 = this.Sx;
            }
            this.Sx = i4;
            eN();
            eO();
            this.Sw = this.Sy;
            this.Sx = this.Sz;
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (DynamicListView.this.Sf != null) {
                DynamicListView.this.Sf.onScrollStateChanged(absListView, i);
            }
            this.SF = i;
            DynamicListView.this.NW = i;
            eM();
        }

        private void eM() {
            if (this.Sz > 0 && this.SF == 0) {
                if (DynamicListView.this.RL && DynamicListView.this.RM) {
                    DynamicListView.this.eL();
                } else if (DynamicListView.this.Sc) {
                    DynamicListView.this.eJ();
                }
            }
        }

        public void eN() {
            if (this.Sy != this.Sw && DynamicListView.this.RL && DynamicListView.this.RU != -1) {
                DynamicListView.this.i(DynamicListView.this.RU);
                DynamicListView.this.eI();
            }
        }

        public void eO() {
            if (this.Sy + this.Sz != this.Sw + this.Sx && DynamicListView.this.RL && DynamicListView.this.RU != -1) {
                DynamicListView.this.i(DynamicListView.this.RU);
                DynamicListView.this.eI();
            }
        }
    };
    private int qO = -1;
    private Paint rl = new Paint();

    public interface OnItemRemoveListener {
        void onItemRemove(List<Long> list);
    }

    public interface RearrangeListener {
        void onDragEnd();

        void onDragStart();

        void onOrderChanged(int i, int i2);
    }

    public DynamicListView(Context context) {
        super(context);
        d(context);
    }

    public DynamicListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        d(context);
    }

    public DynamicListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context);
    }

    private void d(Context context) {
        super.setOnScrollListener(this.So);
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        this.RQ = (int) (5.0f * displayMetrics.density);
        this.RP = (int) (1.5f * ((float) this.RQ));
        this.RR = (int) (50.0f * displayMetrics.density);
        this.Sd = AttributeResolver.resolveDrawable(context, R.attr.dynamicListviewDraggingItemShadow);
        if (this.Sd == null) {
            if (ViewUtils.isNightMode(context)) {
                this.Sd = resources.getDrawable(R.drawable.dynamic_listview_dragging_item_shadow_dark);
            } else {
                this.Sd = resources.getDrawable(R.drawable.dynamic_listview_dragging_item_shadow_light);
            }
        }
        this.Se = this.Sd.getIntrinsicHeight();
    }

    public void setDuration(long j) {
        this.RH = j;
    }

    public void setScaleFactor(float f) {
        this.RG = f;
    }

    public void startDragging(int i) {
        if (this.Sh != null && this.Sh.isRunning()) {
            this.Sh.end();
            this.Sm.onAnimationEnd(this.Sh);
        }
        this.RK = 0;
        View ap = ap(i);
        this.RU = getAdapter().getItemId(i);
        this.RX = n(ap);
        eH();
        ap.setVisibility(4);
        this.RL = true;
        i(this.RU);
        if (this.Si != null) {
            this.Si.onDragStart();
        }
    }

    private void eH() {
        Rect rect = new Rect(this.RZ);
        int height = (int) ((((float) rect.height()) * this.RG) * 0.5f);
        rect.set(rect.left, rect.top - height, rect.right + (((int) ((((float) rect.width()) * this.RG) * 0.5f)) * 2), rect.bottom + height);
        this.RY.set(rect);
        this.RZ.set(rect);
        this.Sg = ObjectAnimator.ofObject(this, "HoverCellBounds", RD, new Object[]{rect});
        this.Sg.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? this.RH : 0);
        this.Sg.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DynamicListView.this.Sd.setAlpha((int) (valueAnimator.getAnimatedFraction() * 255.0f));
            }
        });
        this.Sg.addListener(new AnimatorListenerAdapter() {
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                DynamicListView.this.Sg = null;
            }

            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DynamicListView.this.Sg = null;
            }
        });
        this.Sg.start();
    }

    public Rect getHoverCellBounds() {
        return this.RX.getBounds();
    }

    public void setHoverCellBounds(Rect rect) {
        this.Sb.set(this.Sa);
        this.RX.setBounds(rect);
        this.Sa.set(rect.left, rect.top - (this.Se / 2), rect.right, rect.bottom + (this.Se / 2));
        this.Sd.setBounds(this.Sa);
        this.Sb.union(this.Sa);
        invalidate(this.Sb);
    }

    private BitmapDrawable n(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        int top = view.getTop();
        int left = view.getLeft();
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), o(view));
        this.RZ = new Rect(left, top, width + left, height + top);
        this.RY = new Rect(this.RZ);
        bitmapDrawable.setBounds(this.RY);
        return bitmapDrawable;
    }

    private Bitmap o(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private void i(long j) {
        int positionForId = getPositionForId(j);
        BaseAdapter baseAdapter = (BaseAdapter) getAdapter();
        this.RT = baseAdapter.getItemId(positionForId - 1);
        this.RV = baseAdapter.getItemId(positionForId + 1);
    }

    public View getViewForId(long j) {
        int firstVisiblePosition = getFirstVisiblePosition();
        BaseAdapter baseAdapter = (BaseAdapter) getAdapter();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (baseAdapter.getItemId(firstVisiblePosition + i) == j) {
                return childAt;
            }
        }
        return null;
    }

    public int getPositionForId(long j) {
        View viewForId = getViewForId(j);
        if (viewForId == null) {
            return -1;
        }
        return getPositionForView(viewForId);
    }

    private View ap(int i) {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (i < firstVisiblePosition || i > getLastVisiblePosition()) {
            return null;
        }
        return getChildAt(i - firstVisiblePosition);
    }

    private List<View> a(List<Integer> list) {
        List<View> arrayList = new ArrayList(1);
        for (Integer intValue : list) {
            View ap = ap(intValue.intValue());
            if (ap != null) {
                arrayList.add(ap);
            }
        }
        return arrayList;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.RX != null) {
            this.Sd.draw(canvas);
            this.RX.draw(canvas);
        }
        if (this.Sl != null) {
            canvas.drawBitmap(this.Sl, 0.0f, 0.0f, this.rl);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & RC;
        if (action != 6) {
            switch (action) {
                case 0:
                    this.RJ = (int) motionEvent.getY();
                    this.qO = motionEvent.getPointerId(0);
                    break;
                case 1:
                    eJ();
                    break;
                case 2:
                    if (this.qO != -1) {
                        this.RI = (int) motionEvent.getY(motionEvent.findPointerIndex(this.qO));
                        action = this.RI - this.RJ;
                        if (this.RL) {
                            if (this.Sg != null && this.Sg.isRunning()) {
                                this.Sg.end();
                            }
                            int i = (this.RZ.top + action) + this.RK;
                            if (i < 0) {
                                i = 0;
                            } else if (i > getHeight() - this.RY.height()) {
                                i = getHeight() - this.RY.height();
                            }
                            this.RY.offsetTo(this.RZ.left, i);
                            setHoverCellBounds(this.RY);
                            eI();
                            this.RM = false;
                            eL();
                            return false;
                        }
                    }
                    break;
                case 3:
                    eK();
                    break;
            }
        } else if (motionEvent.getPointerId((motionEvent.getAction() & 65280) >> 8) == this.qO) {
            eJ();
        }
        return super.onTouchEvent(motionEvent);
    }

    private void eI() {
        final int i = this.RI - this.RJ;
        int i2 = (this.RZ.top + this.RK) + i;
        int height = this.RY.height() / 2;
        View viewForId = getViewForId(this.RV);
        View viewForId2 = getViewForId(this.RU);
        View viewForId3 = getViewForId(this.RT);
        int i3 = 1;
        int i4 = (viewForId == null || i2 + height <= viewForId.getTop()) ? 0 : 1;
        if (viewForId3 == null || i2 - height >= viewForId3.getTop()) {
            i3 = 0;
        }
        if (i4 != 0 || i3 != 0) {
            long j = i4 != 0 ? this.RV : this.RT;
            if (i4 == 0) {
                viewForId = viewForId3;
            }
            int positionForView = getPositionForView(viewForId2);
            if (this.Si != null) {
                this.Si.onOrderChanged(positionForView, getPositionForView(viewForId));
            }
            ((BaseAdapter) getAdapter()).notifyDataSetChanged();
            this.RJ = this.RI;
            i4 = viewForId.getTop();
            viewForId2.setVisibility(0);
            viewForId.setVisibility(4);
            i(this.RU);
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            final ViewTreeObserver viewTreeObserver2 = viewTreeObserver;
            final long j2 = j;
            viewTreeObserver.addOnPreDrawListener(new OnPreDrawListener() {
                public boolean onPreDraw() {
                    viewTreeObserver2.removeOnPreDrawListener(this);
                    View viewForId = DynamicListView.this.getViewForId(j2);
                    if (viewForId != null) {
                        DynamicListView.b(DynamicListView.this, i);
                        viewForId.setTranslationY((float) (i4 - viewForId.getTop()));
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(viewForId, View.TRANSLATION_Y, new float[]{0.0f});
                        ofFloat.setDuration(DynamicListView.this.RH);
                        ofFloat.start();
                    }
                    return true;
                }
            });
        }
    }

    private void eJ() {
        View viewForId = getViewForId(this.RU);
        if (this.RL || this.Sc) {
            this.RL = false;
            this.Sc = false;
            this.RM = false;
            this.qO = -1;
            if (this.NW != 0) {
                this.Sc = true;
                return;
            }
            this.RY.offsetTo(this.RZ.left, viewForId.getTop());
            this.RY.set(this.RZ.left, viewForId.getTop(), this.RZ.left + viewForId.getWidth(), viewForId.getTop() + viewForId.getHeight());
            this.Sh = ObjectAnimator.ofObject(this, "HoverCellBounds", RD, new Object[]{this.RY});
            this.Sh.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? this.RH : 0);
            this.Sh.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DynamicListView.this.Sd.setAlpha((int) ((1.0f - valueAnimator.getAnimatedFraction()) * 255.0f));
                    DynamicListView.this.invalidate();
                }
            });
            this.Sh.addListener(this.Sm);
            this.Sh.start();
        } else {
            eK();
        }
    }

    private void eK() {
        View viewForId = getViewForId(this.RU);
        if (this.RL) {
            this.RT = -1;
            this.RU = -1;
            this.RV = -1;
            viewForId.setVisibility(0);
            this.RX = null;
            invalidate();
        }
        this.RL = false;
        this.RM = false;
        this.qO = -1;
    }

    private void eL() {
        this.RM = handleMobileCellScroll(this.RY);
    }

    public boolean handleMobileCellScroll(Rect rect) {
        int computeVerticalScrollOffset = computeVerticalScrollOffset();
        int height = getHeight();
        int computeVerticalScrollExtent = computeVerticalScrollExtent();
        int computeVerticalScrollRange = computeVerticalScrollRange();
        int i = rect.top;
        int height2 = rect.height();
        if (i > this.RR * 2 || computeVerticalScrollOffset <= 0) {
            i += height2;
            if (i < height - (this.RR * 2) || computeVerticalScrollOffset + computeVerticalScrollExtent >= computeVerticalScrollRange) {
                removeCallbacks(this.Sn);
                return false;
            }
            this.RN = this.RQ;
            if (i >= height - this.RR) {
                this.RN = this.RP;
            }
            postDelayed(this.Sn, 10);
            return true;
        }
        this.RN = -this.RQ;
        if (i <= this.RR) {
            this.RN = -this.RP;
        }
        postDelayed(this.Sn, 10);
        return true;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.Sf = onScrollListener;
    }

    public void removeItems(List<Long> list) {
        removeItems(list, null);
    }

    public void removeItems(List<Long> list, List<Long> list2) {
        int i;
        int i2;
        int i3;
        int positionForId;
        List<Long> list3 = list;
        List<Long> list4 = list2;
        final List arrayList = new ArrayList(list3);
        final List arrayList2 = new ArrayList(list.size());
        List arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            i = 1;
            i2 = 0;
            if (!it.hasNext()) {
                i3 = 0;
                break;
            }
            Long l = (Long) it.next();
            positionForId = getPositionForId(l.longValue());
            if (positionForId == -1) {
                i3 = 1;
                break;
            }
            arrayList2.add(Integer.valueOf(positionForId));
            if (list4 != null && list4.contains(l)) {
                arrayList3.add(Integer.valueOf(positionForId));
            }
        }
        if (i3 != 0) {
            this.Sl = o(this);
            this.Sj.onItemRemove(list3);
            ((BaseAdapter) getAdapter()).notifyDataSetChanged();
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "LastStateAlpha", new int[]{0});
            ofInt.setDuration(this.RH);
            ofInt.start();
            ofInt.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DynamicListView.this.Sl = null;
                    DynamicListView.this.rl.setAlpha(DynamicListView.RC);
                }
            });
            return;
        }
        Collections.sort(arrayList2);
        List a = a(arrayList2);
        List a2 = a(arrayList3);
        if (!a.isEmpty()) {
            setEnabled(false);
            AnimatorSet animatorSet = new AnimatorSet();
            List arrayList4 = new ArrayList(a.size());
            Object arrayList5 = new ArrayList(a.size());
            positionForId = a.size();
            int i4 = 0;
            while (i4 < positionForId) {
                int i5;
                final View view = (View) a.get(i4);
                if (a2.contains(view)) {
                    i5 = -view.getWidth();
                } else {
                    i5 = view.getWidth();
                }
                Property property = View.TRANSLATION_X;
                float[] fArr = new float[i];
                fArr[i2] = (float) i5;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, fArr);
                ofFloat.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        view.setLayerType(2, null);
                    }

                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        view.setLayerType(0, null);
                    }

                    public void onAnimationCancel(Animator animator) {
                        super.onAnimationCancel(animator);
                        view.setLayerType(0, null);
                    }
                });
                arrayList4.add(ofFloat);
                ofFloat.setDuration(this.RH);
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
                ofFloat2.setDuration((this.RH / 3) * ((long) i4));
                arrayList5.add(ofFloat2);
                i4++;
                i = 1;
                i2 = 0;
            }
            animatorSet.playTogether(arrayList5);
            for (int i6 = 0; i6 < positionForId; i6++) {
                animatorSet.play((Animator) arrayList4.get(i6)).after((Animator) arrayList5.get(i6));
            }
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    DynamicListView.this.a(arrayList, arrayList2);
                }
            });
            animatorSet.start();
        }
    }

    public int getLastStateAlpha() {
        return this.rl.getAlpha();
    }

    public void setLastStateAlpha(int i) {
        this.rl.setAlpha(i);
        invalidate();
    }

    private void a(List<Long> list, final List<Integer> list2) {
        final BaseAdapter baseAdapter = (BaseAdapter) getAdapter();
        List arrayList = new ArrayList(1);
        for (Integer intValue : list2) {
            View ap = ap(intValue.intValue());
            if (ap != null) {
                arrayList.add(ap);
            }
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        this.Sk.clear();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            childAt.setTranslationX(0.0f);
            if (!arrayList.contains(childAt)) {
                this.Sk.put(Long.valueOf(baseAdapter.getItemId(firstVisiblePosition + i)), Integer.valueOf(childAt.getTop()));
            }
        }
        this.Sj.onItemRemove(list);
        baseAdapter.notifyDataSetChanged();
        getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                DynamicListView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                int firstVisiblePosition = DynamicListView.this.getFirstVisiblePosition();
                int childCount = DynamicListView.this.getChildCount();
                Collection arrayList = new ArrayList();
                for (int i = 0; i < childCount; i++) {
                    final View childAt = DynamicListView.this.getChildAt(i);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, View.TRANSLATION_Y, new float[]{0.0f});
                    ofFloat.addListener(new AnimatorListenerAdapter() {
                        public void onAnimationStart(Animator animator) {
                            super.onAnimationStart(animator);
                            childAt.setLayerType(2, null);
                        }

                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            childAt.setLayerType(0, null);
                        }

                        public void onAnimationCancel(Animator animator) {
                            super.onAnimationCancel(animator);
                            childAt.setLayerType(0, null);
                        }
                    });
                    arrayList.add(ofFloat);
                    Integer num = (Integer) DynamicListView.this.Sk.get(Long.valueOf(baseAdapter.getItemId(firstVisiblePosition + i)));
                    int top = childAt.getTop();
                    if (num == null) {
                        childAt.setTranslationY((float) (Integer.valueOf(((childAt.getHeight() + DynamicListView.this.getDividerHeight()) * list2.size()) + top).intValue() - top));
                    } else if (num.intValue() != top) {
                        childAt.setTranslationY((float) (num.intValue() - top));
                    }
                }
                DynamicListView.this.Sk.clear();
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(arrayList);
                animatorSet.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        DynamicListView.this.setEnabled(true);
                    }
                });
                animatorSet.setDuration(DynamicListView.this.RH);
                animatorSet.start();
                return true;
            }
        });
    }

    public void setOnItemRemoveListener(OnItemRemoveListener onItemRemoveListener) {
        this.Sj = onItemRemoveListener;
    }

    public void setRearrangeListener(RearrangeListener rearrangeListener) {
        this.Si = rearrangeListener;
    }
}
