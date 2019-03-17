.class final Lmiui/gallery/support/MiuiSdkCompat$3;
.super Lcom/miui/gallery/util/LazyValue;
.source "MiuiSdkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/gallery/support/MiuiSdkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/util/LazyValue",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/util/LazyValue;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInit(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_mode_title_button_confirm_dark"

    const-string v2, "drawable"

    const-string v3, "miui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onInit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lmiui/gallery/support/MiuiSdkCompat$3;->onInit(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
