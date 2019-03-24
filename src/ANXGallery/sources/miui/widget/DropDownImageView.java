package miui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.miui.internal.R;

public class DropDownImageView extends ImageView {
    private AnimatorSet Rh;
    private AnimatorSet Ri;
    private Context mContext;

    public DropDownImageView(Context context) {
        this(context, null);
    }

    public DropDownImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DropDownImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.dropdownImageViewStyle);
        this.Rh = null;
        this.Ri = null;
        this.mContext = context;
        eB();
    }

    private void eB() {
        this.Ri = new AnimatorSet();
        this.Ri.setDuration(150);
        Animator ofFloat = ObjectAnimator.ofFloat(this, "rotationX", new float[]{0.0f, -90.0f});
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = (ImageView) ((ObjectAnimator) animator).getTarget();
                imageView.setRotationX(-90.0f);
                imageView.setImageLevel(0);
                imageView.setRotationX(90.0f);
            }
        });
        Animator ofFloat2 = ObjectAnimator.ofFloat(this, "rotationX", new float[]{90.0f, 0.0f});
        ofFloat2.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ((ImageView) ((ObjectAnimator) animator).getTarget()).setRotationX(0.0f);
            }
        });
        this.Ri.play(ofFloat).before(ofFloat2);
        this.Ri.setDuration(150);
        this.Rh = new AnimatorSet();
        ofFloat = ObjectAnimator.ofFloat(this, "rotationX", new float[]{0.0f, 90.0f});
        ofFloat.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ImageView imageView = (ImageView) ((ObjectAnimator) animator).getTarget();
                imageView.setRotationX(90.0f);
                imageView.setImageLevel(1);
                imageView.setRotationX(-90.0f);
            }
        });
        Animator ofFloat3 = ObjectAnimator.ofFloat(this, "rotationX", new float[]{-90.0f, 0.0f});
        ofFloat3.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ((ImageView) ((ObjectAnimator) animator).getTarget()).setRotationX(0.0f);
            }
        });
        this.Rh.play(ofFloat).before(ofFloat3);
    }

    public void collapse() {
        this.Rh.cancel();
        this.Ri.start();
    }

    public void expand() {
        this.Ri.cancel();
        this.Rh.start();
    }
}
