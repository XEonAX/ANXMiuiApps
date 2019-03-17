package com.alibaba.imagesearch;

import android.graphics.Rect;
import java.io.Serializable;
import java.util.ArrayList;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.util.ErrorConstant;

public class SearchResult implements Serializable {
    public static String RETCODE_BAICHUAN_INITFAILED = "baichuan_init_failed";
    public static String RETCODE_FLOW_LIMITIED = "flow_limited";
    public static String RETCODE_IMGKEY_EMPTY = "imagekey_empty";
    public static String RETCODE_NET_TRAFFIC = "net_traffic";
    public static String RETCODE_PARAM_ILLEGAL = "param_illegal";
    public static String RETCODE_REQUEST_FAILED = "request_failed";
    public static String RETCODE_REQUEST_SUCCESS = "request_success";
    public static String RETCODE_SEARCH_ERROR = "search_error";
    public static String RETCODE_SEARCH_FINISH = "search_finish";
    public static String RETCODE_SEARCH_NO_RESULT = "search_no_result";
    public static String RETCODE_SEARCH_SERVER_ERROR = "search_server_error";
    public static String RETCODE_TFSKEY_EMPTY = "imagekey_invalid";
    public static String WEBVIEW_TIMEOUT = "webview_timeout";
    public ArrayList<Auction> auctions;
    public String category;
    public int httpResponseCode = -1;
    public String imageKey;
    public Rect imageSpec;
    public String imageUrl;
    public Rect region;
    public String retCode;
    public String retMsg;

    public static boolean isLimited(MtopResponse mtopResponse) {
        if (mtopResponse == null) {
            return false;
        }
        String valueOf = String.valueOf(mtopResponse.getResponseCode());
        return "420".equals(valueOf) || "499".equals(valueOf) || "599".equals(valueOf) || ErrorConstant.ERRCODE_API_FLOW_LIMIT_LOCKED.equals(mtopResponse.getRetCode());
    }

    public String toString() {
        return "SearchResult{retCode='" + this.retCode + '\'' + ", retMsg='" + this.retMsg + '\'' + ", httpResponseCode=" + this.httpResponseCode + ", region=" + this.region + ", imageSpec=" + this.imageSpec + ", imageKey='" + this.imageKey + '\'' + ", imageUrl='" + this.imageUrl + '\'' + ", category='" + this.category + '\'' + '}';
    }
}
