package com.miui.gallery.video.editor.model;

import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.video.editor.LocalAudio;
import com.miui.gallery.video.editor.SmartEffect;
import com.miui.gallery.video.editor.TextStyle;
import com.miui.gallery.video.editor.factory.AudioFactory;
import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class VedioEditorModuleAdapter {
    public static ArrayList<LocalAudio> loadAudioData(VideoEditorModuleFactory factory, List<LocalResource> list) {
        ArrayList<LocalAudio> audios = new ArrayList();
        if (BaseMiscUtil.isValid(list)) {
            for (LocalResource data : list) {
                if (data != null) {
                    LocalAudio localAudio = new LocalAudio(data);
                    if (factory != null && (factory instanceof AudioFactory)) {
                        String file = factory.getTemplateDir(data.id) + File.separator + localAudio.getFileName();
                        if (new File(file).exists()) {
                            localAudio.setDownloadState(17);
                            localAudio.setSrcPath(file);
                        }
                    }
                    audios.add(localAudio);
                }
            }
        }
        return audios;
    }

    public static ArrayList<SmartEffect> loadSmartEffects(List<LocalResource> list) {
        ArrayList<SmartEffect> data = new ArrayList();
        if (BaseMiscUtil.isValid(list)) {
            for (LocalResource model : list) {
                if (model != null) {
                    data.add(new SmartEffect(model));
                }
            }
        }
        return data;
    }

    public static ArrayList<TextStyle> loadWaterMarks(List<LocalResource> list) {
        ArrayList<TextStyle> data = new ArrayList();
        if (BaseMiscUtil.isValid(list)) {
            for (LocalResource model : list) {
                if (model != null && (!BaseBuildUtil.isInternational() || model.isInternational())) {
                    data.add(new TextStyle(model));
                }
            }
        }
        return data;
    }
}
