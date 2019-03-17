.class public Lcom/xiaomi/scanner/stats/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/stats/UsageStatistics$StorageFailure;,
        Lcom/xiaomi/scanner/stats/UsageStatistics$CameraFailure;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517478150"

.field private static final APP_KEY:Ljava/lang/String; = "5151747861150"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "mi_stat_channel"

.field private static final DEFAULT_CATEGORY:Ljava/lang/String; = "Scanner"

.field private static final EMPTY_CHANNEL_VALUE:Ljava/lang/String; = "${channel_value}"

.field public static final KEY_AR_CODE_SELECT_CONFIRM:Ljava/lang/String; = "ar_code_select_confirm"

.field public static final KEY_AR_CODE_SELECT_PHOTO_BTN:Ljava/lang/String; = "ar_code_select_photo_btn_click"

.field public static final KEY_AR_CODE_SERVER_REQ:Ljava/lang/String; = "ar_code_server_req"

.field public static final KEY_AR_CODE_SERVER_RESULT:Ljava/lang/String; = "ar_code_server_result"

.field public static final KEY_AR_CODE_TAB:Ljava/lang/String; = "ar_code_tab_click"

.field public static final KEY_BARCODE_ACTIVE_TIME:Ljava/lang/String; = "barcode_active_time"

.field public static final KEY_BARCODE_CALLED_COUNT:Ljava/lang/String; = "barcode_by_call_count"

.field public static final KEY_BARCODE_CALL_ALIPAY_COUNT:Ljava/lang/String; = "barcode_call_alipay_count"

.field public static final KEY_BARCODE_CALL_APPSTORE_COUNT:Ljava/lang/String; = "barcode_call_appstore_count"

.field public static final KEY_BARCODE_CALL_MIACCOUNT_COUNT:Ljava/lang/String; = "barcode_call_miaccount_count"

.field public static final KEY_BARCODE_CALL_MIBI_COUNT:Ljava/lang/String; = "barcode_call_mibi_count"

.field public static final KEY_BARCODE_CALL_MIPAY_COUNT:Ljava/lang/String; = "barcode_call_mipay_count"

.field public static final KEY_BARCODE_CALL_WECHAT_COUNT:Ljava/lang/String; = "barcode_call_wechat_count"

.field public static final KEY_BARCODE_CALL_YELLOW_PAGE_COUNT:Ljava/lang/String; = "barcode_call_yellowpage_count"

.field public static final KEY_BARCODE_CARD_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_card_button_click_count"

.field public static final KEY_BARCODE_DECODE_COUNT:Ljava/lang/String; = "barcode_decode_count"

.field public static final KEY_BARCODE_DECODE_IMAGE_ZXING_COUNT:Ljava/lang/String; = "barcode_decode_image_zxing_count"

.field public static final KEY_BARCODE_DECODE_TIME:Ljava/lang/String; = "barcode_decode_time"

.field public static final KEY_BARCODE_GOTO_TAOBAO_FAIL_COUNT:Ljava/lang/String; = "barcode_goto_taobao_fail_count"

.field public static final KEY_BARCODE_GOTO_TAOBAO_SUCCESS_COUNT:Ljava/lang/String; = "barcode_goto_taobao_success_count"

.field public static final KEY_BARCODE_MARKET_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_market_button_click_count"

.field public static final KEY_BARCODE_MIRACAST_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_miracast_button_click_count"

.field public static final KEY_BARCODE_PAYTM_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_paytm_button_click_count"

.field public static final KEY_BARCODE_TAOBAO_SUCCESS_COUNT:Ljava/lang/String; = "barcode_taobao_success_count"

.field public static final KEY_BARCODE_TEXT_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_text_button_click_count"

.field public static final KEY_BARCODE_URL_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_url_button_click_count"

.field public static final KEY_BARCODE_WECHAT_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_wechat_button_click_count"

.field public static final KEY_BARCODE_WIFI_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_wifi_button_click_count"

.field public static final KEY_BARCODE_ZXING_SUCCESS_COUNT:Ljava/lang/String; = "barcode_zxing_success_count"

.field public static final KEY_BUSINESS_ADDRESS_ACTION:Ljava/lang/String; = "business_address_action"

.field public static final KEY_BUSINESS_ADDRESS_ACTION_GPS_CLICK:Ljava/lang/String; = "business_address_acton_gps_click"

