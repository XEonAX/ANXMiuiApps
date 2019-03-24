.class Lcom/miui/internal/analytics/AnalyticsService$1;
.super Lcom/miui/internal/analytics/IAnalytics$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/miui/internal/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/AnalyticsService;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->f:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-direct {p0}, Lcom/miui/internal/analytics/IAnalytics$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public track([Lcom/miui/internal/analytics/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object v0

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->f:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/AnalyticsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 30
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 31
    invoke-virtual {v4}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 32
    invoke-virtual {v0, v4}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method
