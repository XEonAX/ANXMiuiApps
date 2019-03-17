.class public Lcom/miui/gallery/compat/app/ActionBarCompat;
.super Ljava/lang/Object;
.source "ActionBarCompat.java"


# direct methods
.method public static setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V
    .locals 5
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    instance-of v0, p0, Lcom/miui/gallery/view/ActionBarWrapper;

    if-eqz v0, :cond_1

    .line 13
    check-cast p0, Lcom/miui/gallery/view/ActionBarWrapper;

    .end local p0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/ActionBarWrapper;->setShowHideAnimationEnabled(Z)V

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 15
    .restart local p0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    const-string/jumbo v0, "setShowHideAnimationEnabled"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/util/MiscUtil;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
