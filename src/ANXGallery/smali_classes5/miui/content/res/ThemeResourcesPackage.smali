.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 0
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 74
    return-void
.end method

.method private static allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 2

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 186
    .local v1, "myUid":I
    if-eqz v1, :cond_0

    .line 187
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 190
    :cond_0
    return-object v0
.end method

.method public static getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 32
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 33
    .local v1, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lmiui/content/res/ThemeResourcesPackage;

    .line 36
    :cond_0
    if-nez v1, :cond_3

    .line 37
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v1

    .line 38
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :try_start_0
    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/res/ThemeResourcesPackage;

    move-object v3, v4

    .line 43
    :cond_1
    if-nez v3, :cond_2

    .line 44
    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v3

    .line 49
    .end local v3    # "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 52
    :cond_3
    :goto_1
    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    return-object v1
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->needProvisionTheme()Z

    move-result v1

    .line 59
    .local v1, "needProvisionTheme":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 60
    if-nez v1, :cond_0

    const-string v3, "/system/media/theme/provision/"

    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    goto :goto_1

    .line 63
    :cond_0
    new-instance v3, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v4, v4, v2

    invoke-direct {v3, v0, p0, p1, v4}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v3

    .line 59
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/content/res/ThemeResourcesPackage;->setNightModeEnable(Z)V

    .line 68
    :cond_2
    return-object v0
.end method

.method private loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "fallback"    # Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 107
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v0, v1, :cond_0

    const-string v0, "miui"

    iget-object v1, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 112
    .local v0, "backupCookie":I
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 113
    .local v1, "backupPath":Ljava/lang/String;
    sget v2, Lmiui/content/res/ThemeResourcesPackage;->sCookieMiuiFramework:I

    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 114
    iget-object v2, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    .line 116
    .local v2, "result":Z
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 117
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 118
    return v2

    .line 120
    .end local v0    # "backupCookie":I
    .end local v1    # "backupPath":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 7
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 124
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "miui"

    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_1

    .line 130
    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 131
    .local v2, "backup":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 132
    .local v4, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v5, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v6, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 135
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v5

    .line 136
    .local v5, "result":Z
    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 137
    if-eqz v5, :cond_0

    .line 138
    return v1

    .line 141
    .end local v4    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v5    # "result":Z
    :cond_0
    goto :goto_0

    .line 145
    .end local v0    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v2    # "backup":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "result":Z
    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 147
    .local v2, "path":Ljava/lang/String;
    sget v3, Lmiui/content/res/ThemeResourcesPackage;->sCookieFramework:I

    iget v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v3, v4, :cond_2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-super {p0, p1, v3, v4}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 150
    :cond_2
    iget v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v3}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-miui-res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    const-string v4, "miui"

    invoke-super {p0, p1, v3, v4}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 154
    :cond_3
    :goto_1
    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 155
    if-eqz v0, :cond_4

    .line 156
    const-string v3, "package/only"

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 157
    return v1

    .line 161
    .end local v0    # "result":Z
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p0, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 194
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 195
    .local v0, "myUid":I
    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 78
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->isAppResourceCookie(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 83
    :cond_1
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_3

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 86
    .local v4, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v4}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    return v1

    .line 89
    .end local v4    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_2
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lmiui/content/res/ThemeResourcesPackage;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 93
    .local v4, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    iget-object v5, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    iget-boolean v6, p0, Lmiui/content/res/ThemeResourcesPackage;->mNightMode:Z

    invoke-virtual {v4, v5, v6}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    iget-object v5, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "originName":Ljava/lang/String;
    iget-object v6, v4, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v6, v6, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 96
    .local v6, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v6}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    return v1

    .line 100
    .end local v4    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v5    # "originName":Ljava/lang/String;
    .end local v6    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_4
    goto :goto_1

    .line 101
    :cond_5
    return v2

    .line 103
    .end local v0    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    :cond_6
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 2
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 167
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 169
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-boolean v1, p0, Lmiui/content/res/ThemeResourcesPackage;->mIsTop:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 175
    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 176
    return-void
.end method
