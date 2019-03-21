package com.miui.gallery.video.editor;

import com.miui.gallery.R;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.SmartEffectLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.util.ToolsUtil;
import com.nexstreaming.nexeditorsdk.nexTemplateManager.Template;
import java.util.HashMap;

public class SmartEffect extends VideoEditorBaseModel {
    private static HashMap<String, Integer> smartEffectNames = new HashMap<String, Integer>() {
        {
            put("smart_effect_none", Integer.valueOf(R.string.video_editor_smart_effect_none));
            put("smart_effect_movie", Integer.valueOf(R.string.video_editor_smart_effect_movie));
            put("smart_effect_big_film", Integer.valueOf(R.string.video_editor_smart_effect_big_film));
            put("smart_effect_street", Integer.valueOf(R.string.video_editor_smart_effect_street));
            put("smart_effect_halo", Integer.valueOf(R.string.video_editor_smart_effect_halo));
            put("smart_effect_radical", Integer.valueOf(R.string.video_editor_smart_effect_radical));
            put("smart_effect_freeze", Integer.valueOf(R.string.video_editor_smart_effect_freesze));
            put("smart_effect_dynamic", Integer.valueOf(R.string.video_editor_smart_effect_dynamic));
        }
    };
    public final String TAG = "SmartEffect";
    private int mAssetId;
    private String mAssetName;
    private String mEnName;
    private boolean mHasSpeedChange;
    private int mIconResId;
    private int mLongTime;
    private int mNameResid;
    private int mShortTime;
    private Template mTemplate;

    public SmartEffect(LocalResource data) {
        boolean z = true;
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
            if (data instanceof SmartEffectLocalResource) {
                SmartEffectLocalResource localResource = (SmartEffectLocalResource) data;
                this.mAssetId = ToolsUtil.parseIntFromStr(localResource.assetId);
                this.mAssetName = localResource.assetName;
                this.mEnName = localResource.enName;
                this.mLongTime = ToolsUtil.parseIntFromStr(localResource.longTime);
                this.mShortTime = ToolsUtil.parseIntFromStr(localResource.shortTime);
                if (ToolsUtil.parseIntFromStr(localResource.hasSpeedChange) != 1) {
                    z = false;
                }
                this.mHasSpeedChange = z;
            }
            this.mIsTemplate = this.mExtra;
        }
    }

    public SmartEffect(String nameKey, int mIconResId, String type, boolean extra) {
        this.mNameKey = nameKey;
        this.mIconResId = mIconResId;
        this.mType = type;
        this.mExtra = "ve_type_extra".equals(type);
        if (!this.mExtra) {
            this.mDownloadState = 17;
        }
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public void setTemplate(Template template) {
        this.mTemplate = template;
    }

    public Template getTemplate() {
        return this.mTemplate;
    }

    public int getNameResId() {
        if (this.mNameResid == 0 && smartEffectNames != null && smartEffectNames.containsKey(this.mNameKey)) {
            this.mNameResid = ((Integer) smartEffectNames.get(this.mNameKey)).intValue();
        }
        return this.mNameResid;
    }

    public int getShortTime() {
        return this.mShortTime;
    }

    public int getLongTime() {
        return this.mLongTime;
    }

    public boolean isLimitSixtySeconds() {
        return this.mLongTime == 60000;
    }

    public boolean isLimitFourtySeconds() {
        return this.mLongTime == 40000;
    }

    public int getAssetId() {
        return this.mAssetId;
    }

    public boolean isHasSpeedChange() {
        return this.mHasSpeedChange;
    }

    public String getAssetName() {
        return this.mAssetName;
    }

    public String getEnName() {
        return this.mEnName;
    }
}
