.class Lmiui/net/ConnectivityHelper$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/net/ConnectivityHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected cA()Lmiui/net/ConnectivityHelper;
    .locals 2

    .line 27
    new-instance v0, Lmiui/net/ConnectivityHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/net/ConnectivityHelper;-><init>(Lmiui/net/ConnectivityHelper$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lmiui/net/ConnectivityHelper$1;->cA()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    return-object v0
.end method
