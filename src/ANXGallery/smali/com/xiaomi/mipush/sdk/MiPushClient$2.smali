.class final Lcom/xiaomi/mipush/sdk/MiPushClient$2;
.super Ljava/lang/Object;
.source "MiPushClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;->scheduleDataCollectionJobs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 485
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/mpcd/CDEntrance;->start(Landroid/content/Context;)V

    .line 486
    return-void
.end method
