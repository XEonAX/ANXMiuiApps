package com.miui.gallery.cloud.baby;

import android.content.Context;
import android.database.DatabaseUtils;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.util.GalleryUtils;

public class BabyAlbumUtils {
    public static String BABY_ALBUM_BIRTHDAY = "birthday";
    public static String BABY_ALBUM_NAME = "name";
    public static String BABY_AUTO_UPDATE = "autoUpdate";
    public static String BABY_BABY = "baby";
    public static String BABY_BABY_ALBUM_LOCAL_ID = "babyAlbumLocalId";
    public static String BABY_FACE_ALBUM_LOCAL_ID = "faceAlbumLocalId";
    public static String BABY_GENDER = "gender";
    public static String BABY_MALE = "male";
    public static String BABY_PEOPLE_ID = "peopleId";
    public static String BABY_RELATION = "relation";
    public static String BABY_RELATION_TEXT = "relationText";

    public static void saveBabyInfo(String albumLocalId, BabyInfo babyInfo, boolean isShareAlbum) {
        if (isShareAlbum) {
            saveShareAlbumBabyInfo(albumLocalId, babyInfo);
        } else {
            saveOwnerAlbumBabyInfo(albumLocalId, babyInfo);
        }
    }

    public static void saveOwnerAlbumBabyInfo(String albumLocalId, BabyInfo babyInfo) {
        saveBabyInfoJson(albumLocalId, babyInfo, "babyInfoJson", 63, "peopleId", "editedColumns", "_id", "cloud");
    }

    public static void saveShareAlbumBabyInfo(String albumLocalId, BabyInfo babyInfo) {
        saveBabyInfoJson(albumLocalId, babyInfo, "babyInfoJson", 25, "peopleId", "editedColumns", "_id", "shareAlbum");
    }

    private static void saveBabyInfoJson(String albumLocalId, BabyInfo babyInfo, String babyInfoJsonColumnName, int babyInfoJsonColumnIndex, String peopleIdColumnName, String editedColumnName, String idColumnName, String table) {
        String str;
        String editColumnElement = GalleryCloudUtils.transformToEditedColumnsElement(babyInfoJsonColumnIndex);
        String str2 = "update %s set %s=%s, %s='%s', %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%s";
        Object[] objArr = new Object[12];
        objArr[0] = table;
        objArr[1] = babyInfoJsonColumnName;
        if (babyInfo == null) {
            str = "";
        } else {
            str = DatabaseUtils.sqlEscapeString(babyInfo.toJSON());
        }
        objArr[2] = str;
        objArr[3] = peopleIdColumnName;
        objArr[4] = babyInfo == null ? "" : babyInfo.mPeopleId;
        objArr[5] = editedColumnName;
        objArr[6] = editedColumnName;
        objArr[7] = editColumnElement;
        objArr[8] = editColumnElement;
        objArr[9] = editColumnElement;
        objArr[10] = idColumnName;
        objArr[11] = albumLocalId;
        GalleryUtils.safeExec(String.format(str2, objArr));
    }

    public static boolean isBabyAlbumForThisServerId(Context context, String serverId, boolean isShared) {
        if (isShared) {
            DBShareAlbum result = CloudUtils.getGroupItemByColumnnameAndValueFromShare(context, "serverId", serverId);
            if (!(result == null || TextUtils.isEmpty(result.getBabyInfoJson()))) {
                return true;
            }
        }
        DBCloud result2 = CloudUtils.getGroupItemByColumnnameAndValue(context, "serverId", serverId, false);
        if (!(result2 == null || TextUtils.isEmpty(result2.getBabyInfoJson()))) {
            return true;
        }
        return false;
    }
}
