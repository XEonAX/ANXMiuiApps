.class Lmiui/analytics/Analytics$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/analytics/Analytics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bZ()Lmiui/analytics/Analytics;
    .locals 2

    .line 68
    new-instance v0, Lmiui/analytics/Analytics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/analytics/Analytics;-><init>(Lmiui/analytics/Analytics$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lmiui/analytics/Analytics$1;->bZ()Lmiui/analytics/Analytics;

    move-result-object v0

    return-object v0
.end method
