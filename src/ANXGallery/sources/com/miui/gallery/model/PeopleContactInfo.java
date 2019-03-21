package com.miui.gallery.model;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PeopleContactInfo {
    private static String JSON_TAG_PHONE_NUMBER = "phoneNumbers";
    private static String JSON_TAG_RELATION = "relation";
    private static String JSON_TAG_RELATIONSHIP = "relationship";
    private static String JSON_TAG_RELATIONTEXT = "relationText";
    public static String[] sRelationItemsValue;
    public String coverPath;
    public boolean isRepeatName;
    public String localGroupId;
    public String name;
    public String phone;
    public String relationWithMe;
    public String relationWithMeText;

    public enum Relation {
        unknown(0),
        friend(1),
        classmate(2),
        collegue(3),
        family(4),
        child(5),
        myself(6),
        userDefine(7);
        
        private final int mRelationType;

        private Relation(int relationType) {
            this.mRelationType = relationType;
        }

        public int getRelationType() {
            return this.mRelationType;
        }

        public static Relation fromRelationType(int relationType) {
            if (relationType == friend.mRelationType) {
                return friend;
            }
            if (relationType == classmate.mRelationType) {
                return classmate;
            }
            if (relationType == collegue.mRelationType) {
                return collegue;
            }
            if (relationType == family.mRelationType) {
                return family;
            }
            if (relationType == child.mRelationType) {
                return child;
            }
            if (relationType == myself.mRelationType) {
                return myself;
            }
            if (relationType == userDefine.mRelationType) {
                return userDefine;
            }
            return unknown;
        }
    }

    public static class UserDefineRelation {
        private static ArrayList<String> mUserDefineRelations;

        public static synchronized void setUserDefineRelations(ArrayList<String> relations) {
            synchronized (UserDefineRelation.class) {
                mUserDefineRelations = relations;
            }
        }

        public static synchronized ArrayList<String> getUserDefineRelations() {
            ArrayList<String> arrayList;
            synchronized (UserDefineRelation.class) {
                if (mUserDefineRelations != null) {
                    arrayList = new ArrayList(mUserDefineRelations);
                } else {
                    arrayList = null;
                }
            }
            return arrayList;
        }

        public static synchronized void addRelation(String relation) {
            synchronized (UserDefineRelation.class) {
                if (!(mUserDefineRelations == null || relation == null || mUserDefineRelations.indexOf(relation) != -1)) {
                    mUserDefineRelations.add(relation);
                    Collections.sort(mUserDefineRelations);
                }
            }
        }
    }

    public PeopleContactInfo() {
        initRelationItemsValue();
    }

    private static void initRelationItemsValue() {
        if (sRelationItemsValue == null) {
            sRelationItemsValue = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.relation_with_me_value);
        }
    }

    public static PeopleContactInfo fromJson(String infoJson) {
        if (TextUtils.isEmpty(infoJson)) {
            return null;
        }
        try {
            JSONObject infoObj = new JSONObject(infoJson);
            if (infoObj == null) {
                return null;
            }
            PeopleContactInfo info = new PeopleContactInfo();
            try {
                if (infoObj.has(JSON_TAG_PHONE_NUMBER)) {
                    info.phone = (String) infoObj.getJSONArray(JSON_TAG_PHONE_NUMBER).get(0);
                }
                if (infoObj.has(JSON_TAG_RELATIONSHIP)) {
                    info.relationWithMe = infoObj.getJSONObject(JSON_TAG_RELATIONSHIP).optString(JSON_TAG_RELATION);
                    if (isUserDefineRelation(getRelationType(info.relationWithMe))) {
                        info.relationWithMeText = infoObj.getJSONObject(JSON_TAG_RELATIONSHIP).optString(JSON_TAG_RELATIONTEXT);
                        return info;
                    }
                    info.relationWithMeText = info.relationWithMe;
                }
                return info;
            } catch (Exception e) {
                PeopleContactInfo peopleContactInfo = info;
                return null;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    public String formatContactJson() {
        boolean hasPhone;
        boolean hasRelation;
        if (TextUtils.isEmpty(this.phone)) {
            hasPhone = false;
        } else {
            hasPhone = true;
        }
        if (TextUtils.isEmpty(this.relationWithMe)) {
            hasRelation = false;
        } else {
            hasRelation = true;
        }
        if (hasPhone || hasRelation) {
            JSONObject root = new JSONObject();
            if (hasPhone) {
                try {
                    JSONArray phones = new JSONArray();
                    phones.put(0, this.phone);
                    root.put(JSON_TAG_PHONE_NUMBER, phones);
                } catch (JSONException e) {
                }
            }
            if (hasRelation) {
                JSONObject relationship = new JSONObject();
                relationship.put(JSON_TAG_RELATION, this.relationWithMe);
                relationship.put(JSON_TAG_RELATIONTEXT, this.relationWithMeText);
                root.put(JSON_TAG_RELATIONSHIP, relationship);
            }
            return root.toString();
        }
        return null;
    }

    public static int getRelationTypesCount() {
        return Relation.values().length;
    }

    public static String getRelationOrderSql() {
        return "CASE relationType WHEN " + Relation.myself.getRelationType() + " THEN 0" + " WHEN " + Relation.child.getRelationType() + " THEN 1" + " WHEN " + Relation.family.getRelationType() + " THEN 2" + " WHEN " + Relation.collegue.getRelationType() + " THEN 3" + " WHEN " + Relation.classmate.getRelationType() + " THEN 4" + " WHEN " + Relation.friend.getRelationType() + " THEN 5" + " WHEN " + Relation.userDefine.getRelationType() + " THEN 6" + " WHEN " + Relation.unknown.getRelationType() + " THEN 7" + " ELSE 8 END ";
    }

    public static String getUserDefineRelationOrderSql() {
        return "(CASE WHEN relationType = 7 THEN relationText ELSE NULL END) COLLATE LOCALIZED ";
    }

    public int getRelationType() {
        if (TextUtils.isEmpty(this.relationWithMe)) {
            return Relation.unknown.getRelationType();
        }
        for (Relation relation : Relation.values()) {
            if (relation == Relation.valueOf(this.relationWithMe)) {
                return relation.getRelationType();
            }
        }
        return Relation.unknown.getRelationType();
    }

    public static int getRelationType(String relationValue) {
        if (TextUtils.isEmpty(relationValue)) {
            return Relation.unknown.getRelationType();
        }
        for (Relation relation : Relation.values()) {
            if (relation == Relation.valueOf(relationValue)) {
                return relation.getRelationType();
            }
        }
        return Relation.unknown.getRelationType();
    }

    public static Relation getRelation(int relationType) {
        return Relation.fromRelationType(relationType);
    }

    public static String getRelationValue(Relation relation) {
        if (relation == null) {
            return null;
        }
        initRelationItemsValue();
        for (String relationValue : sRelationItemsValue) {
            if (relation == Relation.valueOf(relationValue)) {
                return relationValue;
            }
        }
        return null;
    }

    public static String getRelationShow(int relationType) {
        if (relationType < 0) {
            relationType = Relation.unknown.getRelationType();
        }
        Relation relation = getRelation(relationType);
        String[] relationItems = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.relation_with_me);
        initRelationItemsValue();
        for (int i = 0; i < sRelationItemsValue.length; i++) {
            if (relation.name().equalsIgnoreCase(sRelationItemsValue[i])) {
                return relationItems[i];
            }
        }
        return "";
    }

    public static String getDefaultNameForMyself(Context context) {
        return context.getResources().getString(R.string.mark_myself_default_name);
    }

    public static ArrayList<String> getSystemRelationNameItems() {
        initRelationItemsValue();
        String[] sRelationItemsName = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.relation_with_me);
        String unknownRelation = Relation.unknown.toString();
        ArrayList<String> items = new ArrayList();
        for (int i = 0; i < sRelationItemsName.length; i++) {
            if (!sRelationItemsValue[i].equals(unknownRelation)) {
                items.add(sRelationItemsName[i]);
            }
        }
        return items;
    }

    public static String getRelationName(Relation relation) {
        initRelationItemsValue();
        String relationValue = getRelationValue(relation);
        String[] sRelationItemsName = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.relation_with_me);
        for (int i = 0; i < sRelationItemsName.length; i++) {
            if (sRelationItemsValue[i].equals(relationValue)) {
                return sRelationItemsName[i];
            }
        }
        return null;
    }

    public static ArrayList<String> getSystemRelationValueItems() {
        initRelationItemsValue();
        ArrayList<String> items = new ArrayList();
        String unknownRelation = Relation.unknown.toString();
        for (int i = 0; i < sRelationItemsValue.length; i++) {
            if (!sRelationItemsValue[i].equals(unknownRelation)) {
                items.add(sRelationItemsValue[i]);
            }
        }
        return items;
    }

    public static boolean isUnKnownRelation(int relationType) {
        return relationType == Relation.unknown.getRelationType();
    }

    public static boolean isUserDefineRelation(int relationType) {
        return relationType == Relation.userDefine.getRelationType();
    }

    public static boolean isBabyRelation(int relationType) {
        return relationType == Relation.child.getRelationType();
    }

    public static String getUserDefineRelation() {
        return Relation.userDefine.toString();
    }

    public static int getUserDefineRelationIndex() {
        return Relation.userDefine.getRelationType();
    }
}
