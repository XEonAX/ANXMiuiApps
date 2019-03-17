.class public Lcom/miui/gallery/util/SlideWallpaperUtils;
.super Ljava/lang/Object;
.source "SlideWallpaperUtils.java"


# direct methods
.method public static setSlideWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/SlideWallpaperUtils;->supported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.mfashiongallery.emag&back=true&ref=MiuiGallery&startDownload=true"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 25
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 27
    .local v3, "providerUri":Landroid/net/Uri;
    const-string v4, "mifg://fashiongallery/addcw?from=MiuiGallery"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "uri"

    .line 29
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "sha1"

    .line 30
    invoke-virtual {v4, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 32
    .local v2, "intentUri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    const-string v4, "com.mfashiongallery.emag"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentUri":Landroid/net/Uri;
    .end local v3    # "providerUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "SlideWallpaperUtils"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const-string v4, "photo"

    const-string/jumbo v5, "set_slide_wallpaper_fail"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static supported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "mifg://fashiongallery/addcw?uri=/DCIM/Camera/IMG.jpg&from=test"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 49
    :cond_0
    return v1
.end method
