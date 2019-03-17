package com.kingsoft.iciba.powerwordocrjar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.hanvon.ocrtranslate.a;

public class SymbolTextView extends TextView {
    public SymbolTextView(Context context) {
        super(context);
        setFonts(context);
    }

    public SymbolTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setFonts(context);
    }

    public SymbolTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setFonts(context);
    }

    private void setFonts(Context context) {
        setTypeface(a.a(context));
    }
}
