package com.miui.gallery.card.scenario;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.cloud.CloudTableUtils;

public class ScenarioConstants {
    public static final String ALL_IMAGE_BASE_SELECTION = ("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType=1 AND lower(mimeType) != 'image/gif'  AND exifImageWidth > 1000 AND exifImageLength > 1000 AND (localGroupId in (SELECT _id FROM cloud WHERE (serverType=0) AND attributes&4!=0)) AND localGroupId != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1000) + " AND " + "localGroupId" + " != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1001));
    public static final String CAMERA_BASE_SELECTION = ("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType=1 AND lower(mimeType) != 'image/gif'  AND exifImageWidth > 1000 AND exifImageLength > 1000 AND localGroupId = (SELECT _id FROM cloud WHERE serverId=1) AND localGroupId != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1000) + " AND " + "localGroupId" + " != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1001));
    public static final String NON_CAMERA_BASE_SELECTION = ("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType=1 AND lower(mimeType) != 'image/gif'  AND exifImageWidth > 1000 AND exifImageLength > 1000 AND localGroupId != (SELECT _id FROM cloud WHERE serverId=1) AND localGroupId != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1000) + " AND " + "localGroupId" + " != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1001));
    public static final Integer[] TAGS_ACTIVITY = new Integer[]{Integer.valueOf(52), Integer.valueOf(56), Integer.valueOf(57)};
    public static final Integer[] TAGS_CAT = new Integer[]{Integer.valueOf(40)};
    public static final Integer[] TAGS_DOG = new Integer[]{Integer.valueOf(41)};
    public static final Integer[] TAGS_FOODS = new Integer[]{Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(10), Integer.valueOf(11), Integer.valueOf(12), Integer.valueOf(13), Integer.valueOf(14), Integer.valueOf(15), Integer.valueOf(16), Integer.valueOf(17), Integer.valueOf(18), Integer.valueOf(19), Integer.valueOf(20), Integer.valueOf(21), Integer.valueOf(22)};
    public static final Integer[] TAGS_PARTY = new Integer[]{Integer.valueOf(2), Integer.valueOf(51)};
    public static final Integer[] TAGS_PETS = new Integer[]{Integer.valueOf(40), Integer.valueOf(41)};
    public static final Integer[] TAGS_SPORTS = new Integer[]{Integer.valueOf(80), Integer.valueOf(81), Integer.valueOf(82), Integer.valueOf(84), Integer.valueOf(85), Integer.valueOf(86), Integer.valueOf(87), Integer.valueOf(88), Integer.valueOf(BaiduSceneResult.MOUNTAINEERING), Integer.valueOf(90), Integer.valueOf(92), Integer.valueOf(99)};
}
