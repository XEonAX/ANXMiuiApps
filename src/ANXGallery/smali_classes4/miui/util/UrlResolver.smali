.class public Lmiui/util/UrlResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static JY:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/UrlResolver;->JY:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static a(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 48
    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 53
    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    move v10, v7

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x1

    if-ge v10, v0, :cond_5

    .line 56
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 57
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.android.browser"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/miui/internal/util/UrlResolverHelper;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 61
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    :cond_2
    nop

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 66
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 67
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    iget-object v12, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_4

    iget-object v12, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    .line 72
    iget-object v11, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.android.chrome"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 73
    goto :goto_2

    .line 76
    :cond_3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    nop

    .line 55
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 81
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 82
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    .line 83
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-le v0, v11, :cond_7

    .line 84
    return-object v8

    .line 87
    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 88
    if-nez v0, :cond_8

    .line 90
    return-object v8

    .line 92
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 93
    if-nez v9, :cond_9

    .line 95
    return-object v8

    .line 97
    :cond_9
    invoke-static {v9}, Lcom/miui/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 99
    return-object v8

    .line 103
    :cond_a
    invoke-static {v0}, Lcom/miui/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_10

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 106
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 107
    nop

    .line 109
    invoke-static {v10}, Lcom/miui/internal/util/UrlResolverHelper;->isBrowserFallbackScheme(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 110
    nop

    .line 111
    invoke-static {v0}, Lcom/miui/internal/util/UrlResolverHelper;->getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 113
    move v0, v11

    goto :goto_3

    :cond_b
    move v0, v7

    :goto_3
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    if-eqz p1, :cond_d

    .line 116
    if-eqz v0, :cond_c

    .line 118
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    return-object v0

    .line 122
    :cond_c
    invoke-static {v1, v3, v5}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 128
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_f

    .line 132
    :try_start_1
    sget-object v0, Lmiui/util/UrlResolver;->JY:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x4

    if-nez v0, :cond_e

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.android.server.pm.PackageManagerService"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    const-string v1, "resolveIntent"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v7

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v2

    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/UrlResolver;->JY:Ljava/lang/reflect/Method;

    .line 136
    :cond_e
    sget-object v0, Lmiui/util/UrlResolver;->JY:Ljava/lang/reflect/Method;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v5, v1, v7

    aput-object v6, v1, v11

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    goto :goto_4

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    return-object v8

    .line 142
    :cond_f
    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move/from16 v1, p6

    move/from16 v2, p8

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 144
    :goto_4
    return-object v0

    .line 148
    :cond_10
    return-object v8
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 9

    .line 41
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lmiui/util/UrlResolver;->a(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lmiui/util/UrlResolver;->a(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method
