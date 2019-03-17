.class public Lcom/xiaomi/scanner/util/WXUtils;
.super Ljava/lang/Object;
.source "WXUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "wx3e772a7eb0393d4d"

.field private static mWXapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/xiaomi/scanner/util/WXUtils;->mWXapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/xiaomi/scanner/util/WXUtils;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/util/WXUtils;->mWXapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wx3e772a7eb0393d4d"

    invoke-static {v0, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/WXUtils;->mWXapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/util/WXUtils;->mWXapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
