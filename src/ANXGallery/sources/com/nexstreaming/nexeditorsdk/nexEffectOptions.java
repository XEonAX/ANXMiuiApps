package com.nexstreaming.nexeditorsdk;

import com.nexstreaming.app.common.util.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class nexEffectOptions implements Serializable {
    private static final long serialVersionUID = 1;
    private List<ColorOpt> mColorOptions = new ArrayList();
    String mEffectID;
    int mEffectType;
    private Set<String> mOptionIds = new HashSet();
    private List<RangeOpt> mRangeOptions = new ArrayList();
    private List<SelectOpt> mSelectOptions = new ArrayList();
    private List<SwitchOpt> mSwitchOptions = new ArrayList();
    private List<TextOpt> mTextOptions = new ArrayList();
    private List<ColorOpt> m_externalView_colors = null;
    private List<RangeOpt> m_externalView_ranges = null;
    private List<SelectOpt> m_externalView_selects = null;
    private List<SwitchOpt> m_externalView_switch = null;
    private List<TextOpt> m_externalView_texts = null;
    private boolean updated;

    public class Option implements Serializable {
        private static final long serialVersionUID = 1;
        private String mId;
        private String mLabel;

        private Option() {
        }

        protected Option(String str, String str2) {
            this.mLabel = str2;
            this.mId = str;
        }

        public String getId() {
            return this.mId;
        }

        public String getLabel() {
            return this.mLabel;
        }
    }

    public class ColorOpt extends Option {
        protected int argb_color;
        protected int default_argb_color;

        private ColorOpt() {
            super();
        }

        protected ColorOpt(String str, String str2, String str3) {
            super(str, str2);
            this.argb_color = c.a(str3);
            this.default_argb_color = this.argb_color;
        }

        public int getARGBformat() {
            return this.argb_color;
        }

        public void setARGBColor(int i) {
            if (this.argb_color != i) {
                nexEffectOptions.this.updated = true;
            }
            this.argb_color = i;
        }
    }

    public class RangeOpt extends Option {
        private static final long serialVersionUID = 1;
        protected int default_value;
        protected int mValue;
        protected int max_value;
        protected int min_value;

        private RangeOpt() {
            super();
        }

        protected RangeOpt(String str, String str2, int i, int i2, int i3) {
            super(str, str2);
            this.default_value = i;
            this.max_value = i3;
            this.min_value = i2;
            this.mValue = i;
        }

        public void setValue(int i) {
            if (i < this.min_value) {
                i = this.min_value;
            } else if (i > this.max_value) {
                i = this.max_value;
            }
            if (this.mValue != i) {
                nexEffectOptions.this.updated = true;
            }
            this.mValue = i;
        }

        public int getValue() {
            return this.mValue;
        }

        public int min() {
            return this.min_value;
        }

        public int max() {
            return this.max_value;
        }
    }

    public class SelectOpt extends Option {
        private static final long serialVersionUID = 1;
        protected int default_select_index;
        private String[] mItems;
        private String[] mValues;
        protected int select_index;

        private SelectOpt() {
            super();
        }

        protected SelectOpt(String str, String str2, String[] strArr, String[] strArr2, int i) {
            super(str, str2);
            this.mItems = strArr;
            this.mValues = strArr2;
            this.select_index = i;
            this.default_select_index = this.select_index;
        }

        protected int setValue(String str) {
            for (int i = 0; i < this.mValues.length; i++) {
                if (this.mValues[i].compareTo(str) == 0) {
                    if (this.select_index != i) {
                        nexEffectOptions.this.updated = true;
                    }
                    this.select_index = i;
                    return 0;
                }
            }
            return 0;
        }

        public int getSelectIndex() {
            return this.select_index;
        }

        public void setSelectIndex(int i) {
            if (i >= 0 && this.mItems != null && i < this.mItems.length) {
                this.select_index = i;
            }
        }

        public String[] getItems() {
            return this.mItems;
        }

        public String getSelectValue() {
            return this.mValues[this.select_index];
        }
    }

    public class SwitchOpt extends Option {
        protected boolean default_on;
        protected boolean on;

        private SwitchOpt() {
            super();
        }

        protected SwitchOpt(String str, String str2, boolean z) {
            super(str, str2);
            this.default_on = z;
            this.on = z;
        }

        public boolean getValue() {
            return this.on;
        }

        public void setValue(boolean z) {
            if (this.on != z) {
                nexEffectOptions.this.updated = true;
            }
            this.on = z;
        }
    }

    public class TextOpt extends Option {
        private static final long serialVersionUID = 1;
        private boolean isMultiLines;
        private String mTitle;

        private TextOpt() {
            super();
        }

        protected TextOpt(String str, String str2, int i) {
            super(str, str2);
            if (i == 0) {
                this.isMultiLines = false;
            } else {
                this.isMultiLines = true;
            }
        }

        public void setText(String str) {
            this.mTitle = str;
            nexEffectOptions.this.updated = true;
        }

        public String getText() {
            return this.mTitle;
        }
    }

    private nexEffectOptions() {
    }

    public String getEffectID() {
        return this.mEffectID;
    }

    protected nexEffectOptions(String str, int i) {
        this.mEffectID = str;
        this.mEffectType = i;
    }

    void setEffectType(int i) {
        this.mEffectType = i;
    }

    public List<TextOpt> getTextOptions() {
        if (this.m_externalView_texts == null) {
            this.m_externalView_texts = Collections.unmodifiableList(this.mTextOptions);
        }
        return this.m_externalView_texts;
    }

    public List<ColorOpt> getColorOptions() {
        if (this.m_externalView_colors == null) {
            this.m_externalView_colors = Collections.unmodifiableList(this.mColorOptions);
        }
        return this.m_externalView_colors;
    }

    public List<SelectOpt> getSelectOptions() {
        if (this.m_externalView_selects == null) {
            this.m_externalView_selects = Collections.unmodifiableList(this.mSelectOptions);
        }
        return this.m_externalView_selects;
    }

    public List<RangeOpt> getRangeOptions() {
        if (this.m_externalView_ranges == null) {
            this.m_externalView_ranges = Collections.unmodifiableList(this.mRangeOptions);
        }
        return this.m_externalView_ranges;
    }

    public List<SwitchOpt> getSwitchOptions() {
        if (this.m_externalView_switch == null) {
            this.m_externalView_switch = Collections.unmodifiableList(this.mSwitchOptions);
        }
        return this.m_externalView_switch;
    }

    public String[] getOptionIds() {
        return (String[]) this.mOptionIds.toArray(new String[this.mOptionIds.size()]);
    }

    public Option getOptionById(String str) {
        for (TextOpt textOpt : this.mTextOptions) {
            if (textOpt.getId().compareTo(str) == 0) {
                return textOpt;
            }
        }
        for (ColorOpt colorOpt : this.mColorOptions) {
            if (colorOpt.getId().compareTo(str) == 0) {
                return colorOpt;
            }
        }
        for (SelectOpt selectOpt : this.mSelectOptions) {
            if (selectOpt.getId().compareTo(str) == 0) {
                return selectOpt;
            }
        }
        for (RangeOpt rangeOpt : this.mRangeOptions) {
            if (rangeOpt.getId().compareTo(str) == 0) {
                return rangeOpt;
            }
        }
        for (SwitchOpt switchOpt : this.mSwitchOptions) {
            if (switchOpt.getId().compareTo(str) == 0) {
                return switchOpt;
            }
        }
        return null;
    }

    public void setDefaultValue() {
        if (this.mColorOptions != null) {
            for (ColorOpt colorOpt : this.mColorOptions) {
                colorOpt.argb_color = colorOpt.default_argb_color;
            }
        }
        if (this.mSelectOptions != null) {
            for (SelectOpt selectOpt : this.mSelectOptions) {
                selectOpt.setSelectIndex(selectOpt.default_select_index);
            }
        }
        if (this.mRangeOptions != null) {
            for (RangeOpt rangeOpt : this.mRangeOptions) {
                rangeOpt.setValue(rangeOpt.default_value);
            }
        }
        if (this.mSwitchOptions != null) {
            for (SwitchOpt switchOpt : this.mSwitchOptions) {
                switchOpt.setValue(switchOpt.default_on);
            }
        }
    }

    protected void addTextOpt(String str, String str2, int i) {
        this.mOptionIds.add(str);
        this.mTextOptions.add(new TextOpt(str, str2, i));
    }

    protected void addColorOpt(String str, String str2, String str3) {
        this.mOptionIds.add(str);
        this.mColorOptions.add(new ColorOpt(str, str2, str3));
    }

    protected void addSelectOpt(String str, String str2, String[] strArr, String[] strArr2, int i) {
        this.mOptionIds.add(str);
        this.mSelectOptions.add(new SelectOpt(str, str2, strArr, strArr2, i));
    }

    protected void addRangeOpt(String str, String str2, int i, int i2, int i3) {
        this.mOptionIds.add(str);
        this.mRangeOptions.add(new RangeOpt(str, str2, i, i2, i3));
    }

    protected void addSwitchOpt(String str, String str2, boolean z) {
        this.mOptionIds.add(str);
        this.mSwitchOptions.add(new SwitchOpt(str, str2, z));
    }

    public int getTextFieldCount() {
        if (this.mTextOptions == null) {
            return 0;
        }
        return this.mTextOptions.size();
    }

    boolean isUpdated() {
        return this.updated;
    }

    void clearUpadted() {
        this.updated = false;
    }
}
