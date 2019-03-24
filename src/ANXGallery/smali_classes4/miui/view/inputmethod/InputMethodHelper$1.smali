.class Lmiui/view/inputmethod/InputMethodHelper$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/inputmethod/InputMethodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/view/inputmethod/InputMethodHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lmiui/view/inputmethod/InputMethodHelper$1;->eb()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    return-object v0
.end method

.method protected eb()Lmiui/view/inputmethod/InputMethodHelper;
    .locals 2

    .line 24
    new-instance v0, Lmiui/view/inputmethod/InputMethodHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;-><init>(Lmiui/view/inputmethod/InputMethodHelper$1;)V

    return-object v0
.end method
