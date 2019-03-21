package com.miui.gallery.search.feedback;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.HostManager.Search;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.search.core.source.server.ServerSearchRequest;
import com.miui.gallery.search.core.source.server.ServerSearchRequest.Builder;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.ui.ProcessTask;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.gallery.util.ToastUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.app.AlertDialog;

public class SearchFeedbackHelper {
    private static boolean CAN_USE_CACHE = false;

    private static class FeedbackReportResponseData {
        @SerializedName("failureImageId")
        public Set<Long> failureImageIds;

        private FeedbackReportResponseData() {
        }
    }

    private static class FeedbackTaskResponseData {
        @SerializedName("awardInfo")
        public String awardInfo = null;
        @SerializedName("finishImageNum")
        public int finishImageNum = 0;
        @SerializedName("needHandleImageNum")
        public int needHandleImageNum = 0;

        private FeedbackTaskResponseData() {
        }
    }

    private enum FeedbackType {
        FALSE_POSITIVE("FP"),
        FALSE_NEGATIVE("FN");
        
        private String mValue;

        private FeedbackType(String value) {
            this.mValue = value;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    public interface OnFeedbackCompleteListener {
        void onComplete(int i);
    }

    public static boolean supportFeedbackTask() {
        return CloudControlManager.getInstance().queryFeatureStatus("search-feedback-task") == Status.ENABLE;
    }

    public static Bundle getFeedbackTaskInfo() {
        String userID = SearchUtils.getXiaomiId();
        if (userID == null) {
            SearchLog.d("SearchFeedbackHelper", "Not logged in!");
            return null;
        } else if (PrivacyAgreementUtils.isCloudServiceAgreementEnable(GalleryApp.sGetAndroidContext())) {
            ServerSearchRequest request = new Builder().setQueryPathPrefix(Search.getSearchFeedbackUrlHost()).setUserPath(Builder.getDefaultUserPath(userID)).setUserId(userID).setQueryAppendPath("tag/feedback/task/num").setResultDataType(FeedbackTaskResponseData.class).setUseCache(CAN_USE_CACHE).build();
            try {
                Object[] result = request.executeSync();
                if (result != null && result.length > 0 && (result[0] instanceof FeedbackTaskResponseData)) {
                    FeedbackTaskResponseData taskInfo = result[0];
                    Bundle bundle = new Bundle();
                    bundle.putInt("need_handle_image_num", taskInfo.needHandleImageNum);
                    bundle.putInt("finish_image_num", taskInfo.finishImageNum);
                    if (!TextUtils.isEmpty(taskInfo.awardInfo)) {
                        bundle.putString("task_award_info", taskInfo.awardInfo);
                    }
                    request.setCacheExpires(300000);
                    CAN_USE_CACHE = true;
                    return bundle;
                }
            } catch (RequestError e) {
                SearchLog.e("SearchFeedbackHelper", "Querying feedback info failed, %s", e);
            }
            SearchLog.e("SearchFeedbackHelper", "Empty feedback task info");
            return null;
        } else {
            SearchLog.d("SearchFeedbackHelper", "Cloud privacy agreement denied");
            return null;
        }
    }

    public static void goToFeedbackPolicyPage(Activity activity) {
        String str = "https://i.mi.com/static2?filename=MicloudWebBill/event/gallery/privacy/%s.html";
        Object[] objArr = new Object[1];
        objArr[0] = Locale.getDefault().getLanguage().equals("zh") ? "cn" : "en";
        goToHybridPage(activity, String.format(str, objArr));
    }

    private static void goToHybridPage(Activity activity, String uriString) {
        ActionURIHandler.handleUri(activity, Common.URI_HYBRID_PAGE.buildUpon().appendQueryParameter("url", uriString).build());
    }

    public static boolean needToQueryLikelyImagesForFeedbackTask(String tagName) {
        return !hasReportedTag(tagName);
    }

    public static void reportFalsePositiveImages(Activity activity, String tagName, boolean inFeedbackTask, ArrayList<String> imageServerIds, OnFeedbackCompleteListener completeListener) {
        reportInDialog(activity, tagName, inFeedbackTask, imageServerIds, FeedbackType.FALSE_POSITIVE, completeListener);
    }

    public static void reportFalseNegativeImages(Activity activity, String tagName, boolean inFeedbackTask, ArrayList<String> imageServerIds, OnFeedbackCompleteListener completeListener) {
        reportInDialog(activity, tagName, inFeedbackTask, imageServerIds, FeedbackType.FALSE_NEGATIVE, completeListener);
    }

    private static void reportInDialog(Activity activity, String tagName, boolean inFeedbackTask, ArrayList<String> imageServerIds, FeedbackType feedbackType, OnFeedbackCompleteListener completeListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        if (inFeedbackTask || supportFeedbackTask()) {
            builder.setCheckBox(inFeedbackTask, activity.getString(R.string.search_feedback_contribute));
        }
        final String str = tagName;
        final ArrayList<String> arrayList = imageServerIds;
        final FeedbackType feedbackType2 = feedbackType;
        final Activity activity2 = activity;
        final OnFeedbackCompleteListener onFeedbackCompleteListener = completeListener;
        builder.setTitle(getFeedbackDialogText(activity, tagName, feedbackType)).setPositiveButton(R.string.ok, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                final boolean contribute = ((AlertDialog) dialog).isChecked();
                ProcessTask<Void, Integer> feedbackTask = new ProcessTask(new ProcessCallback<Void, Integer>() {
                    public Integer doProcess(Void[] params) {
                        return Integer.valueOf(SearchFeedbackHelper.reportFalseImages(str, arrayList, feedbackType2, contribute));
                    }
                });
                feedbackTask.setCompleteListener(new OnCompleteListener() {
                    public void onCompleteProcess(Object result) {
                        int count = result == null ? 0 : ((Integer) result).intValue();
                        ToastUtils.makeText(activity2, SearchFeedbackHelper.getFeedbackResultText(activity2, str, feedbackType2, count, contribute));
                        if (onFeedbackCompleteListener != null) {
                            onFeedbackCompleteListener.onComplete(count);
                        }
                    }
                });
                feedbackTask.showProgress(activity2, activity2.getString(R.string.operation_in_process));
                feedbackTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }).setNegativeButton(R.string.cancel, null);
        try {
            builder.create().show();
        } catch (IllegalStateException ex) {
            SearchLog.w("SearchFeedbackHelper", "Ignore exception: %s", ex);
        }
    }

