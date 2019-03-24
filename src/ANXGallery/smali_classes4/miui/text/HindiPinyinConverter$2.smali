.class Lmiui/text/HindiPinyinConverter$2;
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
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 349
    return-void
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lmiui/text/HindiPinyinConverter$2;->dc()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dc()Ljava/lang/StringBuilder;
    .locals 1

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter$2;->a(Ljava/lang/StringBuilder;)V

    return-void
.end method
