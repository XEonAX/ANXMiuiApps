.class public Lcom/android/internal/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# static fields
.field private static sIsNotch:Ljava/lang/Boolean;

.field private static sTopNotchHeight:Ljava/lang/Integer;


# direct methods
.method public static getTopNotchHeight(Landroid/app/Activity;)I
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 35
    sget-object v5, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    if-nez v5, :cond_3

    .line 36
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->isNotch(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 41
    .local v3, "windowInsets":Landroid/view/WindowInsets;
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 43
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_1

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    .line 48
    :goto_0
    sget-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 61
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v3    # "windowInsets":Landroid/view/WindowInsets;
    :cond_0
    :goto_1
    return v4

    .line 46
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v1    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v3    # "windowInsets":Landroid/view/WindowInsets;
    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    goto :goto_0

    .line 52
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v3    # "windowInsets":Landroid/view/WindowInsets;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notch_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "resourceId":I
    if-lez v2, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    .line 55
    sget-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 61
    .end local v2    # "resourceId":I
    :cond_3
    sget-object v4, Lcom/android/internal/WindowCompat;->sTopNotchHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1
.end method

.method public static isNotch(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    sget-object v4, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    if-nez v4, :cond_5

    .line 69
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_3

    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 76
    .local v1, "windowInsets":Landroid/view/WindowInsets;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    .line 78
    sget-object v2, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 77
    goto :goto_1

    .line 82
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "windowInsets":Landroid/view/WindowInsets;
    :cond_3
    const-string v4, "ro.miui.notch"

    invoke-static {v4, v3}, Lcom/android/internal/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    .line 83
    sget-object v2, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_4
    move v2, v3

    .line 82
    goto :goto_2

    .line 87
    :cond_5
    sget-object v2, Lcom/android/internal/WindowCompat;->sIsNotch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public static setCutoutModeShortEdges(Landroid/view/Window;)V
    .locals 3
    .param p0, "hostwindow"    # Landroid/view/Window;

    .prologue
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 25
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
