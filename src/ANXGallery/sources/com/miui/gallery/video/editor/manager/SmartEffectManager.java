package com.miui.gallery.video.editor.manager;

import android.text.TextUtils;
import com.miui.gallery.video.editor.SmartEffect;
import com.nexstreaming.nexeditorsdk.nexTemplateManager.Template;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SmartEffectManager {
    public void initDataWithTemplate(List<Template> templates, ArrayList<SmartEffect> smartEffects) {
        for (Template template : templates) {
            if (template != null) {
                int assetIdx = template.packageInfo().assetIdx();
                String assetName = template.packageInfo().assetId();
                String id = template.id();
                boolean uninstall = true;
                if (!TextUtils.isEmpty(id)) {
                    Iterator it = smartEffects.iterator();
                    while (it.hasNext()) {
                        SmartEffect smartEffect = (SmartEffect) it.next();
                        if (smartEffect != null && !TextUtils.isEmpty(smartEffect.getAssetName()) && id.contains(smartEffect.getAssetName()) && assetName.equals(smartEffect.getAssetName()) && assetIdx == smartEffect.getAssetId()) {
                            smartEffect.setDownloadState(17);
                            smartEffect.setTemplate(template);
                            uninstall = false;
                            break;
                        }
                    }
                    if (uninstall) {
                        NexAssetTemplateManager.getInstance().uninstallPackageById(id);
                    }
                }
            }
        }
    }

    public void updateDataWithTemplate(List<Template> templates, SmartEffect smartEffect) {
        if (smartEffect != null && templates != null) {
            for (Template template : templates) {
                if (template != null) {
                    int assetIdx = template.packageInfo().assetIdx();
                    String assetName = template.packageInfo().assetId();
                    String id = template.id();
                    if (!TextUtils.isEmpty(smartEffect.getAssetName()) && id.contains(smartEffect.getAssetName()) && assetName.equals(smartEffect.getAssetName()) && assetIdx == smartEffect.getAssetId()) {
                        smartEffect.setDownloadState(0);
                        smartEffect.setTemplate(template);
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }
}
