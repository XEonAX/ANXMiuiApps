.class final Lcom/xiaomi/analytics/BaseLogger$1;
.super Ljava/lang/Object;
.source "BaseLogger.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/BaseLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkCorePrepared(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0
    .param p1, "analytics"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/xiaomi/analytics/BaseLogger;->access$002(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 105
    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->access$100()V

    .line 106
    return-void
.end method
