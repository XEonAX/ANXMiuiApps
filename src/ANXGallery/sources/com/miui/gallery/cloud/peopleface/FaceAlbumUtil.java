package com.miui.gallery.cloud.peopleface;

import android.content.ContentValues;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.model.PeopleContactInfo;
import miui.app.constants.ThemeManagerConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class FaceAlbumUtil {
    public static ContentValues getContentValuesForPeopleFace(JSONObject schemaJson) throws JSONException {
        if (schemaJson == null) {
            return null;
        }
        ContentValues values = new ContentValues();
        if (schemaJson.has("id")) {
            values.put("serverId", schemaJson.getString("id"));
        }
        if (schemaJson.has("status")) {
            values.put("serverStatus", schemaJson.getString("status"));
        }
        if (schemaJson.has("type")) {
            values.put("type", schemaJson.getString("type"));
        }
        if (schemaJson.has("eTag")) {
            values.put("eTag", schemaJson.getString("eTag"));
        }
        if (schemaJson.has("parentId")) {
            values.put("groupId", schemaJson.getString("parentId"));
        }
        if (!schemaJson.has("peopleContent")) {
            return values;
        }
        JSONObject peopleContent = schemaJson.getJSONObject("peopleContent");
        if (peopleContent.getBoolean("isSetPeopleName")) {
            values.put("peopleName", peopleContent.getString("peopleName"));
            values.put("visibilityType", Integer.valueOf(1));
        }
        if (peopleContent.has(ThemeManagerConstants.COMPONENT_CODE_CONTACT)) {
            String contactInfo = peopleContent.getJSONObject(ThemeManagerConstants.COMPONENT_CODE_CONTACT).toString();
            values.put("peopleContactJsonInfo", contactInfo);
            PeopleContactInfo peopleInfo = PeopleContactInfo.fromJson(contactInfo);
            if (peopleInfo != null) {
                values.put("relationType", Integer.valueOf(PeopleContactInfo.getRelationType(peopleInfo.relationWithMe)));
                if (peopleInfo.relationWithMeText != null) {
                    values.put("relationText", peopleInfo.relationWithMeText);
                }
            }
        }
        if (!peopleContent.getBoolean("isVisible")) {
            values.put("visibilityType", Integer.valueOf(2));
        }
        if (peopleContent.has("peopleInfo")) {
            JSONObject peopleInfo2 = peopleContent.getJSONObject("peopleInfo");
            if (!peopleInfo2.has("peopleType") || !BabyAlbumUtils.BABY_BABY.equalsIgnoreCase(peopleInfo2.getString("peopleType"))) {
                putPeopleTypeNoDefine(values);
                return values;
            } else if (!peopleInfo2.has("gender")) {
                values.put("peopleType", Integer.valueOf(1));
                return values;
            } else if (BabyAlbumUtils.BABY_MALE.equalsIgnoreCase(peopleInfo2.getString("gender"))) {
                values.put("peopleType", Integer.valueOf(1));
                return values;
            } else {
                values.put("peopleType", Integer.valueOf(2));
                return values;
            }
        }
        putPeopleTypeNoDefine(values);
        return values;
    }

    private static void putPeopleTypeNoDefine(ContentValues values) {
        values.put("peopleType", Integer.valueOf(0));
    }

    public static String getPeopleName(JSONObject record) throws JSONException {
        if (record.has("peopleContent")) {
            JSONObject peopleContent = record.getJSONObject("peopleContent");
            if (peopleContent.getBoolean("isSetPeopleName")) {
                return peopleContent.getString("peopleName");
            }
        }
        return null;
    }
}
