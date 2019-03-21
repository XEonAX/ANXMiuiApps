package com.miui.gallery.video.editor.model;

import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;

public class VideoEditorBaseLocalResource extends LocalResource {
    private VideoEditorModuleFactory mModuleFactory;

    public VideoEditorBaseLocalResource(VideoEditorModuleFactory moduleFactory) {
        this.mModuleFactory = moduleFactory;
    }
}
