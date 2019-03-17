package com.xiaomi.scanner.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.GravityCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.camera.CameraServicesImpl;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.DeviceUtil;
import java.util.ArrayList;
import java.util.List;

public class LanguageChooser extends LinearLayout implements OnClickListener {
    private static final Tag TAG = new Tag("LanguageChooser");
    private String mCurrentLanguage;
    private List<String> mLanguageEntries;
    private String mLanguageEntryKey;
    OnItemClickListener mLanguageItemClickListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            LanguageChooser.this.mLanguageListWindow.dismiss();
            String selectedLanguage = (String) LanguageChooser.this.mLanguageValues.get(position);
            if (!selectedLanguage.equals(LanguageChooser.this.mCurrentLanguage)) {
                Log.v(LanguageChooser.TAG, "switchLanguage: " + LanguageChooser.this.mCurrentLanguage + " -> " + selectedLanguage);
                LanguageChooser.this.mCurrentLanguage = selectedLanguage;
                LanguageChooser.this.mLanguageNameView.setText(LanguageChooser.this.getLanguageEntry(position));
                LanguageChooser.this.saveLanguage(selectedLanguage);
                LanguageChooser.this.notifyLanguageChange(selectedLanguage);
            }
        }
    };
    private ListView mLanguageList;
    private int mLanguageListHeight;
    private int mLanguageListWidth;
    private PopupWindow mLanguageListWindow;
    private TextView mLanguageNameView;
    private List<String> mLanguageValues;
    private int mListPopupMargin;
    private List<LanguageSwitchListener> mListeners;
    private boolean mPersist;
    private SettingsManager mSettingsManager;

    public interface LanguageSwitchListener {
        void onLanguageSwitched(String str);
    }

    public LanguageChooser(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.LanguageChooser);
        this.mSettingsManager = CameraServicesImpl.instance().getSettingsManager();
        this.mLanguageEntries = charSequenceToString(a.getTextArray(1));
        this.mLanguageValues = charSequenceToString(a.getTextArray(0));
        this.mLanguageEntryKey = a.getString(5);
        this.mPersist = a.getBoolean(6, false);
        Resources res = getResources();
        this.mLanguageListWidth = a.getDimensionPixelSize(2, res.getDimensionPixelSize(R.dimen.translation_language_pair_list_width));
        this.mLanguageListHeight = a.getDimensionPixelSize(3, res.getDimensionPixelSize(R.dimen.translation_language_pair_list_height));
        this.mListPopupMargin = a.getDimensionPixelSize(4, res.getDimensionPixelSize(R.dimen.language_chooser_list_margin));
        a.recycle();
    }

    public void onClick(View v) {
        if (!isSelected()) {
            setSelected(true);
            showLanguageList(this);
        }
    }

    public void onFinishInflate() {
        setOnClickListener(this);
        this.mLanguageNameView = (TextView) findViewById(R.id.txt_language_name);
        this.mCurrentLanguage = getSavedLanguage();
        this.mLanguageNameView.setText(getLanguageEntry(getLanguageIndex(this.mCurrentLanguage)));
    }

    public void addLanguageSwitchListener(LanguageSwitchListener listener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (!this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
        }
    }

    public void clearLanguageSwitchListener() {
        if (this.mListeners != null) {
            this.mListeners.clear();
        }
    }

    private void showLanguageList(View parent) {
        if (this.mLanguageListWindow == null) {
            initLanguageList();
        }
        this.mLanguageListWindow.setFocusable(true);
        this.mLanguageListWindow.update();
        int[] location = new int[2];
        parent.getLocationInWindow(location);
        this.mLanguageListWindow.showAtLocation(parent, (AppUtil.isRtlLayout(parent) ? GravityCompat.START : GravityCompat.END) | 48, this.mListPopupMargin, (location[1] - this.mListPopupMargin) - this.mLanguageListHeight);
        int index = getLanguageIndex(this.mCurrentLanguage);
        if (index == -1) {
            Log.e(TAG, "showLanguageList: invalid language " + this.mCurrentLanguage);
            index = 0;
        }
        this.mLanguageList.setItemChecked(index, true);
        this.mLanguageList.setSelection(this.mLanguageList.getCheckedItemPosition());
    }

    private void initLanguageList() {
        View view = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.language_list, null);
        this.mLanguageList = (ListView) view.findViewById(R.id.language_list);
        this.mLanguageList.setAdapter(new ArrayAdapter(getContext(), R.layout.namecard_language_item, this.mLanguageEntries));
        this.mLanguageList.setChoiceMode(1);
        this.mLanguageList.setOnItemClickListener(this.mLanguageItemClickListener);
        int itemHeight = getResources().getDimensionPixelSize(R.dimen.translation_language_pair_item_height);
        if (this.mLanguageEntries.size() * itemHeight < this.mLanguageListHeight) {
            this.mLanguageListHeight = this.mLanguageEntries.size() * itemHeight;
        }
        this.mLanguageListWindow = new PopupWindow(view, this.mLanguageListWidth, this.mLanguageListHeight);
        this.mLanguageListWindow.setBackgroundDrawable(new BitmapDrawable());
        this.mLanguageListWindow.setOnDismissListener(new OnDismissListener() {
            public void onDismiss() {
                LanguageChooser.this.setSelected(false);
            }
        });
    }

    private int getLanguageIndex(String language) {
        if (this.mLanguageValues != null && !this.mLanguageValues.isEmpty() && !TextUtils.isEmpty(language)) {
            return this.mLanguageValues.indexOf(language);
        }
        Log.w(TAG, "getLanguageIndex: invalid language " + language);
        return 0;
    }

    private String getSavedLanguage() {
        String defaultLanguage = getResources().getString(DeviceUtil.isInternationalBuild() ? R.string.global_default_language : R.string.default_language);
        if (this.mLanguageEntryKey != null) {
            return this.mSettingsManager.getString(SettingsManager.SCOPE_GLOBAL, this.mLanguageEntryKey, defaultLanguage);
        }
        return defaultLanguage;
    }

    private void saveLanguage(String language) {
        if (this.mLanguageEntryKey != null && this.mPersist) {
            this.mSettingsManager.set(SettingsManager.SCOPE_GLOBAL, this.mLanguageEntryKey, language);
        }
    }

    private String getLanguageEntry(int index) {
        if (index < 0 || index >= this.mLanguageEntries.size()) {
            return "";
        }
        return (String) this.mLanguageEntries.get(index);
    }

    private List<String> charSequenceToString(CharSequence[] values) {
        List<String> list = new ArrayList();
        if (values != null) {
            for (CharSequence value : values) {
                list.add(value.toString());
            }
        }
        return list;
    }

    private void notifyLanguageChange(String language) {
        if (this.mListeners != null) {
            for (LanguageSwitchListener listener : this.mListeners) {
                listener.onLanguageSwitched(language);
            }
        }
    }
}
