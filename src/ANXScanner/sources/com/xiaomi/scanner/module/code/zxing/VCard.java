package com.xiaomi.scanner.module.code.zxing;

import java.util.ArrayList;

public class VCard {
    private boolean mIsMobile = false;
    private String mKey;
    private String mName;
    private ArrayList<String> mValues;

    public VCard(String key, String name, String value, boolean isMobile) {
        this.mKey = key;
        this.mName = name;
        this.mIsMobile = isMobile;
        addValue(value);
    }

    public void addValue(String value) {
        if (this.mValues == null) {
            this.mValues = new ArrayList();
        }
        if (!this.mValues.contains(value)) {
            this.mValues.add(value);
        }
    }

    public void setKey(String key) {
        this.mKey = key;
    }

    public void setIsMobile(boolean isMobile) {
        this.mIsMobile = isMobile;
    }

    public void setName(String name) {
        this.mName = name;
    }

    public String getName() {
        return this.mName;
    }

    public ArrayList<String> getValues() {
        return this.mValues;
    }

    public boolean getIsMobile() {
        return this.mIsMobile;
    }

    public String getKey() {
        return this.mKey;
    }
}
