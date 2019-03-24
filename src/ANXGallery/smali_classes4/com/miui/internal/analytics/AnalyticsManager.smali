.class public Lcom/miui/internal/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/AnalyticsManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsManager"

.field private static final a:Ljava/lang/String; = "last_collect_analytics_data"

.field private static final b:Ljava/lang/String; = "last_upload_usage_app"

.field private static final c:Ljava/lang/String; = "android.intent.action.COLLECT_ANALYTICS_DATA"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/internal/analytics/AnalyticsManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/AnalyticsManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(JJ)Z
    .locals 0

    .line 74
    sub-long/2addr p1, p3

    const-wide/32 p3, 0x5265c00

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/miui/internal/analytics/AnalyticsManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/miui/internal/analytics/AnalyticsManager$Holder;->d:Lcom/miui/internal/analytics/AnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized upload()V
    .locals 8

    monitor-enter p0

    .line 47
    :try_start_0
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_CTA_BUILD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v0}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 54
    const-string v3, "last_collect_analytics_data"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/miui/internal/analytics/AnalyticsManager;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "last_collect_analytics_data"

    invoke-interface {v3, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string v6, "android.intent.action.COLLECT_ANALYTICS_DATA"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v6, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "last_upload_usage_app"

    .line 65
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/internal/analytics/AnalyticsManager;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_upload_usage_app"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    new-instance v0, Lcom/miui/internal/analytics/DispatcherHelper;

    iget-object v1, p0, Lcom/miui/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/analytics/DispatcherHelper;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Lcom/miui/internal/analytics/DispatcherHelper;->dispatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
