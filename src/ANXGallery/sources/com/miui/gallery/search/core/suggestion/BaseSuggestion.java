package com.miui.gallery.search.core.suggestion;

import com.miui.gallery.search.core.source.Source;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.StringUtils;

public class BaseSuggestion implements Suggestion {
    protected String mIcon;
    protected String mIntentActionURI;
    protected String mSubTitle;
    protected SuggestionExtras mSuggestionExtras;
    protected Source mSuggestionSource;
    protected String mTitle;

    public BaseSuggestion(String title, String subTitle, String icon, String intentActionURI, SuggestionExtras suggestionExtras, Source suggestionSource) {
        this.mTitle = title;
        this.mIcon = icon;
        this.mIntentActionURI = intentActionURI;
        this.mSubTitle = subTitle;
        this.mSuggestionExtras = suggestionExtras;
        this.mSuggestionSource = suggestionSource;
    }

    public String getIntentActionURI() {
        return this.mIntentActionURI;
    }

    public void setIntentActionURI(String intentActionURI) {
        this.mIntentActionURI = intentActionURI;
    }

    public String getSuggestionIcon() {
        return this.mIcon;
    }

    public void setSuggestionIcon(String icon) {
        this.mIcon = icon;
    }

    public String getSuggestionTitle() {
        return this.mTitle;
    }

    public void setSuggestionTitle(String title) {
        this.mTitle = title;
    }

    public String getSuggestionSubTitle() {
        return this.mSubTitle;
    }

    public void setSuggestionSubTitle(String subTitle) {
        this.mSubTitle = subTitle;
    }

    public Source getSuggestionSource() {
        return this.mSuggestionSource;
    }

    public void setSuggestionSource(Source suggestionSource) {
        this.mSuggestionSource = suggestionSource;
    }

    public SuggestionExtras getSuggestionExtras() {
        return this.mSuggestionExtras;
    }

    public void setSuggestionExtras(SuggestionExtras suggestionExtras) {
        this.mSuggestionExtras = suggestionExtras;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Suggestion)) {
            return false;
        }
        Suggestion other = (Suggestion) obj;
        if (!StringUtils.nullToEmpty(this.mTitle).equals(StringUtils.nullToEmpty(other.getSuggestionTitle()))) {
            return false;
        }
        if (!StringUtils.nullToEmpty(this.mSubTitle).equals(StringUtils.nullToEmpty(other.getSuggestionSubTitle()))) {
            return false;
        }
        if (!StringUtils.nullToEmpty(this.mIcon).equals(StringUtils.nullToEmpty(other.getSuggestionIcon()))) {
            return false;
        }
        if (!StringUtils.nullToEmpty(this.mIntentActionURI).equals(StringUtils.nullToEmpty(other.getIntentActionURI()))) {
            return false;
        }
        if (BaseMiscUtil.equals(this.mSuggestionExtras, other.getSuggestionExtras())) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "BaseSuggestion [title:" + this.mTitle + "," + "mSubTitle:" + this.mSubTitle + "," + "mIntentActionURI:" + this.mIntentActionURI + "," + "mIcon:" + this.mIcon + "," + "mSuggestionExtras:" + this.mSuggestionExtras + "," + "]";
    }
}
