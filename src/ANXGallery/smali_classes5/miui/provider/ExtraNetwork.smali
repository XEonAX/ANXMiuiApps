.class public final Lmiui/provider/ExtraNetwork;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraNetwork$PackageDetail;,
        Lmiui/provider/ExtraNetwork$DataUsageDetail;
    }
.end annotation


# static fields
.field private static final ACTION_NETWORK_ASSISTANT_SMS_REPORT:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_SMS_REPORT"

.field public static final ACTION_NETWORK_BLOCKED:Ljava/lang/String; = "miui.intent.action.NETWORK_BLOCKED"

.field public static final ACTION_NETWORK_CONNECTED:Ljava/lang/String; = "miui.intent.action.NETWORK_CONNECTED"

.field private static final ACTION_TRAFFIC_SETTING:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

.field private static final ACTION_TRAFFIC_SETTING_INTERNATIONAL:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

.field public static final BUNDLE_KEY_COMMON:Ljava/lang/String; = "bundle_key_com"

.field public static final BUNDLE_KEY_HAS_MENU:Ljava/lang/String; = "bundle_key_has_menu"

.field private static final BUNDLE_KEY_OTHER_APP:Ljava/lang/String; = "bundle_key_from_other_task"

.field public static final BUNDLE_KEY_PURCHASE_FROM:Ljava/lang/String; = "bundle_key_purchase_from"

.field public static final BUNDLE_KEY_SLOTID:Ljava/lang/String; = "bundle_key_slotid"

.field private static final BUNDLE_KEY_SLOT_ID:Ljava/lang/String; = "sim_slot_num_tag"

.field public static final BUNDLE_KEY_TITLE:Ljava/lang/String; = "bundle_key_title"

.field public static final BUNDLE_KEY_URL:Ljava/lang/String; = "bundle_key_url"

.field private static final COLUMN_NAME_MONTH_USED:Ljava/lang/String; = "month_used"

.field private static final COLUMN_NAME_MONTH_WARNING:Ljava/lang/String; = "month_warning"

.field private static final COLUMN_NAME_PACKAGE_REMAINED:Ljava/lang/String; = "package_remained"

.field private static final COLUMN_NAME_PACKAGE_TOTAL:Ljava/lang/String; = "package_total"

.field private static final COLUMN_NAME_PACKAGE_USED:Ljava/lang/String; = "package_used"

.field private static final COLUMN_NAME_SLOT_NUM:Ljava/lang/String; = "slot_num"

.field private static final COLUMN_NAME_SUPPORT:Ljava/lang/String; = "package_setted"

.field private static final COLUMN_NAME_TODAY_USED:Ljava/lang/String; = "today_used"

.field private static final COLUMN_NAME_TOTAL_LIMIT:Ljava/lang/String; = "total_limit"

.field public static final CORRECTION_TYPE_BILL:I = 0x2

.field public static final CORRECTION_TYPE_CALLTIME:I = 0x4

.field public static final CORRECTION_TYPE_TRAFFIC:I = 0x1

.field private static final EXTRA_MIUI_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field public static final FIREWALL_MOBILE_RULE:Ljava/lang/String; = "mobile_rule"

.field private static final FIREWALL_MOBILE_RULE_SLOTNUM:Ljava/lang/String; = "mobile_rule_slot"

.field public static final FIREWALL_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FIREWALL_SOURCE_PACKAGE_NAME:Ljava/lang/String; = "source_package_name"

.field private static final FIREWALL_TEMP_MOBILE_RULE:Ljava/lang/String; = "temp_mobile_rule"

.field private static final FIREWALL_TEMP_MOBILE_RULE_SLOTNUM:Ljava/lang/String; = "temp_mobile_rule_slot"

.field private static final FIREWALL_TEMP_WIFI_RULE:Ljava/lang/String; = "temp_wifi_rule"

.field private static final FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/firewall/%s"

.field public static final FIREWALL_WIFI_RULE:Ljava/lang/String; = "wifi_rule"

