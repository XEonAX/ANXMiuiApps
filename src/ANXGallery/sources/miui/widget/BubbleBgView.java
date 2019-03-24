package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.util.DeviceHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

public class BubbleBgView extends View {
    private static final int OY = 8;
    private static final int OZ = 0;
    private static final int Pa = 1;
    private static final int Pb = 2;
    private static final int Pc = 3;
    private static final int Pd = 4;
    private static final int Pe = 5;
    private static final int Pf = 6;
    private static final int Pg = 7;
    private static final int[] Ph;
    private static final int Pj = 1;
    private ArrayList<Bubble> Pi;
    private Handler mHandler;
    private Paint rl;

    private static class Bubble {
        private static final int DURATION = 3000;
        private static final int Pm = 2000;
        private static final Random Pt = new Random(System.currentTimeMillis());
        private final int Pn;
        private final int Po;
        private final int Pp;
        private final int Pq;
        private final int Pr;
        private final int Ps;
        private final int color;
        private final int radius;
        private AnimatorSet tk;

        public Bubble(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.Pn = i;
            this.Po = i2;
            this.radius = i3;
            this.Pq = i4 + i;
            this.Pp = i5 + i;
            this.Ps = i6 + i2;
            this.Pr = i7 + i2;
            this.color = i8;
            ek();
        }

        private void ek() {
            int nextInt = Pt.nextInt(1000) + 2000;
            this.tk = new AnimatorSet();
            long j = (long) nextInt;
            new ValueAnimator().setDuration(j);
            new ValueAnimator().setDuration(j);
            this.tk.playTogether(new Animator[]{r1, r0});
            this.tk.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                    Bubble.this.ek();
                }

                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationRepeat(Animator animator) {
                }
            });
            this.tk.cancel();
            nextInt = Pt.nextInt(this.Pp - this.Pq) + this.Pq;
            int nextInt2 = Pt.nextInt(this.Pr - this.Ps) + this.Ps;
            ((ValueAnimator) this.tk.getChildAnimations().get(0)).setFloatValues(new float[]{(float) this.Pn, (float) nextInt, (float) this.Pn});
            ((ValueAnimator) this.tk.getChildAnimations().get(1)).setFloatValues(new float[]{(float) this.Po, (float) nextInt2, (float) this.Po});
            this.tk.start();
        }

        private float el() {
            if (this.tk == null) {
                return (float) this.Pn;
            }
            return ((Float) ((ValueAnimator) this.tk.getChildAnimations().get(0)).getAnimatedValue()).floatValue();
        }

        private float em() {
            if (this.tk == null) {
                return (float) this.Po;
            }
            return ((Float) ((ValueAnimator) this.tk.getChildAnimations().get(1)).getAnimatedValue()).floatValue();
        }
    }

    static {
        if (DeviceHelper.IS_TABLET) {
            Ph = new int[]{BaiduSceneResult.CASTLE, 197, 198, 0, 30, -80, 20, -9703, 160, -32, 230, 0, 30, 0, 100, 872358400, 591, 24, 367, 0, 30, -50, 50, -419432704, 805, 273, 173, -30, 10, -80, 20, 1929561904, 326, -68, 417, 0, 30, 0, 50, -637576704};
        } else {
            Ph = new int[]{39, 161, 103, 0, 30, -80, 20, -9703, 103, 39, BaiduSceneResult.BRIDGE, 0, 30, 0, 100, 872358400, 302, 41, 211, 0, 30, -50, 50, -419432704, 411, 166, BaiduSceneResult.BICYCLE, -30, 10, -80, 20, 1929561904, 171, 226, 181, -15, 15, -20, 30, 1291385080, BaiduSceneResult.FILE_OTHER, 33, 195, 0, 30, 0, 50, -637576704};
        }
    }

    public BubbleBgView(Context context) {
        this(context, null);
    }

    public BubbleBgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleBgView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Pi = new ArrayList();
        this.rl = new Paint(1);
        this.mHandler = new Handler() {
            private static final int Pk = 100;

            public void handleMessage(Message message) {
                if (message.what == 1) {
                    BubbleBgView.this.invalidate();
                    BubbleBgView.this.mHandler.sendEmptyMessageDelayed(1, 10);
                }
            }
        };
        ej();
        this.mHandler.sendEmptyMessage(1);
    }

    private void ej() {
        float f = getResources().getDisplayMetrics().density;
        for (int i = 0; i < Ph.length; i += 8) {
            this.Pi.add(new Bubble((int) (((float) Ph[i + 0]) * f), (int) (((float) Ph[i + 1]) * f), (int) (((float) Ph[i + 2]) * f), Ph[i + 3], Ph[i + 4], Ph[i + 5], Ph[i + 6], Ph[i + 7]));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator it = this.Pi.iterator();
        while (it.hasNext()) {
            Bubble bubble = (Bubble) it.next();
            this.rl.setColor(bubble.color);
            canvas.drawCircle(bubble.el(), bubble.em(), (float) bubble.radius, this.rl);
        }
    }
}
