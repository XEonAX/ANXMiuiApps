package com.miui.gallery.video.editor.manager;

import android.text.TextUtils;
import com.miui.gallery.video.editor.TextStyle;
import java.util.ArrayList;
import java.util.Iterator;

public class WaterMarkManager {
    public void initDataWithTemplate(String[] ids, ArrayList<TextStyle> textStyles) {
        if (ids != null && textStyles != null) {
            for (String id : ids) {
                boolean uninstall = true;
                if (!TextUtils.isEmpty(id)) {
                    Iterator it = textStyles.iterator();
                    while (it.hasNext()) {
                        TextStyle textStyle = (TextStyle) it.next();
                        if (textStyle != null && !TextUtils.isEmpty(textStyle.getAssetName()) && id.contains(textStyle.getAssetName())) {
                            textStyle.setDownloadState(17);
                            textStyle.setTemplateId(id);
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

    public void updateDataWithTemplate(String[] ids, TextStyle textStyle) {
        if (ids != null && textStyle != null) {
            int i = 0;
            while (i < ids.length) {
                String id = ids[i];
                if (TextUtils.isEmpty(textStyle.getAssetName()) || !id.contains(textStyle.getAssetName())) {
                    i++;
                } else {
                    textStyle.setDownloadState(0);
                    textStyle.setTemplateId(id);
                    return;
                }
            }
        }
    }
}