.field public static final FROM_PKGNAME:Ljava/lang/String; = "from_pkgname"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field private static final KEY_CORRECTION_TYPE:Ljava/lang/String; = "correction_type"

.field private static final MOBILE_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

.field public static final MOBILE_RXBYTES:Ljava/lang/String; = "mobile_rxbytes"

.field public static final MOBILE_TXBYTES:Ljava/lang/String; = "mobile_txbytes"

.field private static final NETWORKASSISTANT_PURCHASE_ACTION:Ljava/lang/String; = "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

.field public static final STORAGE_TIME:Ljava/lang/String; = "storage_time"

.field private static final TAG:Ljava/lang/String; = "ExtraNetwork"

.field private static final TEMP_MOBILE_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

.field private static final TEMP_WIFI_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

.field public static final TO_PKGNAME:Ljava/lang/String; = "to_pkgname"

.field public static final TRACK_PURCHASE_FROM_LOCK_SCREEN_TRAFFIC:Ljava/lang/String; = "100010"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_PAGE:Ljava/lang/String; = "100002"

.field public static final TRACK_PURCHASE_FROM_NETWORK_ASSISTANT_MAIN_TOOLBAR:Ljava/lang/String; = "100001"

.field public static final TRACK_PURCHASE_FROM_PUSH:Ljava/lang/String; = "100007"

.field public static final TRACK_PURCHASE_FROM_SERCURITY_CENTER_EXAM:Ljava/lang/String; = "100008"

.field public static final TRACK_PURCHASE_FROM_STATUS_BAR:Ljava/lang/String; = "100003"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_DIALOG:Ljava/lang/String; = "100006"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_OVER_LIMIT_NOTIFY:Ljava/lang/String; = "100005"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_SORTED:Ljava/lang/String; = "100009"

.field public static final TRACK_PURCHASE_FROM_TRAFFIC_WARNING_NOTIFY:Ljava/lang/String; = "100004"

.field private static final TRAFFIC_DISTRIBUTION_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/traffic_distribution"

.field public static final TRAFFIC_PURCHASE_ENABLED:Ljava/lang/String; = "traffic_purchase_enabled"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase"

.field private static final TRAFFIC_PURCHASE_STATUS_URI_STR_ISMI:Ljava/lang/String; = "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

.field private static final URI_BILL_PACKAGE_DETAIL:Ljava/lang/String; = "content://com.miui.networkassistant.provider/bill_detail"

.field private static final URI_CALL_TIME_PACKAGE_DETAIL:Ljava/lang/String; = "content://com.miui.networkassistant.provider/calltime_detail"

.field private static final URI_NETWORK_TRAFFIC_INFO:Ljava/lang/String; = "content://com.miui.networkassistant.provider/datausage_status"

.field private static final URI_SMS_CORRECTION:Ljava/lang/String; = "content://com.miui.networkassistant.provider/sms_correction"

.field private static final WIFI_FIREWALL_URI_STR:Ljava/lang/String; = "content://com.miui.networkassistant.provider/wifi_firewall/%s"

.field public static final WIFI_RXBYTES:Ljava/lang/String; = "wifi_rxbytes"

