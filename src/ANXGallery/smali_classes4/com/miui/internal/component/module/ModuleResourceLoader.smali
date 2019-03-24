.class public Lcom/miui/internal/component/module/ModuleResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static D()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 121
    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 3

    .line 129
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 132
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v2

    .line 135
    invoke-virtual {v2, p0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 136
    const/4 p1, 0x0

    invoke-virtual {v2, v0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 139
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 142
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 143
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1, p1}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 69
    invoke-interface {v0, v1, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 75
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p3, v2, :cond_3

    .line 78
    :try_start_0
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object p3

    .line 79
    invoke-static {}, Lcom/miui/internal/component/module/ModuleResourceLoader;->D()Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mResourceImpls"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 81
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 86
    invoke-static {p2}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;->appendAssetPath(Ljava/lang/String;)V

    .line 87
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v4, :cond_2

    .line 89
    :try_start_2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 90
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 91
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 92
    nop

    .line 93
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    invoke-virtual {p3, v5}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object v5

    .line 94
    invoke-interface {v0, v5, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :cond_1
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    :catch_0
    move-exception p2

    goto :goto_3

    .line 104
    :catch_1
    move-exception p2

    goto :goto_3

    .line 102
    :catch_2
    move-exception p2

    goto :goto_3

    .line 100
    :catch_3
    move-exception p2

    goto :goto_3

    .line 98
    :catch_4
    move-exception p2

    .line 108
    :cond_2
    :goto_3
    goto :goto_4

    .line 110
    :cond_3
    invoke-interface {v0, v1, p2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 112
    :goto_4
    goto :goto_1

    .line 114
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v3, :cond_5

    .line 115
    invoke-static {p0, v1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 117
    :cond_5
    return-void
.end method

.method public static load(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public static load(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 36
    invoke-static {p0, p1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Initial(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p0, p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 40
    :goto_0
    return-void
.end method

.method public static load2Current(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public static load2Initial(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentActivityThread()Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    move-result-object v2

    .line 47
    invoke-interface {v0, v1}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v2, v0}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v0, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public static load2System(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 58
    return-void
.end method