    private static String getFeedbackDialogText(Context context, String tagName, FeedbackType feedbackType) {
        int res;
        switch (feedbackType) {
            case FALSE_POSITIVE:
                res = R.string.search_feedback_false_positive_text;
                break;
            case FALSE_NEGATIVE:
                res = R.string.search_feedback_false_negative_text;
                break;
            default:
                throw new IllegalArgumentException("Invalid feedback type " + feedbackType.getValue());
        }
        return context.getString(res, new Object[]{tagName});
    }

    private static String getFeedbackResultText(Context context, String tagName, FeedbackType feedbackType, int count, boolean contribute) {
        if (count > 0) {
            int res;
            switch (feedbackType) {
                case FALSE_POSITIVE:
                    if (!contribute) {
                        res = R.plurals.search_feedback_done_mark_false_positive;
                        break;
                    }
                    res = R.plurals.search_feedback_done_mark_and_contribute_false_positive;
                    break;
                case FALSE_NEGATIVE:
                    if (!contribute) {
                        res = R.plurals.search_feedback_done_mark_false_negative;
                        break;
                    }
                    res = R.plurals.search_feedback_done_mark_and_contribute_false_negative;
                    break;
                default:
                    throw new IllegalArgumentException("Invalid feedback type " + feedbackType.getValue());
            }
            return context.getResources().getQuantityString(res, count, new Object[]{Integer.valueOf(count), tagName});
        }
        switch (feedbackType) {
            case FALSE_POSITIVE:
                return context.getString(R.string.search_failed_mark_feedback_false_positive);
            case FALSE_NEGATIVE:
                return context.getString(R.string.search_failed_mark_feedback_false_negative);
            default:
                throw new IllegalArgumentException("Invalid feedback type " + feedbackType.getValue());
        }
    }

