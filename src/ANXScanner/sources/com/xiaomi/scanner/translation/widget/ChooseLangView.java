package com.xiaomi.scanner.translation.widget;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xiaomi.scanner.R;

public class ChooseLangView extends LinearLayout implements OnClickListener {
    private String desLang;
    private TextView desLangView;
    private boolean hasConvertFunction;
    private LangViewClick langViewClick;
    private String srcLang;
    private TextView srcLangView;

    public interface LangViewClick {
        void onConvertClick(String str, String str2);

        void onSelectClick();
    }

    public void setLangViewClick(LangViewClick langViewClick) {
        this.langViewClick = langViewClick;
    }

    public ChooseLangView(Context context) {
        this(context, null, -1);
    }

    public ChooseLangView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public ChooseLangView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setLayoutId(R.layout.layout_choose_lang_view);
        setOrientation(0);
        setGravity(17);
    }

    public void setLayoutId(int layoutId) {
        if (layoutId != 0) {
            LayoutInflater.from(getContext()).inflate(layoutId, this);
            this.srcLangView = (TextView) findViewById(R.id.tv_src_lang);
            this.desLangView = (TextView) findViewById(R.id.tv_des_lang);
            ImageView convertLang = (ImageView) findViewById(R.id.convert_lang);
            this.srcLangView.setOnClickListener(this);
            this.desLangView.setOnClickListener(this);
            convertLang.setOnClickListener(this);
        }
    }

    public void setHasConvertFunction(boolean hasConvertFunction) {
        this.hasConvertFunction = hasConvertFunction;
    }

    public void updateLang(String src, String des) {
        this.srcLang = src;
        this.desLang = des;
        if (this.srcLang != null) {
            this.srcLangView.setText(src);
            this.desLangView.setText(des);
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.tv_src_lang /*2131558647*/:
            case R.id.tv_des_lang /*2131558649*/:
                if (this.langViewClick != null) {
                    this.langViewClick.onSelectClick();
                    return;
                }
                return;
            case R.id.convert_lang /*2131558648*/:
                if (this.hasConvertFunction) {
                    if (this.langViewClick != null) {
                        this.langViewClick.onConvertClick(this.srcLang, this.desLang);
                        return;
                    }
                    return;
                } else if (this.langViewClick != null) {
                    this.langViewClick.onSelectClick();
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }
}
