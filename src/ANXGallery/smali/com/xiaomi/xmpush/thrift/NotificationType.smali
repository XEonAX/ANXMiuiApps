.class public final enum Lcom/xiaomi/xmpush/thrift/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum APP_SLEEP:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum APP_WAKEUP:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum AppOpen:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum AppUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum AwakeApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum AwakeAppResponse:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum AwakeSystemApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum BarCancel:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum BarClick:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum CancelPushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ClientABTest:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ClientInfoUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ClientInfoUpdateOk:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ClientMIIDUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ConnectionDisabled:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum CustomClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum DailyCheckClientConfig:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum DataCollection:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum DecryptMessageFail:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ForceSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoAuthorized:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoPackageUninstalled:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoRegsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoRegsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoUnregsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoUnregsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoUpdateLoc:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum GeoUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum HybridRegister:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum HybridRegisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum HybridUnregister:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum HybridUnregisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum Invalid:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum IosSleep:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum IosWakeUp:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum NOTIFICATION_SWITCH:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum NormalClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum NotificationBarInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum PackageUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum PackageUnregistered:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum PullOfflineMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum PushLogUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum RegIdExpired:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum SyncInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum SyncInfoResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum SyncMIID:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum ThirdPartyRegUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum UploadClientLog:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

