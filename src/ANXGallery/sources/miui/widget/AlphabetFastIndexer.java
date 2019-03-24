package miui.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import android.widget.WrapperListAdapter;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class AlphabetFastIndexer extends ImageView {
    private static final int OB = 1;
    private static final int OC = 1500;
    private static final String Ol = "♥";
    private static final String Ox = "#";
    public static final String STARRED_TITLE = "!";
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_NONE = 0;
    private int OA;
    private Runnable OD;
    private AdapterView<?> Om;
    private TextView On;
    private int Oo;
    private int Op;
    private boolean Oq;
    private int Or;
    private int Os;
    private int Ot;
    private int Ou;
    private Drawable Ov;
    HashMap<Object, Integer> Ow;
    private AnimatorUpdateListener Oy;
    private TextHilighter Oz;
    private Handler mHandler;
    private int qR;

    private static class OnScrollerDecorator implements OnScrollListener {
        private final OnScrollListener OF;
        private final WeakReference<AlphabetFastIndexer> OG;

        public OnScrollerDecorator(AlphabetFastIndexer alphabetFastIndexer, OnScrollListener onScrollListener) {
            this.OG = new WeakReference(alphabetFastIndexer);
            this.OF = onScrollListener;
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlphabetFastIndexer alphabetFastIndexer = (AlphabetFastIndexer) this.OG.get();
            if (alphabetFastIndexer != null) {
                alphabetFastIndexer.ec();
            }
            if (this.OF != null) {
                this.OF.onScroll(absListView, i, i2, i3);
            }
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
            AlphabetFastIndexer alphabetFastIndexer = (AlphabetFastIndexer) this.OG.get();
            if (alphabetFastIndexer != null) {
                alphabetFastIndexer.OA = i;
            }
            if (this.OF != null) {
                this.OF.onScrollStateChanged(absListView, i);
            }
        }
    }

    private static class TextHilighter {
        Rect OH = new Rect();
        Rect OI = new Rect();
        String[] OJ;
        int OK;
        int OL;
        float ON;
        float OO;
        Paint rl = new Paint();
        int vC;
        ValueAnimator vE;

        TextHilighter(Context context, TypedArray typedArray) {
            Resources resources = context.getResources();
            CharSequence[] textArray = typedArray.getTextArray(R.styleable.AlphabetFastIndexer_indexerTable);
            if (textArray != null) {
                int i = 0;
                this.OJ = new String[textArray.length];
                int length = textArray.length;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    this.OJ[i2] = textArray[i].toString();
                    i++;
                    i2 = i3;
                }
            } else {
                this.OJ = resources.getStringArray(R.array.alphabet_table);
            }
            if (this.OJ.length > 1) {
                String str = this.OJ[this.OJ.length - 1];
            }
            this.vC = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextColor, resources.getColor(R.color.alphabet_indexer_text_color));
            this.OK = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextActivatedColor, resources.getColor(R.color.alphabet_indexer_activated_text_color));
            this.OL = typedArray.getColor(R.styleable.AlphabetFastIndexer_indexerTextHighlightColor, resources.getColor(R.color.alphabet_indexer_highlight_text_color));
            this.rl.setTextSize(typedArray.getDimension(R.styleable.AlphabetFastIndexer_indexerTextSize, resources.getDimension(R.dimen.alphabet_indexer_text_size)));
            this.rl.setAntiAlias(true);
            this.rl.setTextAlign(Align.CENTER);
            if (DeviceHelper.IS_INTERNATIONAL_BUILD) {
                this.rl.setTypeface(Typeface.DEFAULT_BOLD);
            } else {
                this.rl.setTypeface(Typeface.create("miui", 1));
            }
            c(0.0f, 0.0f);
        }

        void c(float f, float f2) {
            this.ON = f;
            this.OO = f2;
        }

        void a(Canvas canvas, boolean z, int i, float f, float f2) {
            Paint paint = this.rl;
            String str = TextUtils.equals(this.OJ[i], AlphabetFastIndexer.STARRED_TITLE) ? AlphabetFastIndexer.Ol : this.OJ[i];
            paint.getTextBounds(str, 0, str.length(), this.OI);
            float width = ((float) this.OI.width()) / 2.0f;
            float height = ((float) this.OI.height()) / 2.0f;
            this.OH.set((int) ((this.ON - width) + 1.0f), (int) (this.OO - height), (int) ((this.ON + width) + 1.0f), (int) (this.OO + height));
            if (z) {
                paint.setColor(this.OK);
            } else if (this.OH.intersect((int) (f - width), (int) (f2 - height), (int) (width + f), (int) (height + f2))) {
                paint.setColor(this.OL);
            } else {
                paint.setColor(this.vC);
            }
            if (str.equals(AlphabetFastIndexer.Ol)) {
                paint.setColorFilter(new PorterDuffColorFilter(paint.getColor(), Mode.SRC_IN));
            } else {
                paint.setColorFilter(null);
            }
            canvas.drawText(str, f, f2 - (((float) (this.OI.top + this.OI.bottom)) / 2.0f), paint);
        }

        void a(float f, AnimatorUpdateListener animatorUpdateListener) {
            float f2;
            if (this.vE != null) {
                this.vE.cancel();
            }
            if (this.OH == null) {
                f2 = f;
            } else {
                f2 = ((float) (this.OH.top + this.OH.bottom)) / 2.0f;
            }
            this.vE = ValueAnimator.ofFloat(new float[]{f2, f});
            this.vE.addUpdateListener(animatorUpdateListener);
            this.vE.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 200 : 0);
            this.vE.start();
        }
    }

    public AlphabetFastIndexer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlphabetFastIndexer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Ow = new HashMap();
        this.Oy = new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AlphabetFastIndexer.this.Oz.c(((float) AlphabetFastIndexer.this.getWidth()) / 2.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
                AlphabetFastIndexer.this.postInvalidate();
            }
        };
        this.OA = 0;
        this.qR = 0;
        this.OD = new Runnable() {
            public void run() {
                AlphabetFastIndexer.this.ec();
            }
        };
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                if (message.what == 1 && AlphabetFastIndexer.this.On != null) {
                    AlphabetFastIndexer.this.On.setVisibility(8);
                }
            }
        };
        Resources resources = context.getResources();
        if (attributeSet.getStyleAttribute() != 0) {
            i = attributeSet.getStyleAttribute();
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AlphabetFastIndexer, 0, i);
        this.Oz = new TextHilighter(context, obtainStyledAttributes);
        this.Oq = obtainStyledAttributes.getBoolean(R.styleable.AlphabetFastIndexer_drawOverlay, true);
        if (this.Oq) {
            this.Or = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.AlphabetFastIndexer_overlayMarginLeft, resources.getDimensionPixelOffset(R.dimen.alphabet_indexer_overlay_offset));
            this.Os = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.AlphabetFastIndexer_overlayMarginTop, resources.getDimensionPixelOffset(R.dimen.alphabet_indexer_overlay_padding_top));
            this.Ot = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AlphabetFastIndexer_overlayTextSize, resources.getDimensionPixelSize(R.dimen.alphabet_indexer_overlay_text_size));
            this.Ou = obtainStyledAttributes.getColor(R.styleable.AlphabetFastIndexer_overlayTextColor, resources.getColor(R.color.alphabet_indexer_overlay_text_color));
            this.Ov = obtainStyledAttributes.getDrawable(R.styleable.AlphabetFastIndexer_overlayBackground);
            if (this.Ov == null) {
                this.Ov = resources.getDrawable(R.drawable.alphabet_indexer_overlay);
            }
        }
        obtainStyledAttributes.recycle();
        this.Op = 8388613;
    }

    public void setVerticalPosition(boolean z) {
        this.Op = z ? 8388613 : 8388611;
    }

    public void setOverlayOffset(int i, int i2) {
        this.Or = i;
        this.Os = i2;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.Oo = -1;
        post(this.OD);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        if (height > 0) {
            String[] strArr = this.Oz.OJ;
            float length = ((float) height) / ((float) strArr.length);
            float width = ((float) getWidth()) / 2.0f;
            float f = ((float) paddingTop) + (length / 2.0f);
            for (int i = 0; i < strArr.length; i++) {
                this.Oz.a(canvas, isPressed(), i, width, f);
                f += length;
            }
        }
    }

    public void attatch(AdapterView<?> adapterView) {
        if (this.Om != adapterView) {
            detach();
            if (adapterView != null) {
                this.Oo = -1;
                this.Om = adapterView;
                Context context = getContext();
                FrameLayout frameLayout = (FrameLayout) getParent();
                if (this.Oq) {
                    this.On = new TextView(context);
                    LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
                    layoutParams.leftMargin = this.Or;
                    layoutParams.topMargin = this.Os;
                    this.On.setLayoutParams(layoutParams);
                    this.On.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                    this.On.setBackground(this.Ov);
                    this.On.setGravity(17);
                    this.On.setTextSize(0, (float) this.Ot);
                    this.On.setTextColor(this.Ou);
                    this.On.setVisibility(8);
                    frameLayout.addView(this.On);
                }
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
                layoutParams2.gravity = 48 | this.Op;
                setLayoutParams(layoutParams2);
                ec();
            }
        }
    }

    public void detach() {
        if (this.Om != null) {
            stop(0);
            FrameLayout frameLayout = (FrameLayout) getParent();
            if (this.On != null) {
                frameLayout.removeView(this.On);
            }
            setVisibility(8);
            this.Om = null;
        }
    }

    public OnScrollListener decorateScrollListener(OnScrollListener onScrollListener) {
        return new OnScrollerDecorator(this, onScrollListener);
    }

    public void drawThumb(CharSequence charSequence) {
        if (this.qR == 0 && this.OA == 2) {
            c(charSequence);
        }
    }

    private void ec() {
        if (this.Om != null) {
            SectionIndexer ed = ed();
            int i = 0;
            if (ed != null) {
                int sectionForPosition = ed.getSectionForPosition(this.Om.getFirstVisiblePosition() - ee());
                if (sectionForPosition != -1) {
                    String str = (String) ed.getSections()[sectionForPosition];
                    if (!TextUtils.isEmpty(str)) {
                        for (sectionForPosition = 0; sectionForPosition < this.Oz.OJ.length; sectionForPosition++) {
                            if (TextUtils.equals(str, this.Oz.OJ[sectionForPosition])) {
                                i = sectionForPosition;
                                break;
                            }
                        }
                    }
                }
            }
            if (this.Oo != i) {
                this.Oo = i;
                if (1 != this.qR) {
                    ai(this.Oo);
                }
                invalidate();
            }
        }
    }

    public int getIndexerIntrinsicWidth() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicWidth() : 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private SectionIndexer ed() {
        SectionIndexer sectionIndexer = null;
        if (this.Om == null) {
            return null;
        }
        boolean z;
        Adapter adapter = this.Om.getAdapter();
        while (true) {
            z = adapter instanceof SectionIndexer;
            if (!z && (adapter instanceof WrapperListAdapter)) {
                adapter = ((WrapperListAdapter) adapter).getWrappedAdapter();
            } else if (z) {
                sectionIndexer = (SectionIndexer) adapter;
            }
        }
        if (z) {
        }
        return sectionIndexer;
    }

    private int ee() {
        if (this.Om instanceof ListView) {
            return ((ListView) this.Om).getHeaderViewsCount();
        }
        return 0;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Om == null) {
            stop(0);
            return false;
        }
        SectionIndexer ed = ed();
        if (ed == null) {
            stop(0);
            return false;
        }
        switch (255 & motionEvent.getAction()) {
            case 0:
                this.qR = 1;
                setPressed(true);
                break;
            case 1:
            case 3:
                ai(this.Oo);
                stop(OC);
                break;
            case 2:
                break;
            default:
                stop(OC);
                break;
        }
        int a = a(motionEvent.getY(), ed);
        if (a < 0) {
            this.Om.setSelection(0);
        } else {
            a(ed, a);
            if (this.Oz != null && motionEvent.getY() > ((float) (getTop() + getPaddingTop())) && motionEvent.getY() < ((float) (getBottom() - getPaddingBottom()))) {
                this.Oz.c((float) (getWidth() / 2), motionEvent.getY());
                postInvalidate();
            }
        }
        return true;
    }

    void stop(int i) {
        setPressed(false);
        this.qR = 0;
        postInvalidate();
        this.mHandler.removeMessages(1);
        if (i > 0) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), (long) i);
        } else if (this.On != null) {
            this.On.setVisibility(8);
        }
    }

    private int a(float f, SectionIndexer sectionIndexer) {
        Object[] sections = sectionIndexer.getSections();
        if (sections == null) {
            return -1;
        }
        int paddingTop = getPaddingTop();
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        if (height <= 0) {
            return -1;
        }
        int length = (int) (((float) this.Oz.OJ.length) * ((f - ((float) paddingTop)) / ((float) height)));
        if (length < 0) {
            return -1;
        }
        if (length >= this.Oz.OJ.length) {
            return sections.length;
        }
        this.Ow.clear();
        int i = 0;
        for (paddingTop = 0; paddingTop < sections.length; paddingTop++) {
            this.Ow.put(sections[paddingTop], Integer.valueOf(paddingTop));
        }
        String[] strArr = this.Oz.OJ;
        paddingTop = 0;
        while (true) {
            int i2 = paddingTop + length;
            if (i2 >= strArr.length && length < paddingTop) {
                break;
            }
            height = length - paddingTop;
            if (i2 >= strArr.length || !this.Ow.containsKey(strArr[i2])) {
                if (height >= 0 && this.Ow.containsKey(strArr[height])) {
                    i = ((Integer) this.Ow.get(strArr[height])).intValue();
                    break;
                }
                paddingTop++;
            } else {
                i = ((Integer) this.Ow.get(strArr[i2])).intValue();
                break;
            }
        }
        return i;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0096  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(SectionIndexer sectionIndexer, int i) {
        int i2;
        SectionIndexer sectionIndexer2 = sectionIndexer;
        int i3 = i;
        int count = this.Om.getCount();
        int ee = ee();
        float f = (1.0f / ((float) count)) / 8.0f;
        Object[] sections = sectionIndexer.getSections();
        if (sections == null || sections.length <= 1) {
            int round = Math.round((float) (i3 * count));
            if (this.Om instanceof ExpandableListView) {
                ExpandableListView expandableListView = (ExpandableListView) this.Om;
                expandableListView.setSelectionFromTop(expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(round + ee)), 0);
            } else if (this.Om instanceof ListView) {
                ((ListView) this.Om).setSelectionFromTop(round + ee, 0);
            } else {
                this.Om.setSelection(round + ee);
            }
            i2 = -1;
        } else {
            int i4;
            int positionForSection;
            int i5;
            int i6;
            int i7;
            float f2;
            float f3;
            float f4;
            float f5;
            int length = sections.length;
            if (i3 >= length) {
                i4 = length - 1;
            } else {
                i4 = i3;
            }
            i2 = sectionIndexer2.getPositionForSection(i4);
            int i8 = i4 + 1;
            if (i4 < length - 1) {
                positionForSection = sectionIndexer2.getPositionForSection(i8);
            } else {
                positionForSection = count;
            }
            if (positionForSection == i2) {
                i5 = i4;
                i6 = i2;
                while (i5 > 0) {
                    i5--;
                    i6 = sectionIndexer2.getPositionForSection(i5);
                    if (i6 == i2) {
                        if (i5 == 0) {
                            i5 = i4;
                            i2 = 0;
                            break;
                        }
                    }
                }
                i2 = i4;
                i5 = i2;
                i7 = i8;
                i8++;
                while (i8 < length && sectionIndexer2.getPositionForSection(i8) == positionForSection) {
                    i8++;
                    i7++;
                }
                f2 = (float) length;
                f3 = ((float) i5) / f2;
                f4 = ((float) i7) / f2;
                f5 = ((float) i3) / f2;
                if (i5 != i4 || f5 - f3 >= f) {
                    i6 += Math.round((((float) (positionForSection - i6)) * (f5 - f3)) / (f4 - f3));
                }
                i3 = count - 1;
                if (i6 > i3) {
                    i6 = i3;
                }
                if (!(this.Om instanceof ExpandableListView)) {
                    ExpandableListView expandableListView2 = (ExpandableListView) this.Om;
                    expandableListView2.setSelectionFromTop(expandableListView2.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(i6 + ee)), 0);
                } else if (this.Om instanceof ListView) {
                    ((ListView) this.Om).setSelectionFromTop(i6 + ee, 0);
                } else {
                    this.Om.setSelection(i6 + ee);
                }
            } else {
                i5 = i4;
                i6 = i2;
            }
            i2 = i5;
            i7 = i8;
            i8++;
            while (i8 < length) {
                i8++;
                i7++;
            }
            f2 = (float) length;
            f3 = ((float) i5) / f2;
            f4 = ((float) i7) / f2;
            f5 = ((float) i3) / f2;
            i6 += Math.round((((float) (positionForSection - i6)) * (f5 - f3)) / (f4 - f3));
            i3 = count - 1;
            if (i6 > i3) {
            }
            if (!(this.Om instanceof ExpandableListView)) {
            }
        }
        if (i2 >= 0 && sections != null) {
            Object obj = sections[i2].toString();
            if (!TextUtils.isEmpty(obj)) {
                c(obj.subSequence(0, 1));
            }
        }
    }

    private void c(CharSequence charSequence) {
        if (this.Om != null) {
            if (this.On != null) {
                if (TextUtils.equals(charSequence, STARRED_TITLE)) {
                    charSequence = Ol;
                }
                this.On.setText(charSequence);
            }
            if (getVisibility() == 0) {
                if (this.On != null) {
                    this.On.setVisibility(0);
                }
                this.mHandler.removeMessages(1);
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), 1500);
            }
        }
    }

    private void ai(int i) {
        if (this.Oz != null) {
            if (i < 0) {
                i = 0;
            }
            int paddingTop = getPaddingTop();
            float height = ((float) ((getHeight() - paddingTop) - getPaddingBottom())) / ((float) this.Oz.OJ.length);
            this.Oz.a((((((float) i) * height) + ((float) paddingTop)) + (height / 2.0f)) + 1.0f, this.Oy);
        }
    }
}
