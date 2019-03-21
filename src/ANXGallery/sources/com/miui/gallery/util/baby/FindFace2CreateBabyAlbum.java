package com.miui.gallery.util.baby;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.activity.facebaby.BabyAlbumSettingActivityBase;
import com.miui.gallery.activity.facebaby.OwnerBabyAlbumSettingActivity;
import com.miui.gallery.activity.facebaby.SharerBabyAlbumSettingActivity;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.provider.deprecated.ThumbnailInfo;

public class FindFace2CreateBabyAlbum {
    public static void gotoFillBabyAlbumInfo(Activity activity, NormalPeopleFaceMediaSet mediaSet, String coverFaceServerID) {
        Intent intent = new Intent(activity, OwnerBabyAlbumSettingActivity.class);
        Bundle bundle = new Bundle();
        NormalPeopleFaceMediaSet set = mediaSet;
        bundle.putLong("faceAlbumLocalId", set.getBucketId());
        if (!TextUtils.isEmpty(coverFaceServerID)) {
            bundle.putString("faceAlbumCoverFaceServerId", coverFaceServerID);
        }
        bundle.putString("faceAlbumServerId", set.getServerId());
        bundle.putString("name", set.getName());
        int[] days = BabyAlbumSettingActivityBase.getCurrentYearMonthDay(System.currentTimeMillis());
        bundle.putString("birthday", BabyAlbumSettingActivityBase.combine2Birthday(days[0], days[1], days[2]));
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 13);
    }

    public static void gotoBabyAlbumInfoPage(Activity activity, ThumbnailInfo thumbnailInfo, BabyInfo babyInfo, long babyAlbumLocalId, Bitmap faceBitmap, boolean isSharer) {
        Intent intent = new Intent(activity, isSharer ? SharerBabyAlbumSettingActivity.class : OwnerBabyAlbumSettingActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("baby_info", babyInfo);
        bundle.putLong("babyAlbumLocalId", babyAlbumLocalId);
        if (thumbnailInfo != null) {
            intent.putExtra("thumbnail_info_of_baby", thumbnailInfo.toString());
        }
        if (faceBitmap != null) {
            bundle.putParcelable("face_bitmap", faceBitmap);
        }
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 12);
    }

    public static void createBabyAlbumAndSaveBabyInfo(String babyName, BabyInfo babyInfo, NormalPeopleFaceMediaSet faceMediaSet, Activity activity, String faceId) {
        String localId = faceMediaSet.createBabyAlbumAndAddItems(babyName, babyInfo, activity);
        ThumbnailInfo thumbnailInfo = new ThumbnailInfo((long) Integer.parseInt(localId), false, null);
        thumbnailInfo.setFaceId(faceId);
        OwnerBabyAlbumSettingActivity.saveInfo2Db(babyInfo, faceMediaSet.getServerId(), Long.valueOf(faceMediaSet.getBucketId()), localId, thumbnailInfo);
        Baby.recordBabyAlbumHasShortcut(babyName);
    }
}
