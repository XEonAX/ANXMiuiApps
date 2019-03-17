.class public Lcom/miui/gallery/compat/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# direct methods
.method private static getRootWindowInsets(Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 26
    .local v0, "insets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 27
    const-string v1, "ViewCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "root window insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v0    # "insets":Landroid/view/WindowInsets;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemWindowInsetBottom(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "insets":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemWindowInsetRight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "insets":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemWindowInsetTop(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "insets":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemWindowInsets(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    .local v1, "ret":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "insets":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v2

    .line 60
    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v3

    .line 61
    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v4

    .line 62
    invoke-static {v0}, Lcom/miui/gallery/compat/view/WindowInsetsCompat;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v5

    .line 58
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    :cond_0
    return-object v1
.end method

.method public static setTransitionName(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method
