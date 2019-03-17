.class public Lcom/miui/gallery/util/SystemUiUtil;
.super Ljava/lang/Object;
.source "SystemUiUtil.java"


# direct methods
.method public static extendToStatusBar(Landroid/view/View;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 105
    const/16 v0, 0x500

    .line 107
    .local v0, "flag":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    return-void
.end method

.method public static hideSystemBars(Landroid/view/View;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/gallery/util/SystemUiUtil;->hideSystemBars(Landroid/view/View;Z)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideSystemBars(Landroid/view/View;Z)V
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "lightStatusBar"    # Z

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x3706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static setDrawSystemBarBackground(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p0, :cond_0

    .line 86
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setLayoutFullScreen(Landroid/view/View;Z)V
    .locals 3
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "showBars"    # Z

    .prologue
    .line 66
    const/16 v0, 0x700

    .line 69
    .local v0, "flag":I
    if-nez p1, :cond_0

    .line 70
    or-int/lit16 v0, v0, 0x1006

    .line 74
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    or-int/lit16 v0, v0, 0x2000

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    return-void
.end method

.method public static setSystemBarsVisibility(ZLandroid/view/View;)V
    .locals 2
    .param p0, "visibility"    # Z
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 92
    .local v0, "lightStatusBar":Z
    :goto_0
    if-eqz p0, :cond_1

    .line 93
    invoke-static {p1, v0}, Lcom/miui/gallery/util/SystemUiUtil;->showSystemBars(Landroid/view/View;Z)V

    .line 97
    :goto_1
    return-void

    .line 91
    .end local v0    # "lightStatusBar":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    .restart local v0    # "lightStatusBar":Z
    :cond_1
    invoke-static {p1, v0}, Lcom/miui/gallery/util/SystemUiUtil;->hideSystemBars(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public static showSystemBars(Landroid/view/View;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/gallery/util/SystemUiUtil;->showSystemBars(Landroid/view/View;Z)V

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSystemBars(Landroid/view/View;Z)V
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "lightStatusBar"    # Z

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 23
    :cond_0
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_1
    const/16 v0, 0x2700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
