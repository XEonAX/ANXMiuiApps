.class public Lcom/taobao/ma/core/Ma;
.super Ljava/lang/Object;
.source "Ma.java"


# static fields
.field private static mConfig:Lcom/taobao/ma/common/config/MaConfig;

.field private static utMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/taobao/ma/common/config/MaConfig;

    invoke-direct {v0}, Lcom/taobao/ma/common/config/MaConfig;-><init>()V

    sput-object v0, Lcom/taobao/ma/core/Ma;->mConfig:Lcom/taobao/ma/common/config/MaConfig;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/ma/core/Ma;->utMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaConfig()Lcom/taobao/ma/common/config/MaConfig;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taobao/ma/core/Ma;->mConfig:Lcom/taobao/ma/common/config/MaConfig;

    return-object v0
.end method

.method public static getUtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/taobao/ma/core/Ma;->utMap:Ljava/util/Map;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/ma/core/Ma;->init(Lcom/taobao/ma/common/config/MaConfig;)V

    .line 18
    return-void
.end method

.method public static init(Lcom/taobao/ma/common/config/MaConfig;)V
    .locals 1
    .param p0, "config"    # Lcom/taobao/ma/common/config/MaConfig;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    sput-object p0, Lcom/taobao/ma/core/Ma;->mConfig:Lcom/taobao/ma/common/config/MaConfig;

    .line 27
    iget-boolean v0, p0, Lcom/taobao/ma/common/config/MaConfig;->isDebug:Z

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/taobao/ma/common/log/LogLevel;->DEBUG:Lcom/taobao/ma/common/log/LogLevel;

    invoke-static {v0}, Lcom/taobao/ma/common/log/MaLogger;->setLogLevel(Lcom/taobao/ma/common/log/LogLevel;)V

    .line 31
    :cond_1
    invoke-static {}, Lcom/taobao/ma/core/Ma;->initUtMap()V

    goto :goto_0
.end method

.method private static initUtMap()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/ma/core/Ma;->utMap:Ljava/util/Map;

    const-string v1, "utdid"

    sget-object v2, Lcom/taobao/ma/core/Ma;->mConfig:Lcom/taobao/ma/common/config/MaConfig;

    iget-object v2, v2, Lcom/taobao/ma/common/config/MaConfig;->utdid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/taobao/ma/core/Ma;->utMap:Ljava/util/Map;

    const-string v1, "appkey"

    sget-object v2, Lcom/taobao/ma/core/Ma;->mConfig:Lcom/taobao/ma/common/config/MaConfig;

    iget-object v2, v2, Lcom/taobao/ma/common/config/MaConfig;->appkey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