.field public static final KEY_BUSINESS_CARD_ADDRESS_CLICK:Ljava/lang/String; = "business_card_address_click"

.field public static final KEY_BUSINESS_CARD_COPY_CLICK:Ljava/lang/String; = "business_card_copy_click"

.field public static final KEY_BUSINESS_CARD_CREATE_CONTACT:Ljava/lang/String; = "business_card_create_contact"

.field public static final KEY_BUSINESS_CARD_CROP_CONFIRM_CLICK:Ljava/lang/String; = "business_card_crop_confirm_click"

.field public static final KEY_BUSINESS_CARD_CROP_VIEW_SHOW:Ljava/lang/String; = "business_card_crop_view_show"

.field public static final KEY_BUSINESS_CARD_DATE_CLICK:Ljava/lang/String; = "business_card_date_click"

.field public static final KEY_BUSINESS_CARD_EMAIL_CLICK:Ljava/lang/String; = "business_card_email_click"

.field public static final KEY_BUSINESS_CARD_LINK_CLICK:Ljava/lang/String; = "business_card_link_click"

.field public static final KEY_BUSINESS_CARD_PHONE_CLICK:Ljava/lang/String; = "business_card_phone_click"

.field public static final KEY_BUSINESS_CARD_REQ_SERVER:Ljava/lang/String; = "business_card_req_server"

.field public static final KEY_BUSINESS_CARD_RESULT_BACK:Ljava/lang/String; = "business_card_result_back"

.field public static final KEY_BUSINESS_CARD_RESULT_SHOW:Ljava/lang/String; = "business_card_result_show"

.field public static final KEY_BUSINESS_CARD_SELECT_PHOTO:Ljava/lang/String; = "business_card_select_photo"

.field public static final KEY_BUSINESS_CARD_TAB_CLICK:Ljava/lang/String; = "business_card_tab_click"

.field public static final KEY_BUSINESS_CARD_TAKE_PHOTO:Ljava/lang/String; = "business_card_take_photo"

.field public static final KEY_BUSINESS_DATE_ACTION:Ljava/lang/String; = "business_date_action"

.field public static final KEY_BUSINESS_DATE_ACTION_SCHEDULE_CLICK:Ljava/lang/String; = "business_date_acton_schedule_click"

.field public static final KEY_BUSINESS_EMAIL_ACTION:Ljava/lang/String; = "business_email_action"

.field public static final KEY_BUSINESS_EMAIL_ACTION_SEND_CLICK:Ljava/lang/String; = "business_email_acton_send_click"

.field public static final KEY_BUSINESS_LINK_ACTION:Ljava/lang/String; = "business_link_action"

.field public static final KEY_BUSINESS_LINK_ACTION_OPEN_CLICK:Ljava/lang/String; = "business_link_acton_open_click"

.field public static final KEY_BUSINESS_PHONE_ACTION:Ljava/lang/String; = "business_phone_action"

.field public static final KEY_BUSINESS_PHONE_ACTION_CALL_CLICK:Ljava/lang/String; = "business_phone_acton_call_click"

.field public static final KEY_BUSINESS_PHONE_ACTION_CONTACT_CLICK:Ljava/lang/String; = "business_phone_action_contact_click"

.field private static final KEY_CAMERA_FAILURE:Ljava/lang/String; = "camera_failure"

.field public static final KEY_COMMON_NO_AUTOFOCUS_CALLBACK_COUNT:Ljava/lang/String; = "no_autofocus_callback_count"

.field public static final KEY_DOCUMENT_SELECT_ADJUST:Ljava/lang/String; = "document_select_adjust"

.field public static final KEY_DOCUMENT_SELECT_CHANGE_COLOR:Ljava/lang/String; = "document_select_change_color"

.field public static final KEY_DOCUMENT_SELECT_RECOG_WORD:Ljava/lang/String; = "document_select_recog_word"

.field public static final KEY_DOCUMENT_SELECT_SAVE:Ljava/lang/String; = "document_select_save"

.field public static final KEY_DOCUMENT_SERVER_REQ:Ljava/lang/String; = "document_server_req"

.field public static final KEY_DOCUMENT_SERVER_RESULT:Ljava/lang/String; = "document_server_result"

