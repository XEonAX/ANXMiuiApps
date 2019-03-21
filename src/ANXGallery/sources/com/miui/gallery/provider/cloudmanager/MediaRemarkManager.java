package com.miui.gallery.provider.cloudmanager;

import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.StringUtils;
import java.util.List;

public class MediaRemarkManager {
    public static int addFileHandleMediaIds(long... ids) {
        Numbers.ensurePositive(ids);
        int rows = 0;
        if (ids.length > 0) {
            EntityManager em = GalleryEntityManager.getInstance();
            Entity info = new MediaRemarkInfo();
            info.setOperationType(1);
            for (long id : ids) {
                int i;
                info.setCloudId(id);
                if (em.insert(info)) {
                    i = 1;
                } else {
                    i = 0;
                }
                rows += i;
            }
            Log.d("CloudManager.MediaRemarkManager", "Done insert %d ids, result %d", Integer.valueOf(ids.length), Integer.valueOf(rows));
        }
        return rows;
    }

    public static long[] loadFileHandleMediaIds() {
        List<MediaRemarkInfo> infoList = GalleryEntityManager.getInstance().query(MediaRemarkInfo.class, "operationType = ?", new String[]{String.valueOf(1)}, "_id ASC", null);
        if (infoList == null || infoList.size() <= 0) {
            return null;
        }
        long[] jArr = new long[infoList.size()];
        for (int i = 0; i < jArr.length; i++) {
            jArr[i] = ((MediaRemarkInfo) infoList.get(i)).getCloudId();
        }
        return jArr;
    }

    public static boolean doneHandleFileForMediaIds(long... ids) {
        Numbers.ensurePositive(ids);
        if (ids.length <= 0) {
            return false;
        }
        boolean result = GalleryEntityManager.getInstance().delete(MediaRemarkInfo.class, String.format("%s = %s AND %s IN (%s)", new Object[]{"operationType", Integer.valueOf(1), "mediaId", StringUtils.join(",", ids)}), null);
        Log.d("CloudManager.MediaRemarkManager", "Delete %d ids, result %s", Integer.valueOf(ids.length), String.valueOf(result));
        return result;
    }

    public static boolean onAccountDelete() {
        try {
            GalleryEntityManager.getInstance().deleteAll(MediaRemarkInfo.class);
            return true;
        } catch (Object e) {
            Log.e("CloudManager.MediaRemarkManager", "onAccountDelete occur error. %s", e);
            return false;
        }
    }
}
