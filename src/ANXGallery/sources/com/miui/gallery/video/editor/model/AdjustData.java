package com.miui.gallery.video.editor.model;

public abstract class AdjustData {
    public final int icon;
    public String name;
    public int priority;
    public int progress = getMin();

    public abstract int getMax();

    public abstract int getMin();

    public abstract boolean isMid();

    public AdjustData(short priority, String name, int icon) {
        this.icon = icon;
        this.name = name;
        this.priority = priority;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }

    public int getProgress() {
        return this.progress;
    }
}
