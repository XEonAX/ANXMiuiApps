package com.miui.gallery.util.face;

import android.accounts.Account;
import android.content.Context;
import android.util.Log;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.HostManager.PeopleFace;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public class FeedbackIgnoredPeople2Server {
    public static void startFeedbackIgnoredPeople2Server(final String destPeople, final ArrayList<String> ignoredPeoples) {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    Log.d("FeedbackIgnoredPeople2Server", "FeedbackIgnoredPeople2Server  account is null");
                } else {
                    GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                    if (token == null) {
                        Log.d("FeedbackIgnoredPeople2Server", "FeedbackIgnoredPeople2Server  token is null");
                    } else {
                        try {
                            FeedbackIgnoredPeople2Server.doFeedback(context, account, token, destPeople, ignoredPeoples);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                return null;
            }
        });
    }

    private static void doFeedback(Context context, Account account, GalleryExtendedAuthToken token, String peopleId, ArrayList<String> ignoredPeoples) throws Exception {
        if (peopleId != null && ignoredPeoples != null && ignoredPeoples.size() != 0) {
            String str;
            String url = PeopleFace.getPeopleFeedBackUrl();
            ArrayList<NameValuePair> parameters = new ArrayList();
            parameters.add(new BasicNameValuePair("clientOpType", String.valueOf(7)));
            JSONObject json = new JSONObject();
            json.put("targetPeopleId", peopleId);
            JSONArray ignoredIds = new JSONArray();
            Iterator it = ignoredPeoples.iterator();
            while (it.hasNext()) {
                ignoredIds.put((String) it.next());
            }
            json.put("rejectPeopleIds", ignoredIds);
            parameters.add(new BasicNameValuePair("data", json.toString()));
            JSONObject result = CloudUtils.postToXiaomi(url, parameters, null, account, token, 3, false);
            String str2 = "FeedbackIgnoredPeople2Server";
            StringBuilder append = new StringBuilder().append("doFeedback peopleId is:").append(peopleId).append("  json is:");
            if (result == null) {
                str = "error";
            } else {
                str = result.toString();
            }
            Log.d(str2, append.append(str).toString());
        }
    }
}
