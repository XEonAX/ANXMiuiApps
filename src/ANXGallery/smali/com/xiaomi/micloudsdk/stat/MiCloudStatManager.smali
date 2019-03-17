.class public Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
.super Ljava/lang/Object;
.source "MiCloudStatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;
    }
.end annotation


# instance fields
.field private mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

.field private mEnable:Z

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    .line 8
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "netFlow"    # J
    .param p6, "responseCode"    # I
    .param p7, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mCldStatCallback:Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/stat/IMiCloudStatCallback;->onAddHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
