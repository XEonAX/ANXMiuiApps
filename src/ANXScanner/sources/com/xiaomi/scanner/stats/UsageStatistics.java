package com.xiaomi.scanner.stats;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.scanner.BuildConfig;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.ScannerThreadPool;
import java.util.HashMap;
import java.util.Map;

public class UsageStatistics {
    private static final String APP_ID = "2882303761517478150";
    private static final String APP_KEY = "5151747861150";
    private static final String CHANNEL_NAME = "mi_stat_channel";
    private static final String DEFAULT_CATEGORY = "Scanner";
    private static final String EMPTY_CHANNEL_VALUE = "${channel_value}";
    public static final String KEY_AR_CODE_SELECT_CONFIRM = "ar_code_select_confirm";
    public static final String KEY_AR_CODE_SELECT_PHOTO_BTN = "ar_code_select_photo_btn_click";
    public static final String KEY_AR_CODE_SERVER_REQ = "ar_code_server_req";
    public static final String KEY_AR_CODE_SERVER_RESULT = "ar_code_server_result";
    public static final String KEY_AR_CODE_TAB = "ar_code_tab_click";
    public static final String KEY_BARCODE_ACTIVE_TIME = "barcode_active_time";
    public static final String KEY_BARCODE_CALLED_COUNT = "barcode_by_call_count";
    public static final String KEY_BARCODE_CALL_ALIPAY_COUNT = "barcode_call_alipay_count";
    public static final String KEY_BARCODE_CALL_APPSTORE_COUNT = "barcode_call_appstore_count";
    public static final String KEY_BARCODE_CALL_MIACCOUNT_COUNT = "barcode_call_miaccount_count";
    public static final String KEY_BARCODE_CALL_MIBI_COUNT = "barcode_call_mibi_count";
    public static final String KEY_BARCODE_CALL_MIPAY_COUNT = "barcode_call_mipay_count";
    public static final String KEY_BARCODE_CALL_WECHAT_COUNT = "barcode_call_wechat_count";
    public static final String KEY_BARCODE_CALL_YELLOW_PAGE_COUNT = "barcode_call_yellowpage_count";
    public static final String KEY_BARCODE_CARD_BUTTON_CLICK_COUNT = "barcode_card_button_click_count";
    public static final String KEY_BARCODE_DECODE_COUNT = "barcode_decode_count";
    public static final String KEY_BARCODE_DECODE_IMAGE_ZXING_COUNT = "barcode_decode_image_zxing_count";
    public static final String KEY_BARCODE_DECODE_TIME = "barcode_decode_time";
    public static final String KEY_BARCODE_GOTO_TAOBAO_FAIL_COUNT = "barcode_goto_taobao_fail_count";
    public static final String KEY_BARCODE_GOTO_TAOBAO_SUCCESS_COUNT = "barcode_goto_taobao_success_count";
    public static final String KEY_BARCODE_MARKET_BUTTON_CLICK_COUNT = "barcode_market_button_click_count";
    public static final String KEY_BARCODE_MIRACAST_BUTTON_CLICK_COUNT = "barcode_miracast_button_click_count";
    public static final String KEY_BARCODE_PAYTM_BUTTON_CLICK_COUNT = "barcode_paytm_button_click_count";
    public static final String KEY_BARCODE_TAOBAO_SUCCESS_COUNT = "barcode_taobao_success_count";
    public static final String KEY_BARCODE_TEXT_BUTTON_CLICK_COUNT = "barcode_text_button_click_count";
    public static final String KEY_BARCODE_URL_BUTTON_CLICK_COUNT = "barcode_url_button_click_count";
    public static final String KEY_BARCODE_WECHAT_BUTTON_CLICK_COUNT = "barcode_wechat_button_click_count";
    public static final String KEY_BARCODE_WIFI_BUTTON_CLICK_COUNT = "barcode_wifi_button_click_count";
    public static final String KEY_BARCODE_ZXING_SUCCESS_COUNT = "barcode_zxing_success_count";
    public static final String KEY_BUSINESS_ADDRESS_ACTION = "business_address_action";
    public static final String KEY_BUSINESS_ADDRESS_ACTION_GPS_CLICK = "business_address_acton_gps_click";
    public static final String KEY_BUSINESS_CARD_ADDRESS_CLICK = "business_card_address_click";
    public static final String KEY_BUSINESS_CARD_COPY_CLICK = "business_card_copy_click";
    public static final String KEY_BUSINESS_CARD_CREATE_CONTACT = "business_card_create_contact";
    public static final String KEY_BUSINESS_CARD_CROP_CONFIRM_CLICK = "business_card_crop_confirm_click";
    public static final String KEY_BUSINESS_CARD_CROP_VIEW_SHOW = "business_card_crop_view_show";
    public static final String KEY_BUSINESS_CARD_DATE_CLICK = "business_card_date_click";
    public static final String KEY_BUSINESS_CARD_EMAIL_CLICK = "business_card_email_click";
    public static final String KEY_BUSINESS_CARD_LINK_CLICK = "business_card_link_click";
    public static final String KEY_BUSINESS_CARD_PHONE_CLICK = "business_card_phone_click";
    public static final String KEY_BUSINESS_CARD_REQ_SERVER = "business_card_req_server";
    public static final String KEY_BUSINESS_CARD_RESULT_BACK = "business_card_result_back";
    public static final String KEY_BUSINESS_CARD_RESULT_SHOW = "business_card_result_show";
    public static final String KEY_BUSINESS_CARD_SELECT_PHOTO = "business_card_select_photo";
    public static final String KEY_BUSINESS_CARD_TAB_CLICK = "business_card_tab_click";
    public static final String KEY_BUSINESS_CARD_TAKE_PHOTO = "business_card_take_photo";
    public static final String KEY_BUSINESS_DATE_ACTION = "business_date_action";
    public static final String KEY_BUSINESS_DATE_ACTION_SCHEDULE_CLICK = "business_date_acton_schedule_click";
    public static final String KEY_BUSINESS_EMAIL_ACTION = "business_email_action";
    public static final String KEY_BUSINESS_EMAIL_ACTION_SEND_CLICK = "business_email_acton_send_click";
    public static final String KEY_BUSINESS_LINK_ACTION = "business_link_action";
    public static final String KEY_BUSINESS_LINK_ACTION_OPEN_CLICK = "business_link_acton_open_click";
    public static final String KEY_BUSINESS_PHONE_ACTION = "business_phone_action";
    public static final String KEY_BUSINESS_PHONE_ACTION_CALL_CLICK = "business_phone_acton_call_click";
    public static final String KEY_BUSINESS_PHONE_ACTION_CONTACT_CLICK = "business_phone_action_contact_click";
    private static final String KEY_CAMERA_FAILURE = "camera_failure";
    public static final String KEY_COMMON_NO_AUTOFOCUS_CALLBACK_COUNT = "no_autofocus_callback_count";
    public static final String KEY_DOCUMENT_SELECT_ADJUST = "document_select_adjust";
    public static final String KEY_DOCUMENT_SELECT_CHANGE_COLOR = "document_select_change_color";
    public static final String KEY_DOCUMENT_SELECT_RECOG_WORD = "document_select_recog_word";
    public static final String KEY_DOCUMENT_SELECT_SAVE = "document_select_save";
    public static final String KEY_DOCUMENT_SERVER_REQ = "document_server_req";
    public static final String KEY_DOCUMENT_SERVER_RESULT = "document_server_result";
    public static final String KEY_DOCUMENT_TAB = "document_tab_click";
    public static final String KEY_DOCUMENT_TAKE_PHOTO_ADJUST = "document_take_photo_adjust";
    public static final String KEY_DOCUMENT_TAKE_PHOTO_CHANGE_COLOR = "document_take_photo_change_color";
    public static final String KEY_DOCUMENT_TAKE_PHOTO_RECOG_WORD = "document_take_photo_recog_word";
    public static final String KEY_DOCUMENT_TAKE_PHOTO_SAVE = "document_take_photo_save";
    public static final String KEY_ENTER_APP = "enter_app";
    public static final String KEY_LIGHT_CLICK = "light_click";
    public static final String KEY_PLANT_ALBUM_CANCEL = "plant_album_cancel";
    public static final String KEY_PLANT_ALBUM_CLICK = "plant_album_click";
    public static final String KEY_PLANT_ALBUM_CONFIRM = "plant_album_confirm";
    public static final String KEY_PLANT_CLICK = "plant_click";
    public static final String KEY_PLANT_REQ = "plant_req";
    public static final String KEY_PLANT_RESULT_FAIL = "plant_result_fail";
    public static final String KEY_PLANT_RESULT_SUCCESS = "plant_result_success";
    public static final String KEY_SHOPPING_SERVER_REQ = "shopping_server_req";
    public static final String KEY_SHOPPING_TAG_CLICK = "shopping_tab_click";
    public static final String KEY_STUDY_ACTIVE_COUNT = "study_active_count";
    public static final String KEY_STUDY_ACTIVE_TIME = "study_active_time";
    public static final String KEY_STUDY_CALLED_COUNT = "study_by_call_count";
    public static final String KEY_STUDY_EMPTY_RESPONSE = "study_empty_response";
    public static final String KEY_STUDY_ERROR = "study_error";
    public static final String KEY_STUDY_OPEN_ZUOYEBANG_COUNT = "study_open_zuoyebang";
    public static final String KEY_STUDY_SUCCESS = "study_success";
    public static final String KEY_TRANSLATE_AUTO_ALL_TRANSLATION = "translate_auto_all_translation";
    public static final String KEY_TRANSLATE_AUTO_LOCK = "translate_auto_lock";
    public static final String KEY_TRANSLATE_AUTO_RESULT = "translate_auto_result";
    public static final String KEY_TRANSLATE_AUTO_SELECT_WORD_TAB = "translate_auto_select_word_tab";
    public static final String KEY_TRANSLATE_AUTO_UNLOCK = "translate_auto_unlock";
    public static final String KEY_TRANSLATE_CHANGE_TYPE = "translate_change_type";
    public static final String KEY_TRANSLATE_COMPARE = "translate_compare";
    public static final String KEY_TRANSLATE_LONG_WORD_SELECT_IMAGE = "translate_long_word_select_image";
    public static final String KEY_TRANSLATE_LONG_WORD_TAB = "translate_long_word_tab";
    public static final String KEY_TRANSLATE_LONG_WORD_TAKE_PICK = "translate_take_pic";
    public static final String KEY_TRANSLATE_RESULT = "translate_result";
    public static final String KEY_TRANSLATE_SELECT_LANG = "translate_select_lang_click";
    public static final String KEY_TRANSLATE_SERVER_REQ = "translate_server_req";
    public static final String KEY_TRANSLATE_TAB = "translate_tab_click";
    public static final int NONE = -1;
    public static final String PARAM_BARCODE_CALLER = "barcode_caller";
    public static final String PARAM_BARCODE_CALLER_ACTION_SEND = "barcode_caller_action_send";
    public static final String PARAM_BARCODE_TYPE = "barcode_type";
    private static final String PARAM_CAMERA_FAILURE_ACTION = "action";
    private static final String PARAM_CAMERA_FAILURE_CAUSE = "cause";
    private static final String PARAM_CAMERA_FAILURE_INFO = "info";
    private static final String PARAM_CAMERA_FAILURE_STATE = "state";
    public static final String PARAM_COMMON_SOURCE_LANGUAGE = "source_language";
    public static final String PARAM_STUDY_CALLER = "study_caller";
    public static final String PARAM_STUDY_ERROR_CODE = "error_code";
    private static final String PARAM_VERSION_CODE = "param_version_code";
    private static final String PARAM_VERSION_NAME = "param_version_name";
    private static final Tag TAG = new Tag("UsageStatistics");
    private static final long UPLOAD_POLICY_INTERVAL = 300000;
    private static boolean sInitialized;
    private static final boolean sIsEnabled = (!DeviceUtil.isInternationalBuild());