    private static int reportFalseImages(String tagName, List<String> imageServerIds, FeedbackType feedbackType, boolean contribute) {
        if (TextUtils.isEmpty(tagName) || imageServerIds == null || imageServerIds.isEmpty()) {
            SearchLog.d("SearchFeedbackHelper", "Invalid false image params!");
            return 0;
        }
        String userID = SearchUtils.getXiaomiId();
        if (userID == null) {
            SearchLog.d("SearchFeedbackHelper", "Not logged in!");
            return 0;
        }
        int totalSucceedCount = 0;
        int batchStart = 0;
        while (batchStart < imageServerIds.size()) {
            int batchEnd = Math.min(imageServerIds.size(), batchStart + 10);
            totalSucceedCount += reportFalseImagesBatch(userID, tagName, imageServerIds.subList(batchStart, batchEnd), feedbackType, contribute);
            batchStart = batchEnd;
        }
        if (totalSucceedCount <= 0) {
            return totalSucceedCount;
        }
        CAN_USE_CACHE = false;
        if (!feedbackType.equals(FeedbackType.FALSE_NEGATIVE)) {
            return totalSucceedCount;
        }
        addFeedbackReportedTag(tagName);
        return totalSucceedCount;
    }

    private static int reportFalseImagesBatch(String userID, String tagName, List<String> imageServerIds, FeedbackType feedbackType, boolean contribute) {
        if (PrivacyAgreementUtils.isCloudServiceAgreementEnable(GalleryApp.sGetAndroidContext())) {
            int batchCount = imageServerIds.size();
            String imageIdsString = TextUtils.join(",", imageServerIds);
            SearchLog.d("SearchFeedbackHelper", "Reporting false image info [%s: %s: %s]", feedbackType, tagName, imageServerIds);
            try {
                Object[] result = new Builder().setQueryPathPrefix(Search.getSearchFeedbackUrlHost()).setQueryAppendPath("tag/feedback").setUserPath(Builder.getDefaultUserPath(userID)).setMethod(1002).setUserId(userID).setResultDataType(FeedbackReportResponseData.class).addQueryParam("feedbackType", feedbackType.getValue()).addQueryParam("tagName", tagName).addQueryParam("imageIds", imageIdsString).addQueryParam("isDonate", String.valueOf(contribute)).build().executeSync();
                if (result != null && result.length > 0 && (result[0] instanceof FeedbackReportResponseData)) {
                    FeedbackReportResponseData responseData = result[0];
                    if (responseData.failureImageIds != null) {
                        SearchLog.d("SearchFeedbackHelper", "[%s] report failed!", responseData.failureImageIds);
                        return batchCount - responseData.failureImageIds.size();
                    }
                }
                SearchLog.d("SearchFeedbackHelper", "Done report batch!");
                return batchCount;
            } catch (RequestError e) {
                SearchLog.e("SearchFeedbackHelper", "On report batch error! %s", e);
                return 0;
            }
        }
        SearchLog.d("SearchFeedbackHelper", "Cloud privacy agreement denied");
        return 0;
    }

    private static void addFeedbackReportedTag(String tagName) {
        if (!TextUtils.isEmpty(tagName)) {
            String tags = GalleryPreferences.Search.getFeedbackReportedTags();
            if (TextUtils.isEmpty(tagName)) {
                tags = tagName;
            } else {
                tags = tags + "," + tagName;
            }
            GalleryPreferences.Search.setFeedbackReportedTags(tags);
        }
    }

    private static boolean hasReportedTag(String tagName) {
        if (TextUtils.isEmpty(tagName)) {
            return false;
        }
        String tags = GalleryPreferences.Search.getFeedbackReportedTags();
        if (TextUtils.isEmpty(tags)) {
            return false;
        }
        for (String tag : tags.split(",")) {
            if (tagName.equals(tag)) {
                return true;
            }
        }
        return false;
    }
}
