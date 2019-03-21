package com.miui.gallery.movie.ui.listener;

public interface IShareDataCallback {
    void cancelExport();

    void handleShareEvent(String str);

    void resetShareData();

    void updateShareData(boolean z);
}
