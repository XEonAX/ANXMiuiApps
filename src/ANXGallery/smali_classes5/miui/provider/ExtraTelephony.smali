.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Hms;,
        Lmiui/provider/ExtraTelephony$Judge;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$AntiSpamSim;,
        Lmiui/provider/ExtraTelephony$AntiSpamMode;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Phonelist;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$QuietModeEnableListener;,
        Lmiui/provider/ExtraTelephony$SilentModeObserver;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$ServiceCategory;,
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$MxType;,
        Lmiui/provider/ExtraTelephony$UnderstandInfo;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final BANK_CATEGORY_NUMBER_PREFIX_106:Ljava/lang/String; = "106"

.field public static final BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

.field public static final BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

.field public static final BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field public static final DEFAULT_THREADS_LIST_TYPE_SP:I = 0x1

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final FORCE_DELETE:Ljava/lang/String; = "force_delete"

.field public static final INTERCEPT_STATE_ALL:I = 0x0

.field public static final INTERCEPT_STATE_CALL:I = 0x2

.field public static final INTERCEPT_STATE_SMS:I = 0x1

.field public static final LOCAL_PRIVATE_ADDRESS_SYNC:Ljava/lang/String; = "local.priaddr.sync"

.field public static final LOCAL_SMS_SYNC:Ljava/lang/String; = "local.sms.sync"

.field public static final LOCAL_STICKY_THREAD_SYNC:Ljava/lang/String; = "local.stkthrd.sync"

.field public static final LOCAL_SYNC_NAME:Ljava/lang/String; = "localName"

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final NO_NOTIFY_FLAG:Ljava/lang/String; = "no_notify"

.field public static final PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "antispam"

.field public static final PrefixCode:Ljava/lang/String; = "***"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final THREADS_LIST_TYPE_COMPOSITE:I = 0x0

.field public static final TYPE_INTERCEPT_ADDRESS:I = 0x2

.field public static final TYPE_INTERCEPT_NUMBER:I = 0x1

