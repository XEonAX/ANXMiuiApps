.class Lcom/miui/internal/analytics/AnalyticsManager$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/AnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final d:Lcom/miui/internal/analytics/AnalyticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/miui/internal/analytics/AnalyticsManager;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/analytics/AnalyticsManager;-><init>(Landroid/content/Context;Lcom/miui/internal/analytics/AnalyticsManager$1;)V

    sput-object v0, Lcom/miui/internal/analytics/AnalyticsManager$Holder;->d:Lcom/miui/internal/analytics/AnalyticsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
