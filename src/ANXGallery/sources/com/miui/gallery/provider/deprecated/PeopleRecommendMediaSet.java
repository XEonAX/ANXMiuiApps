package com.miui.gallery.provider.deprecated;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.util.face.FeedbackIgnoredPeople2Server;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PeopleRecommendMediaSet {
    private static Object sLock = new Object();
    private HashMap<String, String> mGroupIdOfFaceMap = new HashMap();
    private HashMap<String, Boolean> mPeopleRecommondHistoryMap = new HashMap();
    private NormalPeopleFaceMediaSet mRecommendSourcePeople;

    public PeopleRecommendMediaSet(NormalPeopleFaceMediaSet recommendSourcePeople) {
        this.mRecommendSourcePeople = recommendSourcePeople;
    }

    public void refreshRecommendInfo() {
        synchronized (sLock) {
            queryTableOfPeopleRecommendInfo(this.mRecommendSourcePeople.getServerId());
        }
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:19:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void queryTableOfPeopleRecommendInfo(String serverId) {
        Cursor cursor = null;
        try {
            cursor = FaceDataManager.queryPeopleRecommondTableToCursor(new String[]{" * "}, "peopleServerId = ? ", new String[]{serverId}, null);
            if (cursor != null && cursor.getCount() > 0) {
                cursor.moveToNext();
                fillMapGroupIdOfFace(cursor.getString(2));
                fillMapPeopleRecommondHistory(cursor.getString(3));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private void fillMapPeopleRecommondHistory(String historyJsonStr) {
        if (!TextUtils.isEmpty(historyJsonStr)) {
            try {
                JSONObject obj = new JSONObject(historyJsonStr);
                Iterator iterator = obj.keys();
                while (iterator != null && iterator.hasNext()) {
                    String key = (String) iterator.next();
                    this.mPeopleRecommondHistoryMap.put(key, Boolean.valueOf(obj.getBoolean(key)));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static PeopleRecommendMediaSet refreshRecommendHistoryToTrue(ArrayList<String> faceServerIds, NormalPeopleFaceMediaSet peopleBeRecommended) {
        PeopleRecommendMediaSet set = new PeopleRecommendMediaSet(peopleBeRecommended);
        set.refreshRecommendInfo();
        set.refreshRecommendHistoryToTrue(faceServerIds);
        return set;
    }

    public static void addSelectItemsToRecommendedMediaSet(ArrayList<String> faceServerIds, NormalPeopleFaceMediaSet peopleBeRecommended) {
        PeopleRecommendMediaSet set = new PeopleRecommendMediaSet(peopleBeRecommended);
        set.refreshRecommendInfo();
        Iterator it = faceServerIds.iterator();
        while (it.hasNext()) {
            peopleBeRecommended.mergeAnAlbumToThis((String) set.mGroupIdOfFaceMap.get((String) it.next()));
        }
    }

    public static void feedbackIgnoredPeople2Server(ArrayList<String> faceServerIds, NormalPeopleFaceMediaSet peopleBeRecommended) {
        PeopleRecommendMediaSet set = new PeopleRecommendMediaSet(peopleBeRecommended);
        set.refreshRecommendInfo();
        ArrayList<String> igonredPeoples = new ArrayList();
        Iterator it = faceServerIds.iterator();
        while (it.hasNext()) {
            igonredPeoples.add(set.mGroupIdOfFaceMap.get((String) it.next()));
        }
        FeedbackIgnoredPeople2Server.startFeedbackIgnoredPeople2Server(peopleBeRecommended.getServerId(), igonredPeoples);
    }

    private static String hashMapToJson(HashMap map) {
        String string = "{";
        for (Entry e : map.entrySet()) {
            string = (string + "'" + e.getKey() + "':") + "'" + e.getValue() + "',";
        }
        return string.substring(0, string.lastIndexOf(",")) + "}";
    }

    public void refreshRecommendHistoryToTrue(ArrayList<String> faceServerIds) {
        synchronized (sLock) {
            Iterator it = faceServerIds.iterator();
            while (it.hasNext()) {
                this.mPeopleRecommondHistoryMap.put((String) it.next(), Boolean.valueOf(true));
            }
            saveHistoryToDB();
        }
    }

    private void saveHistoryToDB() {
        ContentValues values = new ContentValues();
        values.put("recommendHistoryJson", hashMapToJson(this.mPeopleRecommondHistoryMap));
        FaceDataManager.safeUpdatePeopleRecommend(values, "peopleServerId = ?", new String[]{this.mRecommendSourcePeople.getServerId()});
    }

    private ArrayList<String> getNeedRecommendPeopleFaceId() {
        ArrayList<String> needRecommendPeopleId = new ArrayList();
        for (String key : this.mGroupIdOfFaceMap.keySet()) {
            if (!this.mPeopleRecommondHistoryMap.containsKey(key)) {
                this.mPeopleRecommondHistoryMap.put(key, Boolean.valueOf(false));
                needRecommendPeopleId.add(key);
            } else if (!((Boolean) this.mPeopleRecommondHistoryMap.get(key)).booleanValue()) {
                needRecommendPeopleId.add(key);
            }
        }
        return needRecommendPeopleId;
    }

    public int getActualNeedRecommendPeopleFacePhotoNumber() {
        return FaceManager.queryCountOfPhotosOfOneRecommendAlbum(getServerIdsIn());
    }

    private void fillMapGroupIdOfFace(String recommendPeoplesJsonStr) {
        try {
            JSONArray array = new JSONObject(recommendPeoplesJsonStr).getJSONObject("data").getJSONArray("recommendPeoples");
            if (array != null) {
                ArrayList<String> peopleServerIds = FaceManager.queryAllPeopleAlbumServerIds();
                for (int i = 0; i < array.length(); i++) {
                    JSONObject coreFace = array.getJSONObject(i).getJSONObject("coreFace");
                    Iterator iterator = coreFace.keys();
                    while (iterator != null && iterator.hasNext()) {
                        String key = (String) iterator.next();
                        String peopleId = array.getJSONObject(i).getString("peopleId");
                        if (coreFace.getInt(key) == 1 && peopleServerIds.indexOf(peopleId) != -1) {
                            this.mGroupIdOfFaceMap.put(key, peopleId);
                            break;
                        }
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public String getServerIdsIn() {
        ArrayList<String> keys = getNeedRecommendPeopleFaceId();
        if (keys.size() == 0) {
            return "";
        }
        StringBuilder builder = new StringBuilder();
        Iterator it = keys.iterator();
        while (it.hasNext()) {
            String key = (String) it.next();
            if (builder.length() > 0) {
                builder.append(",");
            }
            builder.append("'").append(key).append("'");
        }
        return builder.toString();
    }
}
