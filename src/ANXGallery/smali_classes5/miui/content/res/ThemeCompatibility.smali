.class public Lmiui/content/res/ThemeCompatibility;
.super Ljava/lang/Object;
.source "ThemeCompatibility.java"


# static fields
.field private static final COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final COMPATIBILITY_FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DISABLE_MIUI_THEME_MECHANISM:Ljava/lang/String; = "/data/system/theme_config/theme_disable"

.field private static final MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThemeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme_config/theme_disable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    .line 30
    sget-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    if-eqz v0, :cond_7

    .line 31
    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->loadConfig()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    .line 32
    .local v1, "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    iget-object v2, v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v2, v3, :cond_1

    .line 33
    move-object v2, v1

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 34
    .local v2, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 35
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v4, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 36
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-nez v4, :cond_0

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 38
    sget-object v5, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->mCompatibilityType:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v2, v3, :cond_3

    .line 42
    move-object v2, v1

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    .line 43
    .local v2, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    .line 44
    .restart local v3    # "pkgName":Ljava/lang/String;
    sget-object v4, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 45
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    if-nez v4, :cond_2

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 47
    sget-object v5, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v1    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .end local v2    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    const-string v1, "miui"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    .local v0, "miuiFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_6

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 56
    .local v2, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v3, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, v2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-static {v3, v4}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 58
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-nez v4, :cond_5

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 60
    sget-object v5, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_5
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    goto :goto_2

    .line 65
    .end local v0    # "miuiFallback":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    :cond_6
    goto :goto_3

    .line 66
    :cond_7
    const-string v0, "ThemeCompatibility"

    const-string v1, "theme disabled flag has been checked!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "originName"    # Ljava/lang/String;

    .line 97
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    :cond_0
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    .line 102
    .local v1, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    invoke-virtual {p0}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 103
    const-string v2, "/"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    .line 105
    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 107
    return-object v2
.end method

.method public static getFallbackList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "mayFilterByType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "mayFilterByOriginPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation

    .line 81
    const-string v0, "miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p2}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "originName":Ljava/lang/String;
    sget-object v1, Lmiui/content/res/ThemeCompatibility;->MIUI_OPTIMIZATION_FALLBACK:Ljava/util/Map;

    invoke-static {p1, v0}, Lmiui/content/res/ThemeCompatibility;->combineFallbackInfoKey(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 85
    .end local v0    # "originName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_FALLBACKS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getNewDefaultValueList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lmiui/content/res/ThemeCompatibility;->COMPATIBILITY_DEFAULTVALUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static isCompatibleResource(Ljava/lang/String;)Z
    .locals 2
    .param p0, "resourceThemePath"    # Ljava/lang/String;

    .line 119
    const-string v0, "/data/system/theme/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/compatibility-v10/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isThemeEnabled()Z
    .locals 1

    .line 111
    sget-boolean v0, Lmiui/content/res/ThemeCompatibility;->sThemeEnabled:Z

    return v0
.end method
