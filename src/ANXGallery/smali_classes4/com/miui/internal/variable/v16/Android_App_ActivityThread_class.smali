.class public Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/Android_App_ActivityThread_class;


# static fields
.field private static final TAG:Ljava/lang/String; = "Android_App_ActivityThread_class_v16"


# instance fields
.field private ld:Ljava/lang/Object;

.field private volatile le:Landroid/app/Application;

.field private lf:Ljava/lang/String;

.field private lg:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->ld:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->le:Landroid/app/Application;

    .line 34
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->ld:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.app.ActivityThread.currentActivityThread"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public currentActivityThread()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->ld:Ljava/lang/Object;

    return-object v0
.end method

.method public currentApplication()Landroid/app/Application;
    .locals 5

    .line 45
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->le:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->ld:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->le:Landroid/app/Application;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->le:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.app.ActivityThread.currentApplication"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-object v0
.end method

.method public getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->lg:Ljava/lang/Object;

    return-object p1
.end method

.method public getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->lf:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->lf:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 71
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->lg:Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->lf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.app.ActivityThread.mPackages"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 p1, 0x0

    return-object p1
.end method
