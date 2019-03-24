.class Lmiui/os/DropBoxManager$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/os/DropBoxManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected cK()Lmiui/os/DropBoxManager;
    .locals 2

    .line 89
    new-instance v0, Lmiui/os/DropBoxManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/os/DropBoxManager;-><init>(Lmiui/os/DropBoxManager$1;)V

    return-object v0
.end method

.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lmiui/os/DropBoxManager$1;->cK()Lmiui/os/DropBoxManager;

    move-result-object v0

    return-object v0
.end method