.field public static final KEY_DOCUMENT_TAB:Ljava/lang/String; = "document_tab_click"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_ADJUST:Ljava/lang/String; = "document_take_photo_adjust"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_CHANGE_COLOR:Ljava/lang/String; = "document_take_photo_change_color"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_RECOG_WORD:Ljava/lang/String; = "document_take_photo_recog_word"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_SAVE:Ljava/lang/String; = "document_take_photo_save"

.field public static final KEY_ENTER_APP:Ljava/lang/String; = "enter_app"

.field public static final KEY_LIGHT_CLICK:Ljava/lang/String; = "light_click"

.field public static final KEY_PLANT_ALBUM_CANCEL:Ljava/lang/String; = "plant_album_cancel"

.field public static final KEY_PLANT_ALBUM_CLICK:Ljava/lang/String; = "plant_album_click"

.field public static final KEY_PLANT_ALBUM_CONFIRM:Ljava/lang/String; = "plant_album_confirm"

.field public static final KEY_PLANT_CLICK:Ljava/lang/String; = "plant_click"

.field public static final KEY_PLANT_REQ:Ljava/lang/String; = "plant_req"

.field public static final KEY_PLANT_RESULT_FAIL:Ljava/lang/String; = "plant_result_fail"

.field public static final KEY_PLANT_RESULT_SUCCESS:Ljava/lang/String; = "plant_result_success"

.field public static final KEY_SHOPPING_SERVER_REQ:Ljava/lang/String; = "shopping_server_req"

.field public static final KEY_SHOPPING_TAG_CLICK:Ljava/lang/String; = "shopping_tab_click"

.field public static final KEY_STUDY_ACTIVE_COUNT:Ljava/lang/String; = "study_active_count"

.field public static final KEY_STUDY_ACTIVE_TIME:Ljava/lang/String; = "study_active_time"

.field public static final KEY_STUDY_CALLED_COUNT:Ljava/lang/String; = "study_by_call_count"

.field public static final KEY_STUDY_EMPTY_RESPONSE:Ljava/lang/String; = "study_empty_response"

.field public static final KEY_STUDY_ERROR:Ljava/lang/String; = "study_error"

.field public static final KEY_STUDY_OPEN_ZUOYEBANG_COUNT:Ljava/lang/String; = "study_open_zuoyebang"

.field public static final KEY_STUDY_SUCCESS:Ljava/lang/String; = "study_success"

.field public static final KEY_TRANSLATE_AUTO_ALL_TRANSLATION:Ljava/lang/String; = "translate_auto_all_translation"

.field public static final KEY_TRANSLATE_AUTO_LOCK:Ljava/lang/String; = "translate_auto_lock"

.field public static final KEY_TRANSLATE_AUTO_RESULT:Ljava/lang/String; = "translate_auto_result"

.field public static final KEY_TRANSLATE_AUTO_SELECT_WORD_TAB:Ljava/lang/String; = "translate_auto_select_word_tab"

.field public static final KEY_TRANSLATE_AUTO_UNLOCK:Ljava/lang/String; = "translate_auto_unlock"

.field public static final KEY_TRANSLATE_CHANGE_TYPE:Ljava/lang/String; = "translate_change_type"

.field public static final KEY_TRANSLATE_COMPARE:Ljava/lang/String; = "translate_compare"

.field public static final KEY_TRANSLATE_LONG_WORD_SELECT_IMAGE:Ljava/lang/String; = "translate_long_word_select_image"

.field public static final KEY_TRANSLATE_LONG_WORD_TAB:Ljava/lang/String; = "translate_long_word_tab"

.field public static final KEY_TRANSLATE_LONG_WORD_TAKE_PICK:Ljava/lang/String; = "translate_take_pic"

.field public static final KEY_TRANSLATE_RESULT:Ljava/lang/String; = "translate_result"

.field public static final KEY_TRANSLATE_SELECT_LANG:Ljava/lang/String; = "translate_select_lang_click"

.field public static final KEY_TRANSLATE_SERVER_REQ:Ljava/lang/String; = "translate_server_req"

.field public static final KEY_TRANSLATE_TAB:Ljava/lang/String; = "translate_tab_click"

.field public static final NONE:I = -0x1

.field public static final PARAM_BARCODE_CALLER:Ljava/lang/String; = "barcode_caller"

.field public static final PARAM_BARCODE_CALLER_ACTION_SEND:Ljava/lang/String; = "barcode_caller_action_send"

.field public static final PARAM_BARCODE_TYPE:Ljava/lang/String; = "barcode_type"

