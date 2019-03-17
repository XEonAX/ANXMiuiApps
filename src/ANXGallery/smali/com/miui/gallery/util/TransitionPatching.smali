.class public Lcom/miui/gallery/util/TransitionPatching;
.super Ljava/lang/Object;
.source "TransitionPatching.java"


# direct methods
.method public static onActivityStopWhenEnterStarting(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    const-string v6, "TransitionPatching"

    const-string v7, "onActivityStopWhenEnterStarting"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    if-eqz p0, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v6, v7, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    const-string v6, "android.app.Activity"

    const-string v7, "mActivityTransitionState"

    invoke-static {v6, p0, v7}, Lcom/miui/gallery/util/ReflectUtils;->getField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 32
    .local v4, "transitionState":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 33
    const-string v6, "android.app.ActivityTransitionState"

    const-string v7, "mEnterTransitionCoordinator"

    invoke-static {v6, v4, v7}, Lcom/miui/gallery/util/ReflectUtils;->getField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 35
    const-string v6, "android.app.EnterTransitionCoordinator"

    const-string v7, "forceViewsToAppear"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/ReflectUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "forceViewsToAppear":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 37
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/miui/gallery/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v6, "TransitionPatching"

    const-string v7, "forceViewsToAppear"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    const-string v6, "android.app.EnterTransitionCoordinator"

    const-string v7, "mViewsReadyListener"

    invoke-static {v6, v1, v7}, Lcom/miui/gallery/util/ReflectUtils;->getField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    .local v5, "viewReadyListener":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 42
    const-string v6, "com.android.internal.view.OneShotPreDrawListener"

    const-string v7, "removeListener"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/ReflectUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    .local v3, "removeListener":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 44
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lcom/miui/gallery/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v6, "TransitionPatching"

    const-string v7, "removeListener"

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "forceViewsToAppear":Ljava/lang/reflect/Method;
    .end local v3    # "removeListener":Ljava/lang/reflect/Method;
    .end local v4    # "transitionState":Ljava/lang/Object;
    .end local v5    # "viewReadyListener":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "TransitionPatching"

    const-string v7, "preActivityStop occurs error.\n"

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setOnEnterStartedListener(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    const-string v3, "TransitionPatching"

    const-string v4, "onStartEnterTransition"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 67
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 75
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 78
    new-instance v3, Lcom/miui/gallery/util/TransitionPatching$1;

    invoke-direct {v3, p1, v1, v0}, Lcom/miui/gallery/util/TransitionPatching$1;-><init>(Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
