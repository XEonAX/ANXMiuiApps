.class Lcom/miui/internal/analytics/DatabaseHelper$2;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lcom/miui/internal/analytics/a;",
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
.method protected c()Lcom/miui/internal/analytics/a;
    .locals 2

    .line 68
    new-instance v0, Lcom/miui/internal/analytics/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/analytics/a;-><init>(Lcom/miui/internal/analytics/DatabaseHelper$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/miui/internal/analytics/DatabaseHelper$2;->c()Lcom/miui/internal/analytics/a;

    move-result-object v0

    return-object v0
.end method