.field public static final enum VRUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "Invalid"

    const-string v2, "INVALID"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->Invalid:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 8
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "BarClick"

    const-string v2, "bar:click"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->BarClick:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "BarCancel"

    const-string v2, "bar:cancel"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->BarCancel:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 10
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AppOpen"

    const-string v2, "app:open"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->AppOpen:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 11
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PackageUninstall"

    const-string v2, "package uninstalled"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->PackageUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 12
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AppUninstall"

    const/4 v2, 0x5

    const-string v3, "app_uninstalled"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->AppUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 13
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientInfoUpdate"

    const/4 v2, 0x6

    const-string v3, "client_info_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientInfoUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 14
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientInfoUpdateOk"

    const/4 v2, 0x7

    const-string v3, "client_info_update_ok"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientInfoUpdateOk:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 15
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientMIIDUpdate"

    const/16 v2, 0x8

    const-string v3, "client_miid_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientMIIDUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 16
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PullOfflineMessage"

    const/16 v2, 0x9

    const-string v3, "pull"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->PullOfflineMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "IosSleep"

    const/16 v2, 0xa

    const-string v3, "ios_sleep"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->IosSleep:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "IosWakeUp"

    const/16 v2, 0xb

    const-string v3, "ios_wakeup"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->IosWakeUp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AwakeApp"

    const/16 v2, 0xc

    const-string v3, "awake_app"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "NormalClientConfigUpdate"

    const/16 v2, 0xd

    const-string v3, "normal_client_config_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->NormalClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "CustomClientConfigUpdate"

    const/16 v2, 0xe

    const-string v3, "custom_client_config_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->CustomClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DailyCheckClientConfig"

    const/16 v2, 0xf

    const-string v3, "daily_check_client_config"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->DailyCheckClientConfig:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 23
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DataCollection"

    const/16 v2, 0x10

    const-string v3, "data_collection"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->DataCollection:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 24
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "RegIdExpired"

    const/16 v2, 0x11

    const-string v3, "registration id expired"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->RegIdExpired:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 25
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ConnectionDisabled"

    const/16 v2, 0x12

    const-string v3, "!!!MILINK CONNECTION DISABLED!!!"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ConnectionDisabled:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 26
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PackageUnregistered"

    const/16 v2, 0x13

    const-string v3, "package_unregistered"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->PackageUnregistered:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 27
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DecryptMessageFail"

    const/16 v2, 0x14

    const-string v3, "decrypt_msg_fail"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->DecryptMessageFail:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 28
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "SyncInfo"

    const/16 v2, 0x15

    const-string/jumbo v3, "sync_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 29
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "SyncInfoResult"

    const/16 v2, 0x16

    const-string/jumbo v3, "sync_info_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfoResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 30
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ForceSync"

    const/16 v2, 0x17

    const-string v3, "force_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ForceSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 31
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "UploadClientLog"

    const/16 v2, 0x18

    const-string/jumbo v3, "upload_client_log"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadClientLog:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 32
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "NotificationBarInfo"

    const/16 v2, 0x19

    const-string v3, "notification_bar_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->NotificationBarInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 33
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "SyncMIID"

    const/16 v2, 0x1a

    const-string/jumbo v3, "sync_miid"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncMIID:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 34
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "UploadTinyData"

    const/16 v2, 0x1b

    const-string/jumbo v3, "upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 36
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoUpdateLoc"

    const/16 v2, 0x1c

    const-string v3, "geo_update_loc"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpdateLoc:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 37
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoRegsiter"

    const/16 v2, 0x1d

    const-string v3, "geo_reg"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 38
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoRegsiterResult"

    const/16 v2, 0x1e

    const-string v3, "geo_reg_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 39
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoUnregsiter"

    const/16 v2, 0x1f

    const-string v3, "geo_unreg"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 40
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoUnregsiterResult"

    const/16 v2, 0x20

    const-string v3, "geo_unreg_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 41
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoSync"

    const/16 v2, 0x21

    const-string v3, "geo_sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 42
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoUpload"

    const/16 v2, 0x22

    const-string v3, "geo_upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 43
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoPackageUninstalled"

    const/16 v2, 0x23

    const-string v3, "geo_package_uninstalled"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoPackageUninstalled:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 44
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "GeoAuthorized"

    const/16 v2, 0x24

    const-string v3, "geo_authorized"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoAuthorized:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 45
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "CancelPushMessage"

    const/16 v2, 0x25

    const-string v3, "clear_push_message"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->CancelPushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 47
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "DisablePushMessage"

    const/16 v2, 0x26

    const-string v3, "disable_push"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 48
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "EnablePushMessage"

    const/16 v2, 0x27

    const-string v3, "enable_push"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ClientABTest"

    const/16 v2, 0x28

    const-string v3, "client_ab_test"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientABTest:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AwakeSystemApp"

    const/16 v2, 0x29

    const-string v3, "awake_system_app"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeSystemApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "AwakeAppResponse"

    const/16 v2, 0x2a

    const-string v3, "awake_app_response"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeAppResponse:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "HybridRegister"

    const/16 v2, 0x2b

    const-string v3, "hb_register"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridRegister:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 54
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "HybridRegisterResult"

    const/16 v2, 0x2c

    const-string v3, "hb_register_res"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridRegisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 55
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "HybridUnregister"

    const/16 v2, 0x2d

    const-string v3, "hb_unregister"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridUnregister:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 56
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "HybridUnregisterResult"

    const/16 v2, 0x2e

    const-string v3, "hb_unregister_res"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridUnregisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 58
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "ThirdPartyRegUpdate"

    const/16 v2, 0x2f

    const-string v3, "3rd_party_reg_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->ThirdPartyRegUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 60
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "VRUpload"

    const/16 v2, 0x30

    const-string/jumbo v3, "vr_upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->VRUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 61
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "PushLogUpload"

    const/16 v2, 0x31

    const-string v3, "log_upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->PushLogUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 63
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "APP_WAKEUP"

    const/16 v2, 0x32

    const-string v3, "app_wakeup"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->APP_WAKEUP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 64
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "APP_SLEEP"

    const/16 v2, 0x33

    const-string v3, "app_sleep"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->APP_SLEEP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 65
    new-instance v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    const-string v1, "NOTIFICATION_SWITCH"

    const/16 v2, 0x34

    const-string v3, "notification_switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/NotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->NOTIFICATION_SWITCH:Lcom/xiaomi/xmpush/thrift/NotificationType;

    .line 6
    const/16 v0, 0x35

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/NotificationType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->Invalid:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->BarClick:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->BarCancel:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->AppOpen:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/NotificationType;->PackageUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->AppUninstall:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientInfoUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientInfoUpdateOk:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientMIIDUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->PullOfflineMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->IosSleep:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->IosWakeUp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->NormalClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->CustomClientConfigUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DailyCheckClientConfig:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DataCollection:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->RegIdExpired:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ConnectionDisabled:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->PackageUnregistered:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DecryptMessageFail:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfoResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ForceSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadClientLog:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->NotificationBarInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncMIID:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpdateLoc:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoRegsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiter:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUnregsiterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoSync:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoPackageUninstalled:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->GeoAuthorized:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->CancelPushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->DisablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->EnablePushMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientABTest:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeSystemApp:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeAppResponse:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridRegister:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridRegisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridUnregister:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->HybridUnregisterResult:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->ThirdPartyRegUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->VRUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->PushLogUpload:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->APP_WAKEUP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->APP_SLEEP:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->NOTIFICATION_SWITCH:Lcom/xiaomi/xmpush/thrift/NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/NotificationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/NotificationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    return-object v0
.end method
