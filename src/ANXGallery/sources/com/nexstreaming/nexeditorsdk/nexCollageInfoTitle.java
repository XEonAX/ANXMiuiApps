package com.nexstreaming.nexeditorsdk;

public interface nexCollageInfoTitle {
    String getTitle(String str);

    int getTitleDropShadowColor();

    int getTitleFillColor();

    String getTitleFont();

    int getTitleMaxLength();

    int getTitleMaxLines();

    int getTitleRecommendLength();

    int getTitleStrokeColor();

    boolean setTitle(String str);

    boolean setTitleDropShadowColor(int i);

    boolean setTitleFillColor(int i);

    boolean setTitleFont(String str);

    boolean setTitleStrokeColor(int i);
}
