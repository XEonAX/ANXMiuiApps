.class Lmiui/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/analytics/Analytics;->endSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jv:Landroid/content/Context;

.field final synthetic wO:[Lcom/miui/internal/analytics/Event;

.field final synthetic wP:Lmiui/analytics/Analytics;


# direct methods
.method constructor <init>(Lmiui/analytics/Analytics;[Lcom/miui/internal/analytics/Event;Landroid/content/Context;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lmiui/analytics/Analytics$2;->wP:Lmiui/analytics/Analytics;

    iput-object p2, p0, Lmiui/analytics/Analytics$2;->wO:[Lcom/miui/internal/analytics/Event;

    iput-object p3, p0, Lmiui/analytics/Analytics$2;->jv:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 128
    invoke-static {p2}, Lcom/miui/internal/analytics/IAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/analytics/IAnalytics;

    move-result-object p1

    .line 130
    :try_start_0
    iget-object p2, p0, Lmiui/analytics/Analytics$2;->wO:[Lcom/miui/internal/analytics/Event;

    invoke-interface {p1, p2}, Lcom/miui/internal/analytics/IAnalytics;->track([Lcom/miui/internal/analytics/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    const-string p2, "Analytics"

    const-string v0, "endSession() remote exception caught"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_0
    iget-object p1, p0, Lmiui/analytics/Analytics$2;->jv:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 124
    return-void
.end method
