package com.miui.gallery.video.editor;

import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.model.WaterMarkLocalResource;
import com.miui.gallery.video.editor.util.ToolsUtil;

public class TextStyle extends VideoEditorBaseModel {
    private int mAssetId;
    private String mAssetName;
    private int mIconResId;
    private String mTemplateId;

    public TextStyle(LocalResource data) {
        if (data != null) {
            this.mID = data.id;
            this.mNameKey = data.nameKey;
            this.mLabel = data.label;
            this.mIconResId = data.imageId;
            this.mIconUrl = data.icon;
            this.mType = data.type;
            this.mExtra = "ve_type_extra".equals(data.type);
            this.mIsTemplate = this.mExtra;
            if (data instanceof WaterMarkLocalResource) {
                WaterMarkLocalResource localResource = (WaterMarkLocalResource) data;
                this.mAssetId = ToolsUtil.parseIntFromStr(localResource.assetId);
                this.mAssetName = localResource.assetName;
            }
            if (!this.mExtra) {
                this.mDownloadState = 17;
            }
            this.mLabel = data.label;
        }
    }

    public TextStyle(int iconResId, String type) {
        this.mIconResId = iconResId;
        this.mType = type;
        this.mExtra = "ve_type_extra".equals(type);
        if (!this.mExtra) {
            this.mDownloadState = 17;
        }
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public int getAssetId() {
        return this.mAssetId;
    }

    public void setTemplateId(String templateId) {
        this.mTemplateId = templateId;
    }

    public String getTemplateId() {
        return this.mTemplateId;
    }

    public String getAssetName() {
        return this.mAssetName;
    }
}
