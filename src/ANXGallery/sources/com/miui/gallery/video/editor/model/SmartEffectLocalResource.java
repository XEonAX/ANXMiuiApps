package com.miui.gallery.video.editor.model;

import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;

public class SmartEffectLocalResource extends VideoEditorBaseLocalResource {
    public String assetId;
    public String assetName;
    public String enName;
    public String hasSpeedChange;
    public String longTime;
    public String shortTime;
    public String update;

    public SmartEffectLocalResource(VideoEditorModuleFactory moduleFactory) {
        super(moduleFactory);
    }
}
