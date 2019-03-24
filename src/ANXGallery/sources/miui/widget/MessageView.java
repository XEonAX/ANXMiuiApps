package miui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;

public class MessageView extends LinearLayout {
    private TextView vy;

    public MessageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MessageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(context, attributeSet, i);
    }

    public void setMessage(CharSequence charSequence) {
        this.vy.setText(charSequence);
    }

    private void b(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MessageView, i, 0);
        CharSequence string = obtainStyledAttributes.getString(R.styleable.MessageView_android_text);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.MessageView_android_textColor);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.MessageView_closeBackground);
        obtainStyledAttributes.recycle();
        this.vy = new TextView(getContext());
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = getResources().getDimensionPixelSize(R.dimen.message_view_text_margin_left);
        layoutParams.weight = 1.0f;
        this.vy.setId(16908308);
        this.vy.setText(string);
        this.vy.setTextColor(colorStateList);
        this.vy.setTextSize(0, (float) getResources().getDimensionPixelSize(R.dimen.message_view_text_size));
        addView(this.vy, layoutParams);
        View imageView = new ImageView(getContext());
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = getResources().getDimensionPixelSize(R.dimen.message_view_text_margin_right);
        layoutParams2.rightMargin = getResources().getDimensionPixelSize(R.dimen.message_view_close_margin_right);
        imageView.setId(R.id.close);
        imageView.setBackground(drawable);
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MessageView.this.setVisibility(8);
            }
        });
        addView(imageView, layoutParams2);
        setGravity(16);
    }
}
