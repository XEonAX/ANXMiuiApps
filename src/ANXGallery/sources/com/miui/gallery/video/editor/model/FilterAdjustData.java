package com.miui.gallery.video.editor.model;

public class FilterAdjustData extends AdjustData {
    int MAX = 100;
    int MIN = 0;
    private int mId;
    private boolean mIsMid;
    private String mLabel = "";

    public FilterAdjustData(int id, short priority, String name, int icon, boolean isMid, String label) {
        super(priority, name, icon);
        this.mId = id;
        this.mIsMid = isMid;
        this.mLabel = label;
    }

    public String getLable() {
        return this.mLabel;
    }

    public int getMax() {
        return this.MAX;
    }

    public int getMin() {
        return this.mIsMid ? -this.MAX : this.MIN;
    }

    public boolean isMid() {
        return this.mIsMid;
    }

    public int getId() {
        return this.mId;
    }
}