.field public static final TYPE_INTERCEPT_NUMBER_FRAGMENT:I = 0x3

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_ALARMS:I = 0x3

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static mQuietListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/provider/ExtraTelephony$QuietModeEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const-string v0, "\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "((\\[[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\])|(\\\u3010[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\\u3011))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 47
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-object v0
.end method

.method private static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .line 2096
    if-nez p2, :cond_0

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    return-void

    .line 2097
    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2098
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2099
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2101
    :cond_1
    return-void
.end method

.method public static checkKeyguardForQuiet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2006
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2007
    return v1

    .line 2009
    :cond_0
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_1

    .line 2010
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->checkKeyguardForSilentMode(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2013
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 2014
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2016
    :cond_2
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 2017
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2018
    return v1

    .line 2019
    :cond_3
    const-string v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.android.server.telecom"

    .line 2020
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 2024
    :cond_4
    const/4 v0, 0x0

    .line 2026
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://antispamCommon/zenmode"

    .line 2027
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "4"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2026
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 2029
    if-eqz v0, :cond_6

    .line 2030
    nop

    .line 2035
    if-eqz v0, :cond_5

    .line 2036
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2030
    :cond_5
    return v2

    .line 2035
    :cond_6
    if-eqz v0, :cond_7

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2032
    :catch_0
    move-exception v2

    .line 2033
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2035
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_7

    .line 2036
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2039
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_7
    nop

    .line 2044
    return v1

    .line 2035
    .restart local v0    # "c":Landroid/database/Cursor;
    :goto_1
    if-eqz v0, :cond_8

    .line 2036
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 2022
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_9
    :goto_2
    return v1

    .line 2041
    :cond_a
    return v2
.end method

.method public static checkKeyguardForSilentMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2051
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2052
    return v1

    .line 2054
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 2055
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2057
    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;IZI)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "cid"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "antispamProviderId"    # I
    .param p5, "isUserMarked"    # Z
    .param p6, "markedCount"    # I

    .line 1617
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1618
    .local v0, "markType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1619
    const-string v2, "ExtraTelephony"

    const-string v3, "the mark type of cid is not found ... allow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return v1

    .line 1623
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1624
    .local v3, "markSwitch":Z
    :goto_0
    if-nez v3, :cond_2

    .line 1625
    const-string v2, "ExtraTelephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the switch of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not open ... allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return v1

    .line 1629
    :cond_2
    invoke-static {p0, p3}, Lmiui/provider/ExtraTelephony;->isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1630
    const-string v2, "ExtraTelephony"

    const-string v4, "call number is a related number... allow"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    return v1

    .line 1634
    :cond_3
    sget-object v4, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x32

    invoke-static {p0, v4, v5}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-gt v4, p6, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    .line 1636
    .local v4, "threshold":Z
    :goto_1
    const-string v5, "ExtraTelephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marking threshold reached ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    if-nez p5, :cond_6

    const/16 v5, 0x18e

    if-eq p4, v5, :cond_6

    if-eqz v4, :cond_5

    goto :goto_2

    .line 1645
    :cond_5
    return v1

    .line 1642
    :cond_6
    :goto_2
    const-string v1, "ExtraTelephony"

    const-string v5, "should intercept this marked call !"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return v2
.end method

.method public static containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsBody"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # I

    .line 1535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type = ? AND sim_id = ? "

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 1540
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 1541
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v4, v7

    .line 1535
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1543
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1545
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, "keyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1548
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1549
    nop

    .line 1555
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1549
    return v7

    .line 1551
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1555
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1556
    goto :goto_3

    .line 1555
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1552
    :catch_0
    move-exception v1

    .line 1553
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ExtraTelephony"

    const-string v3, "Cursor exception in shouldFilter()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1555
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1558
    :cond_2
    :goto_3
    return v6
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "presentation"    # I
    .param p1, "logNumber"    # Ljava/lang/String;

    .line 1913
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p0, v0, :cond_0

    .line 1914
    const-string p1, "-2"

    goto :goto_0

    .line 1915
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p0, v0, :cond_1

    .line 1916
    const-string p1, "-3"

    goto :goto_0

    .line 1917
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne p0, v0, :cond_3

    .line 1919
    :cond_2
    const-string p1, "-1"

    .line 1921
    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "isForwardCall"    # Z
    .param p4, "isRepeated"    # Z
    .param p5, "isRepeatedBlocked"    # Z

    .line 1693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const/4 v0, 0x0

    return v0

    .line 1697
    :cond_0
    const/4 v0, 0x0

    .line 1699
    .local v0, "blockType":I
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lmiui/provider/ExtraTelephony$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lmiui/provider/ExtraTelephony$1;-><init>(Landroid/content/Context;Ljava/lang/String;IZZZ)V

    invoke-direct {v1, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1717
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1718
    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1730
    :goto_0
    goto :goto_1

    .line 1724
    :catch_0
    move-exception v2

    .line 1726
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1727
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1729
    :cond_1
    const-string v3, "ExtraTelephony"

    const-string v4, "TimeoutException when getCallBlockType"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    .line 1722
    :catch_1
    move-exception v2

    .line 1723
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "ExtraTelephony"

    const-string v4, "ExecutionException when getCallBlockType"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 1720
    :catch_2
    move-exception v2

    .line 1721
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ExtraTelephony"

    const-string v4, "InterruptedException when getCallBlockType"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1731
    :goto_1
    return v0
.end method

.method public static getRealBlockType(I)I
    .locals 1
    .param p0, "blockType"    # I

    .line 1848
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 1746
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1747
    return v1

    .line 1749
    :cond_0
    if-nez p2, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 1750
    .local v0, "smsBody":Ljava/lang/String;
    :goto_0
    move v2, v1

    .line 1752
    .local v2, "smsBlockType":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Judge;->SMS_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    .line 1756
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1752
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1760
    goto :goto_1

    .line 1758
    :catch_0
    move-exception v3

    .line 1759
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ExtraTelephony"

    const-string v5, "getSmsBlockType error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static getSmsURLScanResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 1798
    nop

    .line 1799
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1802
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1803
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->URL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    aput-object p2, v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1808
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraTelephony"

    const-string v2, "Exception when getSmsURLScanResult()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public static isAddressInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string v2, "1"

    const/4 v7, 0x1

    aput-object v2, v4, v7

    .line 1242
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 1243
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 1234
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1245
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1247
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    const-string v1, "state"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    .local v1, "dbState":I
    if-eqz v1, :cond_0

    if-ne v1, p2, :cond_1

    .line 1250
    :cond_0
    nop

    .line 1256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1250
    return v7

    .line 1256
    .end local v1    # "dbState":I
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1257
    goto :goto_2

    .line 1256
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v1

    .line 1254
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ExtraTelephony"

    const-string v3, "Cursor exception in isAddressInBlack(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1256
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1259
    :cond_2
    :goto_2
    return v6
.end method

.method public static isCallTransferBlocked(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 1775
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Judge;->CALL_TRANSFER_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 1779
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1775
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .local v1, "result":I
    if-ne v1, v5, :cond_0

    move v0, v5

    nop

    :cond_0
    return v0

    .line 1783
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 1784
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExtraTelephony"

    const-string v3, "Exception when isCallTransferBlocked()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1786
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1069
    return v1

    .line 1071
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "nomalizeNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    move-object p1, v3

    .line 1074
    const-string v3, "[a-zA-Z]*-[a-zA-Z]*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1075
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1078
    :cond_3
    const/4 v3, 0x0

    .line 1080
    .local v3, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "number = ? AND type = ? AND sync_dirty <> ? "

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v1

    const-string v9, "1"

    aput-object v9, v8, v2

    const/4 v9, 0x2

    .line 1086
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 1080
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 1088
    if-eqz v3, :cond_5

    .line 1089
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_4

    .line 1094
    move v1, v2

    goto :goto_2

    .line 1089
    :cond_4
    nop

    .line 1094
    :goto_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1089
    return v1

    .line 1094
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1091
    :catch_0
    move-exception v2

    .line 1092
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExtraTelephony"

    const-string v5, "Cursor exception in isInBlacklist(): "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1095
    nop

    .line 1096
    return v1

    .line 1094
    :goto_3
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1109
    return v1

    .line 1111
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1112
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "nomalizeNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    move-object p1, v3

    .line 1114
    const-string v3, "[a-zA-Z]*-[a-zA-Z]*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1115
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1118
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v8, "1"

    aput-object v8, v7, v2

    const/4 v8, 0x2

    .line 1125
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 1126
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    .line 1118
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1128
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 1130
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_4

    .line 1134
    move v1, v2

    goto :goto_2

    .line 1130
    :cond_4
    nop

    .line 1134
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1130
    return v1

    .line 1134
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1131
    :catch_0
    move-exception v2

    .line 1132
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExtraTelephony"

    const-string v5, "Cursor exception in isInBlacklist(): "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1135
    goto :goto_4

    .line 1134
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1137
    :cond_5
    :goto_4
    return v1
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1150
    return v1

    .line 1153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string v0, "1"

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    .line 1160
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x3

    .line 1161
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    .line 1153
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1163
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1165
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    const-string v2, "state"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    .local v2, "dbState":I
    if-eqz v2, :cond_1

    if-ne v2, p2, :cond_2

    .line 1168
    :cond_1
    nop

    .line 1174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1168
    return v8

    .line 1174
    .end local v2    # "dbState":I
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1175
    goto :goto_2

    .line 1174
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1171
    :catch_0
    move-exception v2

    .line 1172
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInBlacklist(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1174
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1177
    :cond_3
    :goto_2
    return v1
.end method

.method public static isInCloudPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 1484
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1485
    return v1

    .line 1489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "type = ? AND state in (0, ?)"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    aput-object p3, v6, v1

    .line 1493
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v7, 0x0

    .line 1489
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1495
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1497
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1498
    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "match":Ljava/lang/String;
    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->number2regex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1500
    nop

    .line 1506
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1500
    return v8

    .line 1502
    .end local v2    # "match":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1506
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1507
    goto :goto_3

    .line 1506
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1503
    :catch_0
    move-exception v2

    .line 1504
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception when check prefix cloudPhoneList: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1506
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1509
    :cond_3
    :goto_3
    return v1
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1571
    return v1

    .line 1574
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    const-string v0, "number"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1578
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 1580
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1581
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "106"

    .line 1589
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1592
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1590
    .restart local v2    # "antispamNumber":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 1596
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1590
    return v1

    .line 1596
    .end local v2    # "antispamNumber":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1597
    goto :goto_4

    .line 1596
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1593
    :catch_0
    move-exception v2

    .line 1594
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1596
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1599
    :cond_4
    :goto_4
    return v1
.end method

.method public static isInVipList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1448
    return v1

    .line 1451
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "number = ? AND type = ? AND sync_dirty <> ? "

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string v0, "3"

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    .line 1458
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    .line 1451
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1460
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1462
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    .line 1466
    move v1, v8

    goto :goto_0

    .line 1462
    :cond_1
    nop

    .line 1466
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1462
    return v1

    .line 1466
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1463
    :catch_0
    move-exception v2

    .line 1464
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInVipList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1467
    goto :goto_2

    .line 1466
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1469
    :cond_2
    :goto_2
    return v1
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1271
    return v1

    .line 1273
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1274
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 1276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "number = ? AND type = ? AND sync_dirty <> ? "

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v2

    const/4 v0, 0x2

    .line 1283
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x0

    .line 1276
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1285
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1287
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_2

    .line 1291
    move v1, v2

    goto :goto_1

    .line 1287
    :cond_2
    nop

    .line 1291
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1287
    return v1

    .line 1291
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1288
    :catch_0
    move-exception v2

    .line 1289
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInWhiteList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1292
    goto :goto_3

    .line 1291
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1294
    :cond_3
    :goto_3
    return v1
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1307
    return v1

    .line 1309
    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1310
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 1312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v2

    const/4 v0, 0x2

    .line 1320
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x3

    .line 1321
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x0

    .line 1312
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1323
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1325
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_2

    .line 1329
    move v1, v2

    goto :goto_1

    .line 1325
    :cond_2
    nop

    .line 1329
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1325
    return v1

    .line 1329
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1326
    :catch_0
    move-exception v2

    .line 1327
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isInWhiteList(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1330
    goto :goto_3

    .line 1329
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1332
    :cond_3
    :goto_3
    return v1
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    move/from16 v1, p2

    .line 1346
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1347
    return v2

    .line 1351
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-static/range {p0 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v0, "2"

    const/4 v10, 0x1

    aput-object v0, v7, v10

    .line 1359
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v7, v11

    .line 1360
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    aput-object v0, v7, v12

    const/4 v8, 0x0

    .line 1351
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1362
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 1364
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    const-string v0, "state"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    .local v0, "dbState":I
    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    .line 1367
    :cond_1
    nop

    .line 1373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1367
    return v10

    .line 1373
    .end local v0    # "dbState":I
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1374
    goto :goto_2

    .line 1373
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ExtraTelephony"

    const-string v5, "Cursor exception when area check in whiteList: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1373
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1377
    :cond_3
    :goto_2
    nop

    .line 1378
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1380
    .local v4, "normalizedNum":Ljava/lang/String;
    const-string v0, ""

    .line 1381
    .local v0, "tmp":Ljava/lang/String;
    move-object v5, v3

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "tmp":Ljava/lang/String;
    .local v5, "cursor":Landroid/database/Cursor;
    :goto_3
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1383
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const-string v16, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    new-array v0, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    const-string v7, "2"

    aput-object v7, v0, v10

    .line 1390
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v11

    .line 1391
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v12

    const/16 v18, 0x0

    .line 1383
    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1393
    if-eqz v5, :cond_6

    .line 1395
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1396
    const-string v0, "state"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1397
    .local v0, "dbState":I
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_5

    .line 1398
    :cond_4
    nop

    .line 1404
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1398
    return v10

    .line 1404
    .end local v0    # "dbState":I
    :cond_5
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1405
    goto :goto_6

    .line 1404
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1401
    :catch_1
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "ExtraTelephony"

    const-string v8, "Cursor exception when prefix check in whiteList: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 1404
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1381
    :cond_6
    :goto_6
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .local v0, "i":I
    goto/16 :goto_3

    .line 1410
    .end local v0    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const-string v16, "number= ? AND type= ? AND sim_id = ? AND sync_dirty <> ? "

    new-array v0, v9, [Ljava/lang/String;

    aput-object v4, v0, v2

    const-string v6, "2"

    aput-object v6, v0, v10

    .line 1417
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    .line 1418
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v12

    const/16 v18, 0x0

    .line 1410
    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1420
    if-eqz v5, :cond_a

    .line 1422
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1423
    const-string v0, "state"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1424
    .local v0, "dbState":I
    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_9

    .line 1425
    :cond_8
    nop

    .line 1431
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1425
    return v10

    .line 1431
    .end local v0    # "dbState":I
    :cond_9
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1432
    goto :goto_9

    .line 1431
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 1428
    :catch_2
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "ExtraTelephony"

    const-string v7, "Cursor exception when complete check in whiteList: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 1431
    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1435
    :cond_a
    :goto_9
    return v2
.end method

.method public static isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .line 1189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1190
    return v1

    .line 1193
    :cond_0
    const-string v0, ""

    .line 1194
    .local v0, "tmp":Ljava/lang/String;
    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "1"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    .line 1203
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x3

    .line 1204
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    .line 1196
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1206
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 1208
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1209
    const-string v4, "state"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    .local v4, "dbState":I
    if-eqz v4, :cond_1

    if-ne v4, p2, :cond_2

    .line 1211
    :cond_1
    nop

    .line 1217
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1211
    return v9

    .line 1217
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "dbState":I
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1218
    goto :goto_3

    .line 1217
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1214
    :catch_0
    move-exception v4

    .line 1215
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ExtraTelephony"

    const-string v6, "Cursor exception in isPrefixInBlack(): "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1217
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1194
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1221
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method private static isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 1657
    const/4 v0, 0x0

    .line 1659
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "number = ? OR normalized_number = ? "

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v9, 0x1

    aput-object p1, v6, v9

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 1665
    if-eqz v0, :cond_1

    .line 1666
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1667
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v8, :cond_0

    .line 1668
    nop

    .line 1675
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1668
    return v9

    .line 1675
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v2

    .line 1673
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ExtraTelephony"

    const-string v4, "Cursor exception in isRelatedNumber(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1676
    nop

    .line 1677
    return v1

    .line 1675
    :goto_0
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .line 2390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2391
    return v1

    .line 2393
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 2394
    .local v0, "phoneNumber":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2395
    return v3

    .line 2396
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "106"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2397
    return v3

    .line 2399
    :cond_2
    return v1
.end method

.method public static isTargetServiceNum(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .line 1824
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1827
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1828
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    .local v3, "result":I
    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1834
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraTelephony"

    const-string v3, "Exception when isTargetServiceNum()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1837
    .end local v0    # "e":Ljava/lang/Exception;
    return v2
.end method

.method public static isURLFlagRisky(I)Z
    .locals 2
    .param p0, "blockType"    # I

    .line 1859
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 2072
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    const-string v0, ""

    return-object v0

    .line 2076
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2077
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2078
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 2079
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2082
    .local v3, "c":C
    invoke-static {v0, v3, v2}, Lmiui/provider/ExtraTelephony;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 2083
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 2084
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2085
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2086
    :cond_1
    if-nez v2, :cond_2

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_2

    .line 2087
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2088
    :cond_2
    const/16 v5, 0x61

    if-lt v3, v5, :cond_3

    const/16 v5, 0x7a

    if-le v3, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v3, v5, :cond_5

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_5

    .line 2089
    :cond_4
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2078
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2092
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static number2regex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .line 1519
    const-string v0, "*"

    const-string v1, "[\\s\\S]*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, "[\\s\\S]"

    .line 1520
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "\\+"

    .line 1521
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    return-object v0
.end method

.method private static registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .line 2529
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "registerContentObserver"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/database/ContentObserver;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2531
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2532
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p3, v1, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 2533
    :catch_0
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExtraTelephony"

    const-string v2, "invoke registerContentObserver failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1956
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_0

    .line 1957
    return-void

    .line 1959
    :cond_0
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1960
    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-nez v0, :cond_2

    .line 1961
    new-instance v0, Lmiui/provider/ExtraTelephony$SilentModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/provider/ExtraTelephony$SilentModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1962
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1963
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "zen_mode"

    .line 1964
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1963
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_in_silent"

    .line 1967
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1966
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_notification"

    .line 1970
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1969
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 1973
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "quiet_mode_enable"

    .line 1974
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1973
    invoke-static {v0, v3, v2, v4, v1}, Lmiui/provider/ExtraTelephony;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1978
    :cond_2
    :goto_0
    return-void
.end method

.method public static sendCallInterceptNotification(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "blockType"    # I
    .param p3, "subId"    # I

    .line 1870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_sim_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1872
    const-string v1, "notification_intercept_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    const-string v1, "key_block_log_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1874
    const-string v1, "notification_block_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1875
    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1880
    :cond_0
    const-string v1, "notification_show_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1878
    :cond_1
    :goto_0
    const-string v1, "notification_show_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1882
    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1883
    return-void
.end method

.method public static sendMsgInterceptNotification(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockType"    # I
    .param p2, "subId"    # I

    .line 1893
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_0

    .line 1894
    return-void

    .line 1896
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1898
    const-string v1, "key_block_log_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1899
    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 1905
    :cond_1
    const-string v1, "notification_show_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1903
    :cond_2
    :goto_0
    const-string v1, "notification_show_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1908
    return-void
.end method

.method public static unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1985
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1986
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-eqz v0, :cond_0

    .line 1987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1988
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 1990
    :cond_0
    return-void
.end method