    public class CameraFailure {
        public static final int API_RUNTIME_EXCEPTION = 104;
        public static final int API_TIMEOUT = 105;
        public static final int OPEN_FAILURE = 102;
        public static final int RECONNECT_FAILURE = 103;
        public static final int SECURITY = 101;
        public static final int UNKNOWN_REASON = 100;
    }

    public class StorageFailure {
        public static final int ACCESS_FAILURE = 201;
    }

    public static void initialize(ScannerApp scannerApp) {
        if (sIsEnabled && !sInitialized) {
            sInitialized = true;
            try {
                CustomSettings.setUseSystemUploadingService(true);
                MiStatInterface.initialize(scannerApp, APP_ID, APP_KEY, getChannelValue(scannerApp));
                MiStatInterface.enableExceptionCatcher(true);
                MiStatInterface.setUploadPolicy(0, UPLOAD_POLICY_INTERVAL);
                Log.i(TAG, "sVersionName = 10.6, sVersionCode=10600");
            } catch (Exception e) {
                Log.e(TAG, e.getMessage(), e);
                sInitialized = false;
            }
        }
    }

    public static String getChannelValue(Context context) {
        String channel = null;
        try {
            channel = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(CHANNEL_NAME);
        } catch (NameNotFoundException e) {
            Log.e(TAG, "getChannelValue error", e);
        }
        if (TextUtils.isEmpty(channel) || channel.equals(EMPTY_CHANNEL_VALUE)) {
            channel = Constants.CHANNEL_DEFAULT;
        }
        Log.i(TAG, "getChannelValue: " + channel);
        return channel;
    }

