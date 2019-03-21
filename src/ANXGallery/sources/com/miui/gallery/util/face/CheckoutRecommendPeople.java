package com.miui.gallery.util.face;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.util.Log;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CheckResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.HostManager.PeopleFace;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import org.json.JSONArray;
import org.json.JSONObject;

public class CheckoutRecommendPeople {
    private final Handler mHandler;
    private CheckoutStatusListener mListener;

    public interface CheckoutStatusListener {
        void onFinishCheckoutPeopleFace(int i);
    }

    public CheckoutRecommendPeople(Handler handler, CheckoutStatusListener listener) {
        this.mHandler = handler;
        this.mListener = listener;
    }

    public void clearListener() {
        this.mListener = null;
    }

    public void getRecommendPeopleFromNet(final String peopleId) {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                if (CTA.canConnectNetwork()) {
                    Context context = GalleryApp.sGetAndroidContext();
                    Account account = AccountHelper.getXiaomiAccount(context);
                    if (account == null) {
                        Log.d("syncface", "getRecommendPeopleFromNet  account is null");
                    } else {
                        GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                        if (token == null) {
                            Log.d("syncface", "getRecommendPeopleFromNet  token is null");
                        } else {
                            try {
                                CheckoutRecommendPeople.this.doGetRecommendPeopleFromNet(context, account, token, peopleId);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                } else {
                    Log.d("syncface", "getRecommendPeopleFromNet  cta not allowed");
                }
                return null;
            }
        });
    }

    private void doGetRecommendPeopleFromNet(Context context, Account account, GalleryExtendedAuthToken token, String peopleId) throws Exception {
        String str;
        JSONObject json = CloudUtils.getFromXiaomi(PeopleFace.getPeopleRecommendUrl(peopleId), null, account, token, 0, false);
        String str2 = "syncface";
        StringBuilder append = new StringBuilder().append("doGetRecommendPeopleFromNet peopleId is:").append(peopleId).append("  json is:");
        if (json == null) {
            str = "error";
        } else {
            str = json.toString();
        }
        Log.d(str2, append.append(str).toString());
        if (CheckResult.parseErrorCode(json) == 0) {
            JSONObject data = json.getJSONObject("data");
            if (data.has("recommendPeoples")) {
                JSONArray peoples = data.getJSONArray("recommendPeoples");
                if (peoples != null && peoples.length() > 0) {
                    ContentValues values = new ContentValues();
                    values.put("peopleServerId", peopleId);
                    values.put("recommendPeoplesJson", json.toString());
                    String where = "peopleServerId = ?";
                    String[] args = new String[]{peopleId};
                    Cursor cursor = FaceDataManager.safeQueryPeopleRecommend(CloudUtils.getProjectionAll(), where, args);
                    if (cursor == null || cursor.getCount() <= 0) {
                        FaceDataManager.safeInsertPeopleRecommend(values);
                    } else {
                        FaceDataManager.safeUpdatePeopleRecommend(values, where, args);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    notifyStatus(peoples.length());
                }
            }
        }
    }

    private void notifyStatus(final int peopleNumber) {
        if (this.mListener == null) {
            return;
        }
        if (this.mHandler != null) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CheckoutRecommendPeople.this.mListener.onFinishCheckoutPeopleFace(peopleNumber);
                }
            });
        } else {
            this.mListener.onFinishCheckoutPeopleFace(peopleNumber);
        }
    }
}
