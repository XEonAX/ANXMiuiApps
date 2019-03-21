package com.miui.gallery.video.editor.interfaces;

import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.model.MenuFragmentData;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import java.util.List;

public interface IVideoEditorListener {

    public interface IMenuFragment {
        boolean doCancel();

        List<String> getCurrentEffect();

        int getEffectId();
    }

    public interface IDownloadListener {
        void downloadResourceWithCheck(VideoEditorBaseModel videoEditorBaseModel, int i);

        String getDownloadPath(VideoEditorBaseModel videoEditorBaseModel);
    }

    public interface IUnzipFileListener {
        void onUnzipFileFailed();

        void onUzipFileSuccess();
    }

    public interface IVideoEditorFragmentCallback {
        void changeEditMenu(MenuFragmentData menuFragmentData);

        List<MenuFragmentData> getNavigatorData(int i);

        VideoEditor getVideoEditor();

        boolean isLoadSuccess();

        void onCancel();

        void onSave();

        void showNavEditMenu();

        void updateAudioVoiceView(boolean z);

        void updateAutoTrimView();

        void updatePalyBtnView();
    }
}