    private static void appendVersions(Map<String, String> params) {
        params.put(PARAM_VERSION_NAME, BuildConfig.VERSION_NAME);
        params.put(PARAM_VERSION_CODE, String.valueOf(BuildConfig.VERSION_CODE));
    }

    public static void cameraFailure(int cause) {
        Map<String, String> param = new HashMap();
        param.put(PARAM_CAMERA_FAILURE_CAUSE, String.valueOf(cause));
        recordCountEvent(DEFAULT_CATEGORY, KEY_CAMERA_FAILURE, param);
    }

    public static void cameraFailure(int cause, String info, int agentAction, int agentState) {
        Map<String, String> param = new HashMap();
        param.put(PARAM_CAMERA_FAILURE_CAUSE, String.valueOf(cause));
        param.put(PARAM_CAMERA_FAILURE_INFO, info);
        param.put("action", String.valueOf(agentAction));
        param.put(PARAM_CAMERA_FAILURE_STATE, String.valueOf(agentState));
        recordCountEvent(DEFAULT_CATEGORY, KEY_CAMERA_FAILURE, param);
    }

    public static void trackBCEvent(boolean isOnlyBusinessCardScan, String eventId) {
        if (isOnlyBusinessCardScan) {
            eventId = "only_" + eventId;
        }
        recordCountEvent(DEFAULT_CATEGORY, eventId, new HashMap());
    }

