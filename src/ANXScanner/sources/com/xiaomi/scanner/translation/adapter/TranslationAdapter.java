package com.xiaomi.scanner.translation.adapter;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.translation.bean.ScanDataBean;
import com.xiaomi.scanner.translation.bean.ScanDataBean.ScanType;
import com.xiaomi.scanner.ui.LanguagePairLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public abstract class TranslationAdapter {
    protected Context mContext;
    protected boolean mIsEngineInitialized;
    protected boolean mIsLanguageChoiceValid = true;
    protected List<String> mLanguageEntries;
    protected List<String> mLanguageEntryValues;
    protected int[] mLanguageIds;
    protected Rect mOcrRect = new Rect();
    protected Rect mPreviewRect;
    protected SettingsManager mSettingsManager;
    protected TranslationListener mTranslationListener;
    protected Rect mWordRect;

    public interface TranslationListener {
        void onDefinitionDone(TranslationResult translationResult);

        void onOcrDone(TranslationResult translationResult, ScanType scanType);

        void onOcrFail();

        void onTranslationDone();
    }

    private class NoLineClickSpan extends ClickableSpan {
        String text;

        public NoLineClickSpan(String text) {
            this.text = text;
        }

        public void updateDrawState(TextPaint ds) {
            ds.setColor(-16739876);
            ds.setUnderlineText(false);
        }

        public void onClick(View widget) {
            TranslationAdapter.this.processHyperLinkClick(this.text);
        }
    }

    abstract class PairAdapter extends BaseAdapter {
        private LayoutInflater mInflater;

        protected abstract String getDest(int i);

        protected abstract String getSource(int i);

        PairAdapter() {
            this.mInflater = LayoutInflater.from(TranslationAdapter.this.mContext);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = initializeItemView(parent);
            }
            ((LanguagePairLayout) convertView).setLanguageEntry(getSource(position), getDest(position));
            return convertView;
        }

        private View initializeItemView(ViewGroup parent) {
            LanguagePairLayout itemLayout = (LanguagePairLayout) this.mInflater.inflate(R.layout.item_language, parent, false);
            itemLayout.initAsItem();
            return itemLayout;
        }
    }

    public static class TranslationPair {
        public String mDest;
        public String mDestEntry;
        public String mSource;
        public String mSourceEntry;

        TranslationPair(String source, String dest) {
            this.mSource = source;
            this.mDest = dest;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TranslationPair)) {
                return false;
            }
            boolean z = this.mSource.equals(((TranslationPair) obj).mSource) && this.mDest.equals(((TranslationPair) obj).mDest);
            return z;
        }

        public int hashCode() {
            return (this.mSource.hashCode() * 31) + this.mDest.hashCode();
        }
    }

    public class TranslationResult {
        public static final int STATE_ABORT = 4;
        public static final int STATE_FIND_FAIL = 3;
        public static final int STATE_OCR_FAIL = 2;
        public static final int STATE_SUCCESS = 1;
        boolean mCredibility;
        String mDefinition;
        String mMore;
        String mOcrResult;
        int mState;
        ArrayList<String> mSymbols;

        TranslationResult(String result, ArrayList<String> symbols, String explanation, String more) {
            this.mOcrResult = result;
            this.mSymbols = symbols;
            this.mDefinition = explanation;
            this.mMore = more;
        }

        TranslationResult(String result) {
            this.mOcrResult = result;
        }

        TranslationResult() {
        }

        public boolean isOcrOnly() {
            return !TextUtils.isEmpty(this.mOcrResult) && this.mSymbols == null && this.mDefinition == null;
        }

        public boolean isOcrSuccess() {
            return this.mCredibility && !TextUtils.isEmpty(this.mOcrResult);
        }

        public void setOcrResult(String ocrResult) {
            this.mOcrResult = ocrResult.trim();
        }

        public String getOcrResult() {
            return this.mOcrResult;
        }

        public String getSymbols() {
            StringBuilder sb = new StringBuilder();
            if (this.mSymbols != null) {
                Iterator it = this.mSymbols.iterator();
                while (it.hasNext()) {
                    sb.append(((String) it.next()) + "\n");
                }
            }
            return sb.toString().trim();
        }

        public void setDefinition(String explanation) {
            this.mDefinition = explanation.trim();
        }

        public String getDefinition() {
            return this.mDefinition;
        }

        public void setSymbols(ArrayList<String> symbols) {
            this.mSymbols = symbols;
        }

        public CharSequence getSpannableDef() {
            return getSpannableString();
        }

        public void setCredibility(boolean credibility) {
            this.mCredibility = credibility;
        }

        public boolean getCredibility() {
            return this.mCredibility;
        }

        public boolean isDefinitionFound() {
            return this.mState == 1;
        }

        public boolean isAborted() {
            return this.mState == 4;
        }

        public int getState() {
            return this.mState;
        }

        public void setState(int state) {
            if (this.mState == 0) {
                this.mState = state;
            }
        }

        private CharSequence getSpannableString() {
            if (!this.mCredibility || TextUtils.isEmpty(this.mOcrResult)) {
                return "";
            }
            CharSequence ssBuilder = new SpannableStringBuilder(this.mOcrResult + "\n");
            ssBuilder.setSpan(new StyleSpan(1), 0, this.mOcrResult.length(), 33);
            ssBuilder.setSpan(new ForegroundColorSpan(-1), 0, this.mOcrResult.length(), 33);
            ssBuilder.append(this.mDefinition);
            return ssBuilder;
        }

        public CharSequence getMoreDefinition() {
            SpannableStringBuilder ssBuilder = new SpannableStringBuilder(TranslationAdapter.this.mContext.getString(R.string.translation_see_more));
            ssBuilder.setSpan(new NoLineClickSpan(this.mOcrResult), 0, ssBuilder.length(), 33);
            return ssBuilder;
        }
    }

    public abstract void clear();

    public abstract void finishCurrentTranslation();

    public abstract List<TranslationPair> getAllTranslatePairs();

    public abstract String getDestEntry();

    public abstract int getDestID();

    public abstract int getOcrLanguageID();

    public abstract int getSelection(String str, String str2);

    public abstract String getSourceEntry();

    public abstract int getSourceID();

    public abstract String getVendorInfo();

    public abstract void initScan();

    public abstract void initTranslationEngine();

    public abstract void pauseScan();

    protected abstract void processHyperLinkClick(String str);

    public abstract void scan(ScanDataBean scanDataBean);

    public abstract void setOcrLanguage(String str);

    public abstract void stopScan();

    public abstract boolean updateSelection(String str, String str2);

    public TranslationAdapter(Context context, SettingsManager settingsManager, TranslationListener translationListener) {
        this.mContext = context;
        this.mSettingsManager = settingsManager;
        this.mTranslationListener = translationListener;
        initLanguageString();
    }

    private void initLanguageString() {
        this.mLanguageEntries = Arrays.asList(this.mContext.getResources().getStringArray(R.array.kingsoft_language_long_entries));
        this.mLanguageEntryValues = Arrays.asList(this.mContext.getResources().getStringArray(R.array.kingsoft_language_entryvalues));
        this.mLanguageIds = this.mContext.getResources().getIntArray(R.array.kingsoft_language_ids);
    }

    private int findLanguageIndex(String key) {
        if (this.mLanguageEntryValues == null || this.mLanguageEntryValues.isEmpty() || TextUtils.isEmpty(key)) {
            return -1;
        }
        return this.mLanguageEntryValues.indexOf(key);
    }

    protected String getLanguageEntryFromValues(String key) {
        int index = findLanguageIndex(key);
        if (index < 0 || index >= this.mLanguageEntries.size()) {
            return "";
        }
        return (String) this.mLanguageEntries.get(index);
    }

    protected int getLanguageIdFromValues(String key) {
        int index = findLanguageIndex(key);
        if (index < 0 || index >= this.mLanguageIds.length) {
            return -1;
        }
        return this.mLanguageIds[index];
    }

    public boolean isChoiceValid() {
        return this.mIsLanguageChoiceValid;
    }

    public void setWordRect(Rect rect) {
        this.mWordRect = rect;
    }

    public boolean isRectValid(RectF rect) {
        return (rect == null || (rect.left == 0.0f && rect.right == 0.0f && rect.top == 0.0f && rect.bottom == 0.0f)) ? false : true;
    }

    public void setPreviewRect(Rect rect) {
        this.mPreviewRect = rect;
    }

    public boolean isEngineInitlized() {
        return this.mIsEngineInitialized;
    }
}
