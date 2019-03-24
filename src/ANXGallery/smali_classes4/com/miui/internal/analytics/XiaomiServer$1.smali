.class Lcom/miui/internal/analytics/XiaomiServer$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/XiaomiServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lcom/miui/internal/analytics/XiaomiServer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/miui/internal/analytics/XiaomiServer$1;->i()Lcom/miui/internal/analytics/XiaomiServer;

    move-result-object v0

    return-object v0
.end method

.method protected i()Lcom/miui/internal/analytics/XiaomiServer;
    .locals 2

    .line 46
    new-instance v0, Lcom/miui/internal/analytics/XiaomiServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/analytics/XiaomiServer;-><init>(Lcom/miui/internal/analytics/XiaomiServer$1;)V

    return-object v0
.end method
