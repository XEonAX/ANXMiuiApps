.class Lmiui/text/HindiPinyinConverter$3;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/HindiPinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 361
    return-void
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lmiui/text/HindiPinyinConverter$3;->dd()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public dd()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter$3;->a(Ljava/util/ArrayList;)V

    return-void
.end method
