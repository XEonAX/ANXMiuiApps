package com.miui.gallery.search.resultpage;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.HashMap;
import java.util.Map;
import miui.app.Fragment;

public class SearchResultActivity extends BaseActivity {
    private Fragment mFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.search_result_activity);
        Intent intent = getIntent();
        if (intent.getData() == null) {
            SearchLog.e("SearchResultActivity", "No extra data fount!");
            finish();
            return;
        }
        Uri uri = intent.getData();
        String resultType = null;
        String actionType = null;
        if (uri.getLastPathSegment().equals("result")) {
            resultType = uri.getQueryParameter(nexExportFormat.TAG_FORMAT_TYPE);
            actionType = "client_enter_image_result_page";
        }
        if (uri.getLastPathSegment().equals("tags") || "tagList".equals(resultType)) {
            resultType = "tagList";
            actionType = "client_enter_tag_list_page";
        } else if (uri.getLastPathSegment().equals("locations") || "locationList".equals(resultType)) {
            resultType = "locationList";
            actionType = "client_enter_location_list_page";
        } else if (uri.getLastPathSegment().equals("likelyResults") || "likelyImage".equals(resultType)) {
            resultType = "likelyImage";
            actionType = "client_enter_likely_image_list_page";
        }
        if (resultType == null) {
            SearchLog.e("SearchResultActivity", "Invalid action uri, no result type specified!");
            finish();
            return;
        }
        Map<String, String> params = SearchStatUtils.buildSearchEventParams(intent.getExtras());
        if (params == null) {
            params = new HashMap();
        }
        for (String paramName : uri.getQueryParameterNames()) {
            params.put(paramName, uri.getQueryParameter(paramName));
        }
        SearchStatUtils.cacheEvent(intent.getStringExtra("from"), actionType, params);
        this.mFragment = (Fragment) getFragmentManager().findFragmentByTag("RootFragment");
        if (this.mFragment == null) {
            getIntent().setData(uri.buildUpon().appendQueryParameter(nexExportFormat.TAG_FORMAT_TYPE, resultType).build());
            if (resultType.equals("imageList")) {
                this.mFragment = new SearchImageResultFragment();
            } else if (resultType.equals("locationList")) {
                this.mFragment = new LocationListFragment();
            } else if (resultType.equals("tagList")) {
                this.mFragment = new TagListFragment();
            } else if (resultType.equals("likelyImage")) {
                this.mFragment = new SearchFeedbackLikelyResultFragment();
            } else {
                this.mFragment = new SearchResultFragment();
            }
            startFragment(this.mFragment, "RootFragment", false, false);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mFragment.onActivityResult(requestCode, resultCode, data);
    }

    protected int getFragmentContainerId() {
        return R.id.content;
    }
}
