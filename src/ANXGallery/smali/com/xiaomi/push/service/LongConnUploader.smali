.class public Lcom/xiaomi/push/service/LongConnUploader;
.super Ljava/lang/Object;
.source "LongConnUploader.java"

# interfaces
.implements Lcom/xiaomi/tinyData/TinyDataUploader;


# instance fields
.field private final mPushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "xmPushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/push/service/LongConnUploader;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/LongConnUploader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/LongConnUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/LongConnUploader;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/LongConnUploader;)Lcom/xiaomi/push/service/XMPushService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/LongConnUploader;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/push/service/LongConnUploader;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    return-object v0
.end method

.method private getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v0, "1000271"

    .line 89
    .local v0, "appId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 84
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/service/LongConnUploader;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    const-string v3, "pref_registered_pkg_names"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "appId":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public upload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "sourcePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData LongConnUploader.upload items size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 33
    iget-object v6, p0, Lcom/xiaomi/push/service/LongConnUploader;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v0, Lcom/xiaomi/push/service/LongConnUploader$1;

    const/4 v2, 0x4

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/LongConnUploader$1;-><init>(Lcom/xiaomi/push/service/LongConnUploader;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 72
    return-void
.end method
