package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.Arrays;
import java.util.List;

public class ServerReservedAlbumNamesStrategy extends BaseStrategy {
    @SerializedName("reserved-names")
    private List<String> mReservedAlbumNames;

    public boolean containsName(String albumName) {
        if (TextUtils.isEmpty(albumName)) {
            return true;
        }
        if (!BaseMiscUtil.isValid(this.mReservedAlbumNames)) {
            return false;
        }
        for (String reservedAlbumName : this.mReservedAlbumNames) {
            if (albumName.equalsIgnoreCase(reservedAlbumName)) {
                return true;
            }
        }
        return false;
    }

    public static ServerReservedAlbumNamesStrategy createDefault() {
        ServerReservedAlbumNamesStrategy strategy = new ServerReservedAlbumNamesStrategy();
        strategy.mReservedAlbumNames = Arrays.asList(new String[]{"我的照片", "截屏", "截图", "my photo", "my photos", "screenshot", "screenshots", "我的照片", "截圖", "camera photos", "相机", "相機", "所有视频", "所有影片", "All videos", "宠物相册", "Pet Album", "视频", "全景", "視頻", "Videos", "Panoramas"});
        return strategy;
    }

    public String toString() {
        return "ServerReservedAlbumNamesStrategy{mReservedAlbumNames=" + this.mReservedAlbumNames + '}';
    }
}
