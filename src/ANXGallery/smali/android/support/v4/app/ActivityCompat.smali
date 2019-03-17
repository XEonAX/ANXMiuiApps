.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;,
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 419
    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 496
    sget-object v1, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    .line 497
    invoke-interface {v1, p0, p1, p2}, Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 503
    instance-of v1, p0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 504
    check-cast v1, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 505
    invoke-interface {v1, p2}, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 507
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 508
    :cond_3
    instance-of v1, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v1, :cond_0

    .line 509
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 510
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    const/4 v0, 0x0

    .line 378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 379
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 382
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 389
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 384
    if-eqz p1, :cond_3

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 387
    .restart local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    .prologue
    const/4 v0, 0x0

    .line 402
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 403
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 406
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 413
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 408
    if-eqz p1, :cond_3

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 411
    .restart local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 425
    :cond_0
    return-void
.end method
