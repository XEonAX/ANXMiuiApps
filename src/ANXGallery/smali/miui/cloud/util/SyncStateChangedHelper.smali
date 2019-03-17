.class public Lmiui/cloud/util/SyncStateChangedHelper;
.super Ljava/lang/Object;
.source "SyncStateChangedHelper.java"


# static fields
.field public static final INTERNAL_STAT_URI:Landroid/net/Uri;

.field public static final OPEN_SWITCH_STATE_STAT_URI:Landroid/net/Uri;

.field public static final OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

.field public static final OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

.field public static final OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

.field public static final SYNC_SETTINGS_PROVIDER_INSTALLED:Lcom/miui/app/ProviderInstalled;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "content://com.miui.cloudservice.SyncSettingStatusProvider/internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->INTERNAL_STAT_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://com.miui.cloudservice.SyncSettingStatusProvider/open_switch_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SWITCH_STATE_STAT_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_result"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_phone_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_time_consume"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

    .line 31
    new-instance v0, Lcom/miui/app/ProviderInstalled;

    const-string v1, "com.miui.cloudservice.SyncSettingStatusProvider"

    invoke-direct {v0, v1}, Lcom/miui/app/ProviderInstalled;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/cloud/util/SyncStateChangedHelper;->SYNC_SETTINGS_PROVIDER_INSTALLED:Lcom/miui/app/ProviderInstalled;

    return-void
.end method