.field private static final PARAM_CAMERA_FAILURE_ACTION:Ljava/lang/String; = "action"

.field private static final PARAM_CAMERA_FAILURE_CAUSE:Ljava/lang/String; = "cause"

.field private static final PARAM_CAMERA_FAILURE_INFO:Ljava/lang/String; = "info"

.field private static final PARAM_CAMERA_FAILURE_STATE:Ljava/lang/String; = "state"

.field public static final PARAM_COMMON_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final PARAM_STUDY_CALLER:Ljava/lang/String; = "study_caller"

.field public static final PARAM_STUDY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final PARAM_VERSION_CODE:Ljava/lang/String; = "param_version_code"

.field private static final PARAM_VERSION_NAME:Ljava/lang/String; = "param_version_name"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UPLOAD_POLICY_INTERVAL:J = 0x493e0L

.field private static sInitialized:Z

.field private static final sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "UsageStatistics"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 42
    # invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    # move-result v0

    # if-nez v0, :cond_0

    # const/4 v0, 0x1
    const/4 v0, 0x0

    # :goto_0
    sput-boolean v0, Lcom/xiaomi/scanner/stats/UsageStatistics;->sIsEnabled:Z

    return-void

    # :cond_0
    # const/4 v0, 0x0

    # goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private static appendVersions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "param_version_name"

    const-string v1, "10.6"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "param_version_code"

    const/16 v1, 0x2968

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static cameraFailure(I)V
    .locals 3
    .param p0, "cause"    # I

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cause"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "Scanner"

    const-string v2, "camera_failure"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public static cameraFailure(ILjava/lang/String;II)V
    .locals 3
    .param p0, "cause"    # I
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "agentAction"    # I
    .param p3, "agentState"    # I

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cause"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "action"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "state"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "Scanner"

    const-string v2, "camera_failure"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public static getChannelValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "channel":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 77
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "mi_stat_channel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "${channel_value}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    :cond_0
    const-string v1, "XiaoMi"

    .line 84
    :cond_1
    sget-object v3, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChannelValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    return-object v1

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "getChannelValue error"

    invoke-static {v3, v4, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initialize(Lcom/xiaomi/scanner/app/ScannerApp;)V
    .locals 5
    .param p0, "scannerApp"    # Lcom/xiaomi/scanner/app/ScannerApp;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 53
    sget-boolean v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->sIsEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sput-boolean v2, Lcom/xiaomi/scanner/stats/UsageStatistics;->sInitialized:Z

    .line 60
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 61
    const-string v1, "2882303761517478150"

    const-string v2, "5151747861150"

    invoke-static {p0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->getChannelValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 63
    const/4 v1, 0x0

    const-wide/32 v2, 0x493e0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 65
    sget-object v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "sVersionName = 10.6, sVersionCode=10600"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sput-boolean v4, Lcom/xiaomi/scanner/stats/UsageStatistics;->sInitialized:Z

    goto :goto_0
.end method

.method private static isUsable()Z
    .locals 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/xiaomi/scanner/stats/UsageStatistics;->sIsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/scanner/stats/UsageStatistics;->sInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 251
    :cond_0
    if-nez p4, :cond_1

    .line 252
    new-instance p4, Ljava/util/HashMap;

    .end local p4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 254
    .restart local p4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p4}, Lcom/xiaomi/scanner/stats/UsageStatistics;->appendVersions(Ljava/util/Map;)V

    .line 255
    move-object v6, p4

    .line 256
    .local v6, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/xiaomi/scanner/stats/UsageStatistics$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/stats/UsageStatistics$2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 228
    :cond_0
    if-nez p2, :cond_1

    .line 229
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 231
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/scanner/stats/UsageStatistics;->appendVersions(Ljava/util/Map;)V

    .line 232
    move-object v0, p2

    .line 233
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/xiaomi/scanner/stats/UsageStatistics$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static recordLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "source_language"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method public static recordPageEnd()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaomi/scanner/stats/UsageStatistics;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "typeValue"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    return-void
.end method

.method public static trackBCEvent(ZLjava/lang/String;)V
    .locals 2
    .param p0, "isOnlyBusinessCardScan"    # Z
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "only_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_0
    const-string v0, "Scanner"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "Scanner"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 160
    const-string v0, "Scanner"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, v1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 161
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p3, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Scanner"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 172
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Scanner"

    invoke-static {v0, p0, p1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    return-void
.end method
