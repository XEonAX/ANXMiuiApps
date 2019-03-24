package miui.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;

public class GuidePopupWindow extends ArrowPopupWindow {
    public static final int ARROW_BOTTOM_LEFT_MODE = 0;
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_BOTTOM_RIGHT_MODE = 0;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_LEFT_MODE = 1;
    public static final int ARROW_TOP_MODE = 1;
    public static final int ARROW_TOP_RIGHT_MODE = 1;
    private static final int Tu = 5000;
    private int Rp;
    private LinearLayout Tt;
    private Runnable Tv = new Runnable() {
        public void run() {
            GuidePopupWindow.this.dismiss(true);
        }
    };

    public GuidePopupWindow(Context context) {
        super(context);
    }

    public GuidePopupWindow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GuidePopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public GuidePopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    protected void onPrepareWindow() {
        super.onPrepareWindow();
        this.Rp = Tu;
        setFocusable(true);
        this.Tt = (LinearLayout) getLayoutInflater().inflate(R.layout.guide_popup_content_view, null, false);
        setContentView(this.Tt);
        this.mArrowPopupView.enableShowingAnimation(true);
    }

    public void setGuideText(String str) {
        M(str);
    }

    public void setGuideText(int i) {
        setGuideText(getContext().getString(i));
    }

    private void M(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("\n");
            if (split != null && split.length != 0) {
                LayoutInflater layoutInflater = getLayoutInflater();
                for (CharSequence text : split) {
                    TextView textView = (TextView) layoutInflater.inflate(R.layout.guide_popup_text_view, null);
                    textView.setText(text);
                    this.Tt.addView(textView);
                }
            }
        }
    }

    public void show(View view, boolean z) {
        show(view, 0, 0, z);
    }

    public void show(View view, int i, int i2, boolean z) {
        show(view, i, i2);
        if (z) {
            this.mArrowPopupView.postDelayed(this.Tv, (long) this.Rp);
        }
    }

    public void setOffset(int i, int i2) {
        this.mArrowPopupView.setOffset(i, i2);
    }

    public void setShowDuration(int i) {
        this.Rp = i;
    }
}
