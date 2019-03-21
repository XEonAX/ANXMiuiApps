package com.android.internal.storage;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.FileUtils;
import android.os.storage.DiskInfo;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

public class StorageManager {

    private static class Singleton {
        private static final StorageManager INSTANCE = new StorageManager();
    }

    public static StorageManager getInstance() {
        return Singleton.INSTANCE;
    }

    private StorageManager() {
    }

    public List<StorageInfo> getStorageInfos(Context context) {
        List<StorageInfo> storages = new LinkedList();
        if (context != null) {
            android.os.storage.StorageManager storageManager = (android.os.storage.StorageManager) context.getSystemService("storage");
            StorageInfo info;
            try {
                if (VERSION.SDK_INT >= 23) {
                    List<VolumeInfo> volumes = storageManager.getVolumes();
                    if (volumes != null) {
                        for (VolumeInfo volume : volumes) {
                            info = toStorageInfo(volume);
                            if (info != null) {
                                storages.add(info);
                            }
                        }
                    }
                } else {
                    StorageVolume[] volumes2 = storageManager.getVolumeList();
                    if (volumes2 != null) {
                        for (StorageVolume volume2 : volumes2) {
                            info = toStorageInfo(context, volume2);
                            if (info != null) {
                                storages.add(info);
                            }
                        }
                    }
                }
            } catch (Throwable t) {
                t.printStackTrace();
                info = new StorageInfo(Environment.getExternalStorageDirectory().getAbsolutePath());
                info.setMounted(true);
                info.setPrimary(true);
                storages.add(info);
            }
        }
        return storages;
    }

    @TargetApi(24)
    public StorageInfo getStorageInfo(Context context, File file) {
        if (context == null || file == null) {
            return null;
        }
        try {
            android.os.storage.StorageManager storageManager = (android.os.storage.StorageManager) context.getSystemService("storage");
            StorageVolume storageVolume = storageManager.getStorageVolume(file);
            if (storageVolume == null) {
                for (StorageVolume volume : storageManager.getStorageVolumes()) {
                    if (FileUtils.contains(volume.getPath(), file.getAbsolutePath())) {
                        storageVolume = volume;
                        break;
                    }
                }
            }
            if (storageVolume != null) {
                return toStorageInfo(context, storageVolume);
            }
            return null;
        } catch (Throwable t) {
            t.printStackTrace();
            return null;
        }
    }

    private static StorageInfo toStorageInfo(Context context, StorageVolume volume) {
        boolean z = true;
        if (TextUtils.isEmpty(volume.getPath())) {
            return null;
        }
        StorageInfo info = new StorageInfo(volume.getPath());
        info.setWrapped(volume);
        info.setDescription(volume.getDescription(context));
        info.setMounted("mounted".equalsIgnoreCase(volume.getState()));
        if (volume.isPrimary() && "mounted".equals(Environment.getExternalStorageState())) {
            info.setPrimary(true);
            info.setPath(Environment.getExternalStorageDirectory().getAbsolutePath());
        }
        if (!(volume.isRemovable() && volume.getPath().startsWith("/storage/sdcard"))) {
            z = false;
        }
        info.setSd(z);
        return info;
    }

    private static StorageInfo toStorageInfo(VolumeInfo volume) {
        File path = volume.getPath();
        if (!(path == null || TextUtils.isEmpty(path.getAbsolutePath()))) {
            int type = volume.getType();
            if (type == 2 || type == 0) {
                StorageInfo info = new StorageInfo(path.getAbsolutePath());
                info.setWrapped(volume);
                info.setDescription(volume.getDescription());
                info.setMounted(volume.getState() == 2);
                info.setVisible(volume.isVisible());
                if (volume.isPrimary() && "mounted".equals(Environment.getExternalStorageState())) {
                    info.setPrimary(true);
                    info.setPath(Environment.getExternalStorageDirectory().getAbsolutePath());
                }
                DiskInfo diskInfo = volume.getDisk();
                if (diskInfo == null) {
                    return info;
                }
                info.setSd(diskInfo.isSd());
                info.setUsb(diskInfo.isUsb());
                return info;
            }
        }
        return null;
    }
}
