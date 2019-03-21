package com.nexstreaming.nexeditorsdk;

public interface nexCollageInfoDraw {
    public static final int kRotate_doing = 0;
    public static final int kRotate_end = 2;
    public static final int kRotate_start = 1;

    boolean changeSource(nexClip nexclip);

    nexClip getBindSource();

    String getLut();

    int getRotate();

    int getTagID();

    boolean getVisible();

    boolean setAudioVolume(int i);

    boolean setFlip(int i);

    boolean setLut(String str);

    boolean setRotate(int i, int i2);

    boolean setScale(float f);

    boolean setTranslate(int i, int i2, int i3, int i4);

    boolean setVisible(boolean z);
}
