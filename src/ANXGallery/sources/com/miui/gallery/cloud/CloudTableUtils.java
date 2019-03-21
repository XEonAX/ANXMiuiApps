package com.miui.gallery.cloud;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Locale;

public class CloudTableUtils {
    public static final String IS_VALID_GROUP = String.format(Locale.US, "(%s = %d AND (%s = %d OR %s = %d OR (%s = %d AND %s = \"%s\")))", new Object[]{"serverType", Integer.valueOf(0), "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(10), "localFlag", Integer.valueOf(0), "serverStatus", "custom"});
    private static final ArrayList<Long> sIdsForGroupWithoutRecord = new ArrayList();
    public static final String sItemIsNotGroup = String.format(Locale.US, "(%s = %d OR %s = %d)", new Object[]{"serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2)});
    public static String sPhotoLocalFlag_Create_ForceCreate_Move_Copy = String.format(Locale.US, "(%s = %d OR %s = %d OR %s = %d OR %s = %d)", new Object[]{"localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(5), "localFlag", Integer.valueOf(6), "localFlag", Integer.valueOf(9)});
    public static final String sPhotoLocalFlag_Synced = String.format(Locale.US, "(%s = %d AND %s = \"%s\")", new Object[]{"localFlag", Integer.valueOf(0), "serverStatus", "custom"});
    private static final ArrayList<Long> sSystemAlbumGroupIds = new ArrayList();

    static {
        sSystemAlbumGroupIds.add(Long.valueOf(1));
        sSystemAlbumGroupIds.add(Long.valueOf(2));
        sSystemAlbumGroupIds.add(Long.valueOf(3));
        sSystemAlbumGroupIds.add(Long.valueOf(4));
        sSystemAlbumGroupIds.add(Long.valueOf(1000));
        sSystemAlbumGroupIds.add(Long.valueOf(1001));
        sIdsForGroupWithoutRecord.add(Long.valueOf(3));
        sIdsForGroupWithoutRecord.add(Long.valueOf(4));
        sIdsForGroupWithoutRecord.add(Long.valueOf(1000));
        sIdsForGroupWithoutRecord.add(Long.valueOf(1001));
    }

    public static String sGetWhereClauseAll(String id, String serverId, int localFlag) {
        String groupLocalFlag_Synced_Rename = String.format(Locale.US, "(%d = %d OR %d = %d)", new Object[]{Integer.valueOf(0), Integer.valueOf(localFlag), Integer.valueOf(10), Integer.valueOf(localFlag)});
        String groupLocalFlag_Synced_Create_Rename = String.format(Locale.US, "(%d = %d OR %d = %d OR %d = %d)", new Object[]{Integer.valueOf(0), Integer.valueOf(localFlag), Integer.valueOf(8), Integer.valueOf(localFlag), Integer.valueOf(10), Integer.valueOf(localFlag)});
        return String.format(Locale.US, "( (%s) AND ((%s AND (+%s = %s AND %s)) OR (%s AND (%s = %s AND %s))) )", new Object[]{sItemIsNotGroup, sPhotoLocalFlag_Synced, "groupId", serverId, groupLocalFlag_Synced_Rename, sPhotoLocalFlag_Create_ForceCreate_Move_Copy, "localGroupId", id, groupLocalFlag_Synced_Create_Rename});
    }

    public static long getServerIdForGroupWithoutRecord(long cloudId) {
        if (isGroupWithoutRecordByCloudId(cloudId)) {
            return -1 * cloudId;
        }
        return 0;
    }

    public static long getCloudIdForGroupWithoutRecord(long groupServerId) {
        if (isGroupWithoutRecord(groupServerId)) {
            return -1 * groupServerId;
        }
        return 0;
    }

    public static final boolean isGroupWithoutRecord(long groupServerId) {
        return sIdsForGroupWithoutRecord.contains(Long.valueOf(groupServerId));
    }

    public static final boolean isGroupWithoutRecordByCloudId(long cloudId) {
        return sIdsForGroupWithoutRecord.contains(Long.valueOf(-1 * cloudId));
    }

    public static boolean isCameraGroup(String groupServerId) {
        return String.valueOf(1).equals(groupServerId);
    }

    public static boolean isScreenshotGroup(String groupServerId) {
        return String.valueOf(2).equals(groupServerId);
    }

    public static boolean isSecretAlbum(String groupServerId, String groupLocalId) {
        long serverId = 0;
        if (!TextUtils.isEmpty(groupServerId)) {
            serverId = Long.parseLong(groupServerId);
        } else if (!TextUtils.isEmpty(groupLocalId)) {
            serverId = getServerIdForGroupWithoutRecord(Long.parseLong(groupLocalId));
        }
        return serverId == 1000;
    }

    public static boolean isSystemAlbum(long groupServerId) {
        return sSystemAlbumGroupIds.contains(Long.valueOf(groupServerId));
    }
}
