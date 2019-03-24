.class public final Lmiui/content/res/ThemeResourcesSystem;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance/"

.field private static sIcons:Lmiui/content/res/ThemeResources;

.field private static sLockscreen:Lmiui/content/res/ThemeResources;

.field private static sMiui:Lmiui/content/res/ThemeResources;

.field private static sUpdatedTimeIcon:J

.field private static sUpdatedTimeLockscreen:J


# instance fields
.field private mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .locals 1
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 68
    iget-object v0, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "name"    # Ljava/lang/String;

    .line 170
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 173
    .local v0, "density":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 174
    .local v1, "screenWidthDp":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res/drawable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 177
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 178
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 179
    return v3

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/drawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 182
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    return v3

    .line 187
    :cond_2
    iput-object p2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 188
    const/16 v2, 0xf0

    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 189
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    return v2
.end method

.method private getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 105
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "sym_def_app_icon.png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "sym_def_app_icon.png"

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 110
    :cond_1
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "default_wallpaper.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    return v1

    .line 114
    :cond_2
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/MiuiResources;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    const/4 v1, 0x1

    sput-boolean v1, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    .line 32
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 33
    const-string v2, "icons"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 34
    const-string v2, "lockscreen"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 35
    const-string v2, "framework-miui-res"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 37
    invoke-static {}, Lmiui/content/res/ThemeResourcesSystem;->needProvisionTheme()Z

    move-result v2

    .line 38
    .local v2, "needProvisionTheme":Z
    move-object v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    :goto_0
    sget-object v5, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 39
    if-nez v2, :cond_0

    const-string v5, "/system/media/theme/provision/"

    sget-object v6, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v6, v6, v0

    iget-object v6, v6, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    new-instance v5, Lmiui/content/res/ThemeResourcesSystem;

    const-string v6, "framework-res"

    sget-object v7, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v7, v7, v0

    invoke-direct {v5, v4, p0, v6, v7}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v4, v5

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    .end local v2    # "needProvisionTheme":Z
    :cond_1
    goto :goto_2

    .line 45
    .end local v4    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    .local v0, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    :cond_2
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 46
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 47
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 48
    new-instance v2, Lmiui/content/res/ThemeResourcesSystem;

    const/4 v4, 0x0

    const-string v5, "FakeForEmpty"

    sget-object v6, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v6, v6, v3

    invoke-direct {v2, v4, p0, v5, v6}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v4, v2

    .line 50
    .end local v0    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    .restart local v4    # "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    :goto_2
    sput-boolean v3, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    .line 51
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v4, v1}, Lmiui/content/res/ThemeResourcesSystem;->setNightModeEnable(Z)V

    .line 54
    :cond_3
    return-object v4
.end method

.method private hasAwesomeLockscreen()Z
    .locals 2

    .line 208
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkUpdate()J
    .locals 6

    .line 72
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    if-nez v0, :cond_2

    .line 73
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 75
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 77
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 78
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    .line 79
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 82
    :cond_0
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 83
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 84
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 85
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme/lockscreen"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 87
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v2

    sput-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 91
    :cond_1
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-wide v4, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 92
    iget-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-object v4, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 95
    .end local v0    # "updatedTime":J
    :cond_2
    iget-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    return-wide v0
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;

    .line 212
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 216
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Z)V

    .line 150
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 152
    :cond_0
    move-object v1, v2

    .line 154
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 155
    if-eqz v1, :cond_1

    .line 156
    iget v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_1
    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 163
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    goto :goto_1

    .line 164
    :catch_1
    move-exception v2

    .line 166
    :goto_1
    return-object v1
.end method

.method public getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 142
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 4

    .line 197
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 199
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lock_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "ret":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    check-cast v2, Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v1

    .line 203
    :cond_0
    return-object v1
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 99
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesSystem;->isMiuiResourceCookie(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 99
    :goto_0
    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .locals 1
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 119
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 120
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 122
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 124
    :cond_0
    return-void
.end method

.method public resetIcons()V
    .locals 1

    .line 127
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 128
    return-void
.end method

.method public resetLockscreen()V
    .locals 1

    .line 134
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 135
    return-void
.end method

.method public setNightModeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 59
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 60
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 61
    return-void
.end method
