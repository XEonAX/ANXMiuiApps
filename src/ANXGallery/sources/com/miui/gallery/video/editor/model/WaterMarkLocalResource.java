package com.miui.gallery.video.editor.model;

import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;

public class WaterMarkLocalResource extends VideoEditorBaseLocalResource {
    public String assetId;
    public String assetName;
    public String update;

    public WaterMarkLocalResource(VideoEditorModuleFactory moduleFactory) {
        super(moduleFactory);
    }
}
