package com.xiaomi.scanner.translation.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.TranslationModuleUI;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.ui.PreviewWithRectView;
import com.xiaomi.scanner.util.NetworkUtil;
import com.xiaomi.scanner.util.Util;

public class WordSelectView extends FrameLayout {
    private TranslationModuleUI mModuleUI;
    private TranslationAdapter mTranslationAdapter;
    private TextView mWordDefinition;
    private TextView mWordMore;
    private TextView mWordOcrResult;
    private TextView mWordPrompt;
    private PreviewWithRectView mWordRectView;
    private TextView mWordSymbols;

    public WordSelectView(@NonNull Context context) {
        this(context, null, -1);
    }

    public WordSelectView(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public WordSelectView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        LayoutInflater.from(context).inflate(R.layout.layout_word_view, this);
        this.mWordPrompt = (TextView) findViewById(R.id.word_prompt);
        this.mWordRectView = (PreviewWithRectView) findViewById(R.id.preview_rect);
        Rect rect = getPreviewRect();
        this.mWordRectView.setDataAndDraw(rect, getContext().getResources().getColor(R.color.black_50_transparent), true);
        LayoutParams wordParams = (LayoutParams) this.mWordPrompt.getLayoutParams();
        wordParams.topMargin += rect.bottom;
    }

    public void setTranslateAdapterAndModuleUi(TranslationAdapter adapter, TranslationModuleUI ui) {
        this.mTranslationAdapter = adapter;
        this.mModuleUI = ui;
    }

    public Rect getPreviewRect() {
        int top = getContext().getResources().getDimensionPixelSize(R.dimen.word_rect_margin_top);
        int left = getContext().getResources().getDimensionPixelSize(R.dimen.word_rect_width_margin);
        return new Rect(left, top, Util.screenWidth - left, top + getContext().getResources().getDimensionPixelSize(R.dimen.word_rect_height));
    }

    public void initWordResultUI() {
        if (this.mWordOcrResult == null) {
            ViewStub sub = (ViewStub) findViewById(R.id.word_result_layout);
            sub.setVisibility(0);
            LayoutParams layoutParams = (LayoutParams) sub.getLayoutParams();
            layoutParams.topMargin = this.mWordRectView.getPreviewRect().bottom + layoutParams.topMargin;
            this.mWordOcrResult = (TextView) findViewById(R.id.word_ocr_result);
            this.mWordSymbols = (TextView) findViewById(R.id.word_symbols);
            this.mWordDefinition = (TextView) findViewById(R.id.word_difinition);
            this.mWordMore = (TextView) findViewById(R.id.word_more);
            this.mWordMore.setTextColor(getContext().getResources().getColor(17170445));
            this.mWordMore.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == 0) {
                        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_AUTO_ALL_TRANSLATION);
                    }
                    return false;
                }
            });
        }
    }

    public void updatePrompt() {
        if (this.mWordPrompt != null) {
            this.mWordPrompt.setText(NetworkUtil.isNetworkConnected() ? R.string.translation_prompt_word : R.string.no_network);
        }
    }

    public void setWordResultUI(int promptVisible, CharSequence ocrStr, CharSequence symbolStr, CharSequence definitionStr, CharSequence moreStr) {
        if (!(TextUtils.isEmpty(ocrStr) && TextUtils.isEmpty(symbolStr) && TextUtils.isEmpty(definitionStr))) {
            initWordResultUI();
        }
        this.mWordPrompt.setVisibility(promptVisible);
        setTextContent(this.mWordOcrResult, ocrStr);
        setTextContent(this.mWordSymbols, symbolStr);
        setTextContent(this.mWordDefinition, definitionStr);
        setTextContent(this.mWordMore, moreStr);
    }

    private void setTextContent(TextView tv, CharSequence content) {
        if (tv == null) {
            return;
        }
        if (TextUtils.isEmpty(content)) {
            tv.setVisibility(8);
            return;
        }
        tv.setText(content);
        tv.setVisibility(0);
    }

    public void setTranslationResult(TranslationResult result) {
        if (this.mWordMore != null) {
            this.mWordMore.setMovementMethod(LinkMovementMethod.getInstance());
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_AUTO_RESULT);
    }

    public void clear() {
        this.mWordRectView.clear();
    }
}
