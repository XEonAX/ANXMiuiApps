package com.miui.gallery.search.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.miui.gallery.R;
import com.miui.gallery.util.ToastUtils;
import miui.widget.ClearableEditText;

public class SearchView extends LinearLayout implements OnClickListener {
    private ClearableEditText mEditText;
    private SearchViewListener mSearchViewListener;
    private View mVoiceButton;
    private boolean mVoiceButtonEnabled;

    public interface SearchViewListener {
        void onCancelSearch(View view);

        void onFocusChanged(View view, boolean z);

        void onQueryTextChanged(View view, String str);

        void onQueryTextSubmit(View view, String str);

        void onStartVoiceAssistant(View view);
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SearchView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mVoiceButtonEnabled = false;
        LayoutInflater.from(context).inflate(R.layout.search_view_layout, this, true);
        setLayoutParams(new LayoutParams(-1, -2));
        this.mEditText = (ClearableEditText) findViewById(R.id.search_view_input);
        this.mEditText.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View v, boolean hasFocus) {
                if (SearchView.this.mSearchViewListener != null) {
                    SearchView.this.mSearchViewListener.onFocusChanged(SearchView.this, hasFocus);
                }
            }
        });
        this.mEditText.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == 0 || actionId == 3) {
                    if (TextUtils.isEmpty(SearchView.this.getQueryText())) {
                        ToastUtils.makeText(SearchView.this.getContext(), (int) R.string.empty_query_text_msg);
                    } else if (SearchView.this.mSearchViewListener != null) {
                        SearchView.this.mSearchViewListener.onQueryTextSubmit(SearchView.this, SearchView.this.getQueryText());
                        return true;
                    }
                }
                return false;
            }
        });
        this.mEditText.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            public void afterTextChanged(Editable s) {
                if (SearchView.this.mSearchViewListener != null) {
                    SearchView.this.mSearchViewListener.onQueryTextChanged(SearchView.this, SearchView.this.getQueryText());
                }
                SearchView.this.updateVoiceButtonState();
            }
        });
        findViewById(R.id.search_btn_cancel).setOnClickListener(this);
        this.mVoiceButton = findViewById(R.id.search_btn_voice);
        this.mVoiceButton.setOnClickListener(this);
        updateVoiceButtonState();
    }

    public void onClick(View v) {
        if (v != null && this.mSearchViewListener != null) {
            switch (v.getId()) {
                case R.id.search_btn_voice /*2131886317*/:
                    this.mSearchViewListener.onStartVoiceAssistant(this);
                    return;
                case R.id.search_btn_cancel /*2131886723*/:
                    this.mSearchViewListener.onCancelSearch(this);
                    return;
                default:
                    return;
            }
        }
    }

    public void setSearchViewListener(SearchViewListener searchViewListener) {
        this.mSearchViewListener = searchViewListener;
    }

    public void setCursorVisible(boolean visible) {
        this.mEditText.setCursorVisible(visible);
    }

    public void setHint(String hintText) {
        this.mEditText.setHint(hintText);
    }

    public void setQueryText(String text) {
        this.mEditText.setText(text);
    }

    public String getQueryText() {
        return this.mEditText.getText().toString();
    }

    public void selectAll(boolean selectAll) {
        if (selectAll) {
            this.mEditText.selectAll();
        } else {
            this.mEditText.setSelection(getQueryText() != null ? getQueryText().length() : 0);
        }
    }

    public void clearFocus() {
        super.clearFocus();
        hideInputMethod();
        this.mEditText.clearFocus();
    }

    public boolean showInputMethod() {
        InputMethodManager imm = getInputMethodManager();
        if (imm == null) {
            return false;
        }
        this.mEditText.requestFocus();
        return imm.showSoftInput(this.mEditText, 0);
    }

    public boolean hideInputMethod() {
        InputMethodManager imm = getInputMethodManager();
        if (imm == null || !imm.hideSoftInputFromWindow(this.mEditText.getWindowToken(), 0)) {
            return false;
        }
        return true;
    }

    public void setVoiceButtonEnabled(boolean voiceButtonEnabled) {
        this.mVoiceButtonEnabled = voiceButtonEnabled;
        updateVoiceButtonState();
    }

    private void updateVoiceButtonState() {
        if (this.mVoiceButtonEnabled && TextUtils.isEmpty(this.mEditText.getText().toString())) {
            this.mVoiceButton.setVisibility(0);
        } else {
            this.mVoiceButton.setVisibility(8);
        }
    }

    private InputMethodManager getInputMethodManager() {
        return (InputMethodManager) getContext().getSystemService("input_method");
    }
}
