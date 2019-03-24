package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import com.miui.internal.R;
import com.miui.internal.widget.ActionModeView;
import miui.util.AttributeResolver;

public class CircleProgressBar extends ProgressBar {
    private static final int PB = 300;
    private static final int Py = 10;
    private static final int Pz = 300;
    private RectF PC;
    private Path PD;
    private Animator PI;
    private int[] PJ;
    private Drawable[] PN;
    private Drawable[] PO;
    private Drawable[] PP;
    private OnProgressChangedListener PQ;
    private int PU;
    private Bitmap PV;
    private Canvas PX;
    private int PZ;
    private int Qa;
    private int Qb;
    private Drawable Qc;
    private Paint rl;

    public interface OnProgressChangedListener {
        void onProgressChanged();
    }

    public CircleProgressBar(Context context) {
        this(context, null);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.PD = new Path();
        this.Qb = ActionModeView.ANIMATION_DURATION;
        setIndeterminate(false);
        int resolveColor = AttributeResolver.resolveColor(context, R.attr.circleProgressBarColor);
        this.rl = new Paint();
        this.rl.setColor(resolveColor);
    }

    public void setProgressLevels(int[] iArr) {
        this.PJ = iArr;
    }

    public int getProgressLevelCount() {
        return this.PJ == null ? 1 : 1 + this.PJ.length;
    }

