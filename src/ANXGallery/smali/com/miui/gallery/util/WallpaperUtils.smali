.class public Lcom/miui/gallery/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static sWallpagerPackage:Ljava/lang/String;


# direct methods
.method private static resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWallPapers(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/miui/gallery/util/WallpaperUtils;->supported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v1, "WallpaperUtils"

    const-string v2, "set wallpaper not supported"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    const-string v2, "com.android.thememanager"

    if-ne v1, v2, :cond_1

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    const-string v1, "Wallpaper_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.home"

    const-string v3, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    const-string v1, "Wallpaper_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static supported(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 28
    sget-object v3, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 29
    sget-object v3, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    const-string v3, "miui.intent.action.START_WALLPAPER_DETAIL"

    const-string v4, "com.android.thememanager"

    const-string v5, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 36
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 37
    const-string v2, "com.android.thememanager"

    sput-object v2, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    const-string v3, "android.intent.action.ATTACH_DATA"

    const-string v4, "com.miui.home"

    const-string v5, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    invoke-static {p0, v3, v4, v5}, Lcom/miui/gallery/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    const-string v2, "com.miui.home"

    sput-object v2, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_3
    const-string v1, ""

    sput-object v1, Lcom/miui/gallery/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    move v1, v2

    .line 48
    goto :goto_0
.end method
