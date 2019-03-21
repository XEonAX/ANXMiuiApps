package com.miui.gallery.video.editor;

import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import java.io.File;
import java.util.HashMap;

public class LocalAudio extends VideoEditorBaseModel {
    private static HashMap<String, Integer> audioNames = new HashMap<String, Integer>() {
        {
            put("audio_none", Integer.valueOf(R.string.video_editor_audio_none));
            put("audio_memory", Integer.valueOf(R.string.video_editor_audio_memory));
            put("audio_dynamic", Integer.valueOf(R.string.video_editor_audio_dynamic));
            put("audio_love", Integer.valueOf(R.string.video_editor_audio_love));
            put("audio_sad", Integer.valueOf(R.string.video_editor_audio_sad));
            put("audio_rock", Integer.valueOf(R.string.video_editor_audio_rock));
            put("audio_young", Integer.valueOf(R.string.video_editor_audio_young));
            put("audio_custom", Integer.valueOf(R.string.video_editor_audio_custom));
        }
    };
    private int mIconResId;
    private int mNameResId;
    private String mSrcPath;

    public LocalAudio(LocalResource data) {
        if (data != null) {
            this.mID = data.id;
            this.mNameKey = data.nameKey;
            this.mLabel = data.label;
            this.mIconResId = data.imageId;
            this.mIconUrl = data.icon;
            this.mType = data.type;
            this.mExtra = "ve_type_extra".equals(data.type);
            if (!this.mExtra) {
                this.mDownloadState = 17;
            }
        }
    }

    public LocalAudio(String nameKey, int mIconResId, String type, boolean extra) {
        this.mNameKey = nameKey;
        this.mIconResId = mIconResId;
        this.mType = type;
        this.mExtra = "ve_type_extra".equals(type);
        if (!this.mExtra) {
            this.mDownloadState = 17;
        }
    }

    public String getFileName() {
        return this.mNameKey.trim() + ".aac";
    }

    public int getNameResId() {
        if (this.mNameResId == 0 && audioNames != null && audioNames.containsKey(this.mNameKey)) {
            this.mNameResId = ((Integer) audioNames.get(this.mNameKey)).intValue();
        }
        return this.mNameResId;
    }

    public String getSrcPath() {
        if (!TextUtils.isEmpty(this.mUnZipPath)) {
            this.mSrcPath = this.mUnZipPath + File.separator + getFileName();
        }
        return this.mSrcPath;
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public void setSrcPath(String srcPath) {
        this.mSrcPath = srcPath;
    }
}