.field public static final WIFI_TXBYTES:Ljava/lang/String; = "wifi_txbytes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillPackageDetail(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/provider/ExtraNetwork$PackageDetail;",
            ">;"
        }
    .end annotation

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v1, "packageDetails":Ljava/util/List;, "Ljava/util/List<Lmiui/provider/ExtraNetwork$PackageDetail;>;"
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/bill_detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 666
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 667
    if-eqz v0, :cond_0

    .line 668
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    const-string v2, "package_total"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 670
    .local v6, "total":J
    const-string v2, "package_used"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 671
    .local v8, "used":J
    const-string v2, "package_remained"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 672
    .local v10, "remained":J
    const-string v2, "slot_num"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 673
    .local v12, "slotNum":I
    const-string v2, "true"

    const-string v3, "package_setted"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 674
    .local v13, "isSupport":Z
    new-instance v2, Lmiui/provider/ExtraNetwork$PackageDetail;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lmiui/provider/ExtraNetwork$PackageDetail;-><init>(JJJIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v6    # "total":J
    .end local v8    # "used":J
    .end local v10    # "remained":J
    .end local v12    # "slotNum":I
    .end local v13    # "isSupport":Z
    goto :goto_0

    .line 677
    :cond_0
    nop

    .line 681
    if-eqz v0, :cond_1

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_1
    return-object v1

    .line 681
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 678
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "getBillPackageDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_2
    return-object v1

    .line 681
    :goto_1
    if-eqz v0, :cond_3

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static getCallTimePackageDetail(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/provider/ExtraNetwork$PackageDetail;",
            ">;"
        }
    .end annotation

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v1, "packageDetails":Ljava/util/List;, "Ljava/util/List<Lmiui/provider/ExtraNetwork$PackageDetail;>;"
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/calltime_detail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 698
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 699
    if-eqz v0, :cond_0

    .line 700
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const-string v2, "package_total"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 702
    .local v6, "total":J
    const-string v2, "package_used"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 703
    .local v8, "used":J
    const-string v2, "package_remained"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 704
    .local v10, "remained":J
    const-string v2, "slot_num"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 705
    .local v12, "slotNum":I
    const-string v2, "true"

    const-string v3, "package_setted"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 706
    .local v13, "isSupport":Z
    new-instance v2, Lmiui/provider/ExtraNetwork$PackageDetail;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lmiui/provider/ExtraNetwork$PackageDetail;-><init>(JJJIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .end local v6    # "total":J
    .end local v8    # "used":J
    .end local v10    # "remained":J
    .end local v12    # "slotNum":I
    .end local v13    # "isSupport":Z
    goto :goto_0

    .line 709
    :cond_0
    nop

    .line 713
    if-eqz v0, :cond_1

    .line 714
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_1
    return-object v1

    .line 713
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 710
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "getCallTimePackageDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 714
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_2
    return-object v1

    .line 713
    :goto_1
    if-eqz v0, :cond_3

    .line 714
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static getUserDataUsageDetail(Landroid/content/Context;)Lmiui/provider/ExtraNetwork$DataUsageDetail;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .line 610
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 611
    move-object v1, v0

    .line 613
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/datausage_status"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 614
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 615
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 616
    const-string v2, "total_limit"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 617
    .local v6, "monthTotal":J
    const-string v2, "month_used"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 618
    .local v8, "monthUsed":J
    const-string v2, "month_warning"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 619
    .local v10, "monthWarning":J
    const-string v2, "today_used"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 620
    .local v12, "todayUsed":J
    new-instance v2, Lmiui/provider/ExtraNetwork$DataUsageDetail;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lmiui/provider/ExtraNetwork$DataUsageDetail;-><init>(JJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    if-eqz v1, :cond_0

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 627
    const/4 v1, 0x0

    .line 620
    :cond_0
    return-object v2

    .line 625
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "monthTotal":J
    .end local v8    # "monthUsed":J
    .end local v10    # "monthWarning":J
    .end local v12    # "todayUsed":J
    :cond_1
    if-eqz v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 622
    :catch_0
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "getUserDataUsageDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 626
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 627
    const/4 v1, 0x0

    goto :goto_2

    .line 625
    :goto_1
    if-eqz v1, :cond_2

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 627
    const/4 v1, 0x0

    :cond_2
    throw v0

    .line 631
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static insertTrafficDistribution(Landroid/content/Context;Ljava/lang/String;JJJJ)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toPackageName"    # Ljava/lang/String;
    .param p2, "wifiTxBytes"    # J
    .param p4, "wifiRxBytes"    # J
    .param p6, "mobileTxBytes"    # J
    .param p8, "mobileRxBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v1, p0

    .line 400
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 404
    :cond_0
    :try_start_0
    const-string v0, "content://com.miui.networkassistant.provider/traffic_distribution"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 405
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 406
    const-string v3, ""

    .line 407
    .local v3, "imsi":Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 408
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 409
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 412
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "from_pkgname"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v6, "to_pkgname"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, p1

    :try_start_1
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v6, "mobile_rxbytes"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v6, "mobile_txbytes"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v6, "wifi_rxbytes"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    const-string v6, "wifi_txbytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    const-string v6, "imsi"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v6, "storage_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 423
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 424
    .local v8, "returnUri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "lastPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v10, :cond_3

    .line 426
    const/4 v2, 0x1

    return v2

    .line 429
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "returnUri":Landroid/net/Uri;
    .end local v9    # "lastPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 431
    :cond_2
    move-object v7, p1

    :cond_3
    goto :goto_1

    .line 429
    :catch_1
    move-exception v0

    move-object v7, p1

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v3, "ExtraNetwork"

    const-string v4, "insertTrafficDistribution"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v2

    .line 401
    :cond_4
    :goto_2
    move-object v7, p1

    return v2
.end method

.method public static isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 321
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "slotNum"    # I

    .line 333
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 336
    :cond_0
    const/4 v1, 0x0

    .line 338
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 339
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 340
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 341
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    const-string v2, "mobile_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .local v2, "result":I
    if-ne v2, v4, :cond_1

    .line 348
    move v0, v4

    goto :goto_0

    .line 343
    :cond_1
    nop

    .line 348
    :goto_0
    if-eqz v1, :cond_2

    .line 349
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_2
    return v0

    .line 348
    .end local v2    # "result":I
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v1, :cond_4

    .line 349
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 348
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "isMobileRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    goto :goto_1

    .line 352
    :cond_4
    :goto_2
    return v0

    .line 348
    :goto_3
    if-eqz v1, :cond_5

    .line 349
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 334
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_4
    return v0
.end method

.method public static isMobileTempRestrict(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "slotnum"    # I

    .line 229
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 234
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 235
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 236
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 237
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    const-string v2, "temp_mobile_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .local v2, "result":I
    if-ne v2, v4, :cond_1

    .line 244
    move v0, v4

    goto :goto_0

    .line 239
    :cond_1
    nop

    .line 244
    :goto_0
    if-eqz v1, :cond_2

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_2
    return v0

    .line 244
    .end local v2    # "result":I
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v1, :cond_4

    .line 245
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 244
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "isMobileTempRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    goto :goto_1

    .line 248
    :cond_4
    :goto_2
    return v0

    .line 244
    :goto_3
    if-eqz v1, :cond_5

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 230
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_4
    return v0
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 442
    if-eqz p0, :cond_0

    .line 444
    :try_start_0
    const-string v0, "content://com.miui.networkassistant.provider/na_traffic_purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 445
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 446
    .end local v0    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraNetwork"

    const-string v2, "isTrafficPurchaseSupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTrafficPurchaseSupported(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 461
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 463
    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/na_traffic_purchase/slotId/%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 464
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/provider/ExtraNetwork;->queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 465
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "isTrafficPurchaseSupported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method public static isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 368
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/wifi_firewall/%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 369
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 370
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 371
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    const-string v2, "wifi_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .local v2, "result":I
    if-ne v2, v3, :cond_1

    .line 378
    move v0, v3

    goto :goto_0

    .line 373
    :cond_1
    nop

    .line 378
    :goto_0
    if-eqz v1, :cond_2

    .line 379
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_2
    return v0

    .line 378
    .end local v2    # "result":I
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v1, :cond_4

    .line 379
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 378
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "isWifiRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    goto :goto_1

    .line 382
    :cond_4
    :goto_2
    return v0

    .line 378
    :goto_3
    if-eqz v1, :cond_5

    .line 379
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 364
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_4
    return v0
.end method

.method public static isWifiTempRestrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 178
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 179
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 180
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 181
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "temp_wifi_rule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .local v2, "result":I
    if-ne v2, v3, :cond_1

    .line 188
    move v0, v3

    goto :goto_0

    .line 183
    :cond_1
    nop

    .line 188
    :goto_0
    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_2
    return v0

    .line 188
    .end local v2    # "result":I
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v1, :cond_4

    .line 189
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 188
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "isWifiTempRestrict"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    goto :goto_1

    .line 192
    :cond_4
    :goto_2
    return v0

    .line 188
    :goto_3
    if-eqz v1, :cond_5

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 174
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_4
    return v0
.end method

.method public static navigateToOperatorSettingActivity(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 728
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 731
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 734
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    const-string v2, "bundle_key_from_other_task"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 737
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 738
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method public static navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hasMenu"    # Z
    .param p4, "sourceFrom"    # Ljava/lang/String;
    .param p5, "needNewTask"    # Z

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v2, "bundle_key_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v2, "bundle_key_has_menu"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 540
    const-string v2, ":miui:starting_window_label"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    if-eqz p5, :cond_0

    .line 542
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method public static navigateToSmsReportActivity(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "type"    # I

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_SMS_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const-string v1, "correction_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 781
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 504
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_slotid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "sourceFrom"    # Ljava/lang/String;

    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_slotid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 577
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 579
    return-void
.end method

.method public static navigateToTrafficPurchasePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFrom"    # Ljava/lang/String;

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle_key_purchase_from"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "bundle_key_com"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method private static queryTrafficPurchaseStatus(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 476
    .local v1, "result":Z
    if-eqz p1, :cond_1

    .line 477
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 478
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 479
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    const-string v3, "traffic_purchase_enabled"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .end local v2    # "resolver":Landroid/content/ContentResolver;
    goto :goto_2

    .line 486
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 483
    :catch_0
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraNetwork"

    const-string v4, "queryTrafficPurchaseStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 487
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 486
    :goto_1
    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 486
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    goto :goto_0

    .line 490
    :cond_2
    :goto_3
    return v1
.end method

.method public static registerFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.networkassistant.provider/firewall/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method public static registerPackageContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;
    .param p2, "type"    # I

    .line 792
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 793
    const-string v0, "content://com.miui.networkassistant.provider/bill_detail"

    .local v0, "uriStr":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 794
    .end local v0    # "uriStr":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 795
    const-string v0, "content://com.miui.networkassistant.provider/calltime_detail"

    goto :goto_0

    .line 797
    :cond_1
    const-string v0, "content://com.miui.networkassistant.provider/datausage_status"

    .line 799
    .restart local v0    # "uriStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 801
    return-void
.end method

.method public static setMobileRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .line 260
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z
    .param p3, "slotNum"    # I

    .line 274
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/mobile_firewall/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 277
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v4, "params":Landroid/content/ContentValues;
    const-string v5, "mobile_rule_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v5, "mobile_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 280
    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    .line 285
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "params":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "setMobileTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static setMobileTempRestrict(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "slotnum"    # I
    .param p3, "isRestrict"    # Z

    .line 206
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/temp_mobile_firewall/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 209
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v4, "params":Landroid/content/ContentValues;
    const-string v5, "temp_mobile_rule_slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v5, "temp_mobile_rule"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    .line 217
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "params":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "setMobileTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static setWifiRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .line 299
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/wifi_firewall/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 302
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v4, "params":Landroid/content/ContentValues;
    const-string v5, "wifi_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 309
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "params":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "setWifiTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static setWifiTempRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .line 151
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/temp_wifi_firewall/%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 154
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v4, "params":Landroid/content/ContentValues;
    const-string v5, "temp_wifi_rule"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    const-string v5, "source_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 161
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "params":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "setWifiTempRestrict"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static startCorrection(Landroid/content/Context;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "type"    # I

    .line 752
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.networkassistant.provider/sms_correction"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 753
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 755
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 756
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "sim_slot_num_tag"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string v4, "correction_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v0, v5

    nop

    :cond_0
    return v0

    .line 762
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    goto :goto_0

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraNetwork"

    const-string v3, "startCorrection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static unRegisterFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method public static unRegisterPackageContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 810
    return-void
.end method
