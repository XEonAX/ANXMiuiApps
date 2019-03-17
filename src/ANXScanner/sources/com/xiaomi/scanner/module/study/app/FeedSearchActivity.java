package com.xiaomi.scanner.module.study.app;

import android.app.ActionBar;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.baidu.homework.api.ZybAPI;
import com.baidu.homework.model.SearchResult;
import com.baidu.homework.network.NetworkCallback;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.study.ui.WrapFeedSearchView;
import com.xiaomi.scanner.module.study.ui.WrapFeedSearchView.CheckTopDoneListener;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.FileUtil;
import com.xiaomi.scanner.util.PictureDecoder;
import java.util.HashMap;
import java.util.Map;

public class FeedSearchActivity extends Activity implements CheckTopDoneListener, OnRequestPermissionsResultCallback {
    public static final String SEARCH_PIC_URL = "search_pic_url";
    private static final Tag TAG = new Tag("FeedSearchActivity");
    private View mContentView;
    private ImageView mImgView;
    private Bitmap mPictureBitmap;
    private String mPictureUri;
    private ScrollView mScrollView;
    private View mSearchLayout;
    private WebView mWebView = null;
    private WrapFeedSearchView mWrapFeedSearchView;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setVolumeControlStream(3);
        setContentView(R.layout.study_module_layout);
        onCreateTask();
    }

    private void onCreateTask() {
        initViews();
        this.mPictureUri = getIntent().getStringExtra(SEARCH_PIC_URL);
        startWenbaSearch();
    }

    private void startWenbaSearch() {
        if (TextUtils.isEmpty(this.mPictureUri)) {
            Log.w(TAG, "onCreateTask: invalid picPath " + this.mPictureUri);
            showNoResult(R.string.error_get_image);
            return;
        }
        new AsyncTask<Void, Void, byte[]>() {
            protected byte[] doInBackground(Void... voids) {
                FeedSearchActivity.this.mPictureBitmap = PictureDecoder.decodeSafely(FeedSearchActivity.this.mPictureUri);
                return FileUtil.readFileToByteArray(FeedSearchActivity.this.mPictureUri);
            }

            protected void onPostExecute(byte[] fileBytes) {
                if (!(FeedSearchActivity.this.mPictureBitmap == null || FeedSearchActivity.this.mPictureBitmap.isRecycled())) {
                    FeedSearchActivity.this.mImgView.setImageBitmap(FeedSearchActivity.this.mPictureBitmap);
                    FeedSearchActivity.this.mWrapFeedSearchView.setTopSpanHeight(FeedSearchActivity.this.getResources().getDimensionPixelSize(R.dimen.top_image_height), true);
                }
                if (fileBytes == null || fileBytes.length == 0) {
                    Log.w(FeedSearchActivity.TAG, "updateFeed: invalid picture");
                    FeedSearchActivity.this.showNoResult(R.string.error_get_image);
                    return;
                }
                FeedSearchActivity.this.mSearchLayout.setVisibility(0);
                ZybAPI.picSearch(FeedSearchActivity.this, fileBytes, new NetworkCallback<SearchResult>() {
                    public void onResponse(SearchResult result) {
                        Log.v(FeedSearchActivity.TAG, "result.getStatus():" + result.getStatus());
                        if (result.getStatus() != 0) {
                            FeedSearchActivity.this.searchError(result.getStatus(), R.string.error_server_error);
                        } else if (result.htmls.length > 0) {
                            Log.v(FeedSearchActivity.TAG, "result.htmls.length:" + result.htmls.length);
                            UsageStatistics.trackEvent(UsageStatistics.KEY_STUDY_SUCCESS);
                            FeedSearchActivity.this.mSearchLayout.setVisibility(4);
                            FeedSearchActivity.this.initWebView();
                            FeedSearchActivity.this.mWebView.loadDataWithBaseURL(ZybAPI.HOST, result.htmls[0], "text/html", "UTF-8", null);
                        } else {
                            FeedSearchActivity.this.searchEmpty();
                        }
                    }
                });
            }
        }.execute(new Void[0]);
    }

    private void initViews() {
        View titleView = LayoutInflater.from(this).inflate(R.layout.study_vendor_custom_view, null);
        ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setCustomView(titleView, new LayoutParams(-2, -2, 8388629));
            bar.setDisplayOptions(16, 16);
        }
        this.mWrapFeedSearchView = (WrapFeedSearchView) findViewById(R.id.feed_layout);
        this.mContentView = LayoutInflater.from(this).inflate(R.layout.study_module_content_layout, null);
        this.mWrapFeedSearchView.setContent(this.mContentView);
        this.mWrapFeedSearchView.setCheckListener(this);
        this.mSearchLayout = this.mContentView.findViewById(R.id.search_layout);
        View backContent = LayoutInflater.from(this).inflate(R.layout.study_module_top_layout, null);
        this.mWrapFeedSearchView.setBackContent(backContent);
        this.mImgView = (ImageView) backContent.findViewById(R.id.search_image);
        View openApp = findViewById(R.id.study_layout_openApp);
        if (openApp != null) {
            openApp.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    AppJumpUtils.startZuoyebang(FeedSearchActivity.this);
                }
            });
        }
    }

    private void initWebView() {
        this.mContentView.findViewById(R.id.search_result_layout).setVisibility(0);
        this.mScrollView = (ScrollView) this.mContentView.findViewById(R.id.skin_scroll_view);
        this.mScrollView.setHorizontalScrollBarEnabled(false);
        this.mScrollView.setVerticalScrollBarEnabled(false);
        this.mWebView = (WebView) this.mContentView.findViewById(R.id.search_result_webview);
        WebSettings webSettings = this.mWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        if (VERSION.SDK_INT >= 21) {
            webSettings.setMixedContentMode(0);
        }
        webSettings.setSupportZoom(false);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setCacheMode(-1);
        webSettings.setDomStorageEnabled(true);
        webSettings.setDefaultTextEncodingName("UTF-8");
        webSettings.setTextZoom(100);
    }

    protected void onResume() {
        super.onResume();
        UsageStatistics.recordPageStart(this, "FeedSearchActivity");
    }

    protected void onPause() {
        super.onPause();
        UsageStatistics.recordPageEnd();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mPictureBitmap != null && !this.mPictureBitmap.isRecycled()) {
            this.mPictureBitmap.recycle();
            this.mPictureBitmap = null;
        }
    }

    public boolean checkTopDone() {
        if (this.mScrollView != null) {
            if (this.mScrollView.getScrollY() == 0) {
                return true;
            }
            return false;
        } else if (this.mSearchLayout == null || this.mSearchLayout.getVisibility() != 0) {
            return false;
        } else {
            return true;
        }
    }

    private void showNoResult(int resId) {
        View view = this.mContentView.findViewById(R.id.no_result_layout);
        if (view == null) {
            Log.w(TAG, "view is already called so drop this time");
            return;
        }
        view.setVisibility(0);
        ((TextView) this.mContentView.findViewById(R.id.no_result_hint)).setText(resId);
        this.mSearchLayout.setVisibility(4);
    }

    private void searchEmpty() {
        UsageStatistics.trackEvent(UsageStatistics.KEY_STUDY_EMPTY_RESPONSE);
        showNoResult(R.string.error_empty_result);
    }

    private void searchError(int errorCode, int errorMsgId) {
        Map param = new HashMap(1);
        param.put(UsageStatistics.PARAM_STUDY_ERROR_CODE, String.valueOf(errorCode));
        UsageStatistics.trackEvent(UsageStatistics.KEY_STUDY_ERROR, param);
        showNoResult(errorMsgId);
    }
}
