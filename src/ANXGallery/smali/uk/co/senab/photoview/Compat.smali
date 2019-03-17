.class public Luk/co/senab/photoview/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# direct methods
.method public static getPointerIndex(I)I
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Luk/co/senab/photoview/Compat;->getPointerIndexHoneyComb(I)I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Luk/co/senab/photoview/Compat;->getPointerIndexEclair(I)I

    move-result v0

    goto :goto_0
.end method

.method private static getPointerIndexEclair(I)I
    .locals 1
    .param p0, "action"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 52
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static getPointerIndexHoneyComb(I)I
    .locals 1
    .param p0, "action"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 57
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Luk/co/senab/photoview/Compat;->postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
