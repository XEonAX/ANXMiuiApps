.class public Lcom/xiaomi/push/mpcd/CDActionProviderHolder;
.super Ljava/lang/Object;
.source "CDActionProviderHolder.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/mpcd/CDActionProviderHolder;


# instance fields
.field private mCDActionProvider:Lcom/xiaomi/push/mpcd/CDActionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->sInstance:Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->sInstance:Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    invoke-direct {v0}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;-><init>()V

    sput-object v0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->sInstance:Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->sInstance:Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCDActionProvider()Lcom/xiaomi/push/mpcd/CDActionProvider;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->mCDActionProvider:Lcom/xiaomi/push/mpcd/CDActionProvider;

    return-object v0
.end method

.method public setCDActionProvider(Lcom/xiaomi/push/mpcd/CDActionProvider;)V
    .locals 0
    .param p1, "cdActionProvider"    # Lcom/xiaomi/push/mpcd/CDActionProvider;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->mCDActionProvider:Lcom/xiaomi/push/mpcd/CDActionProvider;

    .line 28
    return-void
.end method
