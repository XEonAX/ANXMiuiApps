package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.List;

public class HiddenAlbumsStrategy extends BaseStrategy {
    @SerializedName("non_hidden_path_prefix")
    private List<String> mNonHiddenPathPrefix;
    @SerializedName("patterns")
    private List<String> mPatterns;

    public List<String> getPatterns() {
        return this.mPatterns;
    }

    public List<String> getNonHiddenPathPrefix() {
        return this.mNonHiddenPathPrefix;
    }

    public String toString() {
        return "HiddenAlbumsStrategy{mPatterns=" + this.mPatterns + ", mNonHiddenPathPrefix=" + this.mNonHiddenPathPrefix + '}';
    }

    public void doAdditionalProcessing() {
        if (BaseMiscUtil.isValid(this.mPatterns)) {
            ArrayList<String> validPatterns = new ArrayList();
            for (String pattern : this.mPatterns) {
                if (!TextUtils.isEmpty(pattern)) {
                    validPatterns.add(pattern);
                }
            }
            if (validPatterns.size() < this.mPatterns.size()) {
                this.mPatterns.clear();
                this.mPatterns.addAll(validPatterns);
            }
        }
        if (BaseMiscUtil.isValid(this.mNonHiddenPathPrefix)) {
            ArrayList<String> validPrefix = new ArrayList();
            for (String prefix : this.mNonHiddenPathPrefix) {
                if (!TextUtils.isEmpty(prefix)) {
                    validPrefix.add(prefix);
                }
            }
            if (validPrefix.size() < this.mNonHiddenPathPrefix.size()) {
                this.mNonHiddenPathPrefix.clear();
                this.mNonHiddenPathPrefix.addAll(validPrefix);
            }
        }
    }
}