    public void setDrawablesForLevels(Drawable[] drawableArr, Drawable[] drawableArr2, Drawable[] drawableArr3) {
        this.PN = drawableArr;
        this.PO = drawableArr2;
        this.PP = drawableArr3;
        if (drawableArr != null) {
            for (Drawable mutate : drawableArr) {
                mutate.mutate();
            }
        }
        if (drawableArr2 != null) {
            for (Drawable mutate2 : drawableArr2) {
                mutate2.mutate();
            }
        }
        if (drawableArr3 != null) {
            for (Drawable mutate22 : drawableArr3) {
                mutate22.mutate();
            }
        }
        if (drawableArr2 != null) {
            for (Drawable drawable : drawableArr2) {
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getPaint().setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                } else if (drawable instanceof NinePatchDrawable) {
                    ((NinePatchDrawable) drawable).getPaint().setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                } else {
                    throw new IllegalArgumentException("'middles' must a bitmap or nine patch drawable.");
                }
            }
            this.PC = new RectF((float) (drawableArr2[0].getBounds().left - 5), (float) (drawableArr2[0].getBounds().top - 5), (float) (drawableArr2[0].getBounds().right + 5), (float) (drawableArr2[0].getBounds().bottom + 5));
        }
    }

    public void setDrawablesForLevels(int[] iArr, int[] iArr2, int[] iArr3) {
        setDrawablesForLevels(b(iArr), b(iArr2), b(iArr3));
    }

    private Drawable[] b(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        Resources resources = getContext().getResources();
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = resources.getDrawable(iArr[i]);
            drawableArr[i].setBounds(0, 0, drawableArr[i].getIntrinsicWidth(), drawableArr[i].getIntrinsicHeight());
        }
        return drawableArr;
    }

    private Drawable aj(int i) {
        return this.PN == null ? null : this.PN[i];
    }

    private Drawable ak(int i) {
        return this.PO == null ? null : this.PO[i];
    }

    private Drawable al(int i) {
        return this.PP == null ? null : this.PP[i];
    }

    public void setRotateVelocity(int i) {
        this.Qb = i;
    }

    public void setProgressByAnimator(int i) {
        setProgressByAnimator(i, null);
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.PQ = onProgressChangedListener;
    }

    public void setProgressByAnimator(int i, AnimatorListener animatorListener) {
        stopProgressAnimator();
        int abs = Math.abs((int) ((((float) (i - getProgress())) / ((float) getMax())) * 360.0f));
        this.PI = ObjectAnimator.ofInt(this, "progress", new int[]{i});
        this.PI.setDuration((long) am(abs));
        this.PI.setInterpolator(getInterpolator());
        if (animatorListener != null) {
            this.PI.addListener(animatorListener);
        }
        this.PI.start();
    }

    public void stopProgressAnimator() {
        if (this.PI != null && this.PI.isRunning()) {
            this.PI.cancel();
        }
    }

    private int am(int i) {
        return (i * 1000) / this.Qb;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int progressLevelCount = getProgressLevelCount();
        for (int i = 0; i < progressLevelCount; i++) {
            if (this.PN != null) {
                this.PN[i].setState(getDrawableState());
            }
            if (this.PO != null) {
                this.PO[i].setState(getDrawableState());
            }
            if (this.PP != null) {
                this.PP[i].setState(getDrawableState());
            }
        }
        invalidate();
    }

    public synchronized void setProgress(int i) {
        int i2;
        super.setProgress(i);
        if (this.PJ == null) {
            i2 = 0;
        } else {
            i2 = this.PJ.length;
            int i3 = 0;
            while (i3 < i2) {
                if (i < this.PJ[i3]) {
                    break;
                }
                i3++;
            }
            i3 = -1;
            if (i3 != -1) {
                i2 = i3;
            }
        }
        if (i2 != this.PU) {
            this.PZ = this.PU;
            this.PU = i2;
            setPrevAlpha(255);
            Animator ofInt = ObjectAnimator.ofInt(this, "prevAlpha", new int[]{0});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new LinearInterpolator());
            ofInt.start();
        }
        if (this.PQ != null) {
            this.PQ.onProgressChanged();
        }
    }

    private float eo() {
        return ((float) getProgress()) / ((float) getMax());
    }

    private int getIntrinsicWidth() {
        int intrinsicWidth = ak(0).getIntrinsicWidth();
        if (this.PP != null) {
            intrinsicWidth = Math.max(intrinsicWidth, this.PP[0].getIntrinsicWidth());
        }
        if (this.PN != null) {
            return Math.max(intrinsicWidth, this.PN[0].getIntrinsicWidth());
        }
        return intrinsicWidth;
    }

    private int getIntrinsicHeight() {
        int intrinsicHeight = ak(0).getIntrinsicHeight();
        if (this.PP != null) {
            intrinsicHeight = Math.max(intrinsicHeight, this.PP[0].getIntrinsicHeight());
        }
        if (this.PN != null) {
            return Math.max(intrinsicHeight, this.PN[0].getIntrinsicHeight());
        }
        return intrinsicHeight;
    }

    protected synchronized void onMeasure(int i, int i2) {
        setMeasuredDimension(getIntrinsicWidth(), getIntrinsicHeight());
    }

    protected synchronized void onDraw(Canvas canvas) {
        a(canvas, aj(this.PU), al(this.PU), ak(this.PU), eo(), 255 - this.Qa);
        if (this.Qa >= 10) {
            a(canvas, aj(this.PZ), al(this.PZ), ak(this.PZ), eo(), this.Qa);
        }
    }

    private void a(Canvas canvas, Drawable drawable, Drawable drawable2, Drawable drawable3, float f, int i) {
        if (drawable != null) {
            drawable.setAlpha(i);
            drawable.draw(canvas);
        }
        if (canvas.isHardwareAccelerated()) {
            canvas.saveLayer((float) drawable3.getBounds().left, (float) drawable3.getBounds().top, (float) drawable3.getBounds().right, (float) drawable3.getBounds().bottom, null, 31);
            this.rl.setStyle(Style.STROKE);
            this.rl.setStrokeWidth((float) drawable3.getBounds().width());
            this.PD.reset();
            this.PD.addArc(this.PC, -90.0f, f * 360.0f);
            canvas.drawPath(this.PD, this.rl);
            this.rl.setStyle(Style.FILL);
            this.rl.setStrokeWidth(0.0f);
            drawable3.setAlpha(i);
            drawable3.draw(canvas);
            canvas.restore();
        } else {
            if (this.PV == null) {
                this.PV = Bitmap.createBitmap(drawable3.getBounds().width(), drawable3.getBounds().height(), Config.ARGB_8888);
                this.PX = new Canvas(this.PV);
            }
            this.PV.eraseColor(0);
            this.PX.save();
            this.PX.translate((float) (-drawable3.getBounds().left), (float) (-drawable3.getBounds().top));
            this.PX.drawArc(this.PC, -90.0f, 360.0f * f, true, this.rl);
            drawable3.setAlpha(i);
            drawable3.draw(this.PX);
            this.PX.restore();
            canvas.drawBitmap(this.PV, (float) drawable3.getBounds().left, (float) drawable3.getBounds().top, null);
        }
        drawable = this.Qc;
        if (drawable != null) {
            canvas.save();
            int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2;
            int height = ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2;
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            canvas.rotate((360.0f * ((float) getProgress())) / ((float) getMax()), (float) width, (float) height);
            intrinsicWidth /= 2;
            intrinsicHeight /= 2;
            drawable.setBounds(width - intrinsicWidth, height - intrinsicHeight, width + intrinsicWidth, height + intrinsicHeight);
            drawable.draw(canvas);
            canvas.restore();
        }
        if (drawable2 != null) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
        }
    }

    public void setPrevAlpha(int i) {
        this.Qa = i;
        invalidate();
    }

    public int getPrevAlpha() {
        return this.Qa;
    }

    public void setThumb(int i) {
        setThumb(getResources().getDrawable(i));
    }

    public void setThumb(Drawable drawable) {
        this.Qc = drawable;
    }
}