    public static void trackEvent(String eventId) {
        recordCountEvent(DEFAULT_CATEGORY, eventId, new HashMap());
    }

    public static void trackEvent(String eventId, Map<String, String> param) {
        recordCountEvent(DEFAULT_CATEGORY, eventId, param);
    }

    public static void trackEvent(String eventId, long value) {
        recordCalculateEvent(DEFAULT_CATEGORY, eventId, value, new HashMap());
    }

    public static void trackEvent(String eventId, long value, Map<String, String> param) {
        recordCalculateEvent(DEFAULT_CATEGORY, eventId, value, param);
    }

    public static void recordPageStart(Activity activity, String pageName) {
        if (isUsable()) {
            try {
                MiStatInterface.recordPageStart(activity, pageName);
            } catch (Exception e) {
                Log.e(TAG, e.getMessage(), e);
            }
        }
    }

    public static void recordWithParamEvent(String id, String typeValue) {
        Map params = new HashMap(1);
        params.put("type", typeValue);
        trackEvent(id, params);
    }

    public static void recordLanguage(String key, String language) {
        Map param = new HashMap(1);
        param.put(PARAM_COMMON_SOURCE_LANGUAGE, language);
        trackEvent(key, param);
    }

    public static void recordPageEnd() {
        if (isUsable()) {
            try {
                MiStatInterface.recordPageEnd();
            } catch (Exception e) {
                Log.e(TAG, e.getMessage(), e);
            }
        }
    }

    private static void recordCountEvent(final String category, final String event, Map<String, String> params) {
        if (isUsable()) {
            if (params == null) {
                params = new HashMap();
            }
            appendVersions(params);
            final Map<String, String> param = params;
            ScannerThreadPool.poolExecute(new Runnable() {
                public void run() {
                    try {
                        MiStatInterface.recordCountEvent(category, event, param);
                        Log.d(UsageStatistics.TAG, "event " + event + ", params = " + param.toString());
                    } catch (Exception e) {
                        Log.e(UsageStatistics.TAG, e.getMessage(), e);
                    }
                }
            });
        }
    }

    private static void recordCalculateEvent(String category, String event, long value, Map<String, String> params) {
        if (isUsable()) {
            if (params == null) {
                params = new HashMap();
            }
            appendVersions(params);
            final Map<String, String> param = params;
            final String str = category;
            final String str2 = event;
            final long j = value;
            ScannerThreadPool.poolExecute(new Runnable() {
                public void run() {
                    try {
                        MiStatInterface.recordCalculateEvent(str, str2, j, param);
                    } catch (Exception e) {
                        Log.e(UsageStatistics.TAG, e.getMessage(), e);
                    }
                }
            });
        }
    }

    private static boolean isUsable() {
        return sIsEnabled && sInitialized;
    }
}
