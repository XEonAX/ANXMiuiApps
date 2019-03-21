package com.miui.gallery.video.editor.net;

import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.SmartEffectLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseLocalResource;
import com.miui.gallery.video.editor.model.WaterMarkLocalResource;
import com.miui.gallery.video.editor.util.ToolsUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class VideoEditorResourceRequest extends VideoEditorBaseResourceRequest {
    private final long RESOURCE_AUDIO_PARENT_ID = 9507179096834080L;
    private final long RESOURCE_SMARTEFFECT_PARENT_ID = 9506731220402368L;
    private final long RESOURCE_TEXT_PARENT_ID = 9468682483925152L;
    private VideoEditorModuleFactory mModuleFactory;

    public VideoEditorResourceRequest(int type, VideoEditorModuleFactory factory) {
        super(type);
        this.mModuleFactory = factory;
    }

    protected long getParentId() {
        switch (this.type) {
            case R.id.video_editor_audio /*2131886128*/:
                return 9507179096834080L;
            case R.id.video_editor_smart_effect /*2131886133*/:
                return 9506731220402368L;
            case R.id.video_editor_water_mark /*2131886136*/:
                return 9468682483925152L;
            default:
                return 0;
        }
    }

    protected LocalResource newLocalResource() {
        if (this.type == R.id.video_editor_smart_effect) {
            return new SmartEffectLocalResource(this.mModuleFactory);
        }
        if (this.type == R.id.video_editor_water_mark) {
            return new WaterMarkLocalResource(this.mModuleFactory);
        }
        return new VideoEditorBaseLocalResource(this.mModuleFactory);
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void setResult(LocalResource resource) {
        JSONObject extraObject;
        String assetId;
        String update;
        String assetName;
        JSONException e;
        JSONObject jSONObject;
        if (resource instanceof SmartEffectLocalResource) {
            SmartEffectLocalResource smartEffectLocalResource = (SmartEffectLocalResource) resource;
            try {
                extraObject = new JSONObject(resource.extra);
                try {
                    assetId = extraObject.optString("assetid");
                    update = extraObject.optString("update");
                    assetName = extraObject.optString("assetName");
                    String longTime = extraObject.optString("longTime");
                    String shortTime = extraObject.optString("shortTime");
                    String hasSpeedChange = extraObject.optString("hasSpeedChange");
                    String enName = extraObject.optString("enName");
                    smartEffectLocalResource.assetId = ToolsUtil.getTrimedString(assetId);
                    smartEffectLocalResource.update = ToolsUtil.getTrimedString(update);
                    smartEffectLocalResource.assetName = ToolsUtil.getTrimedString(assetName);
                    smartEffectLocalResource.longTime = ToolsUtil.getTrimedString(longTime);
                    smartEffectLocalResource.shortTime = ToolsUtil.getTrimedString(shortTime);
                    smartEffectLocalResource.hasSpeedChange = ToolsUtil.getTrimedString(hasSpeedChange);
                    smartEffectLocalResource.enName = ToolsUtil.getTrimedString(enName);
                } catch (JSONException e2) {
                    e = e2;
                    jSONObject = extraObject;
                    e.printStackTrace();
                    if (resource instanceof WaterMarkLocalResource) {
                    }
                }
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
                if (resource instanceof WaterMarkLocalResource) {
                }
            }
        }
        if (resource instanceof WaterMarkLocalResource) {
            WaterMarkLocalResource waterMarkLocalResource = (WaterMarkLocalResource) resource;
            try {
                extraObject = new JSONObject(resource.extra);
                try {
                    assetId = extraObject.optString("assetid");
                    update = extraObject.optString("update");
                    assetName = extraObject.optString("assetName");
                    String cn = extraObject.optString("cn");
                    waterMarkLocalResource.assetId = TextUtils.isEmpty(assetId) ? "" : assetId.trim();
                    waterMarkLocalResource.update = TextUtils.isEmpty(update) ? "" : update.trim();
                    waterMarkLocalResource.assetName = TextUtils.isEmpty(assetName) ? "" : assetName.trim();
                    waterMarkLocalResource.isInternational = ToolsUtil.parseIntFromStr(ToolsUtil.getTrimedString(cn));
                } catch (JSONException e4) {
                    e = e4;
                    jSONObject = extraObject;
                    e.printStackTrace();
                }
            } catch (JSONException e5) {
                e = e5;
                e.printStackTrace();
            }
        }
    }
}
