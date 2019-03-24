.class public Lcom/miui/internal/util/ResourcesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jy:Ljava/lang/reflect/Method;

.field private static jz:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/ResourcesUtils;->jy:Ljava/lang/reflect/Method;

    .line 21
    const-class v0, Landroid/content/res/AssetManager;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/ResourcesUtils;->jz:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 25
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static varargs createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 8

    .line 35
    nop

    .line 37
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/util/ResourcesUtils;->jz:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 38
    :try_start_1
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 39
    sget-object v6, Lcom/miui/internal/util/ResourcesUtils;->jy:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    goto :goto_1

    .line 43
    :catch_1
    move-exception p1

    goto :goto_2

    .line 41
    :catch_2
    move-exception p1

    goto :goto_3

    .line 45
    :catch_3
    move-exception p1

    move-object v1, v0

    .line 46
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    .line 43
    :catch_4
    move-exception p1

    move-object v1, v0

    .line 44
    :goto_2
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 41
    :catch_5
    move-exception p1

    move-object v1, v0

    .line 42
    :goto_3
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 47
    :cond_0
    :goto_4
    nop

    .line 50
    :goto_5
    if-nez p0, :cond_1

    .line 51
    new-instance p0, Landroid/content/res/Resources;

    invoke-direct {p0, v1, v0, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_6

    .line 53
    :cond_1
    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {p1, v1, v0, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 55
    move-object p0, p1

    :goto_6
    return-object p0
.end method

.method public static varargs createResources([Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/miui/internal/util/ResourcesUtils;->createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
