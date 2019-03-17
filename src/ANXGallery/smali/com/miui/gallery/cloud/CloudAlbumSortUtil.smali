.class public Lcom/miui/gallery/cloud/CloudAlbumSortUtil;
.super Ljava/lang/Object;
.source "CloudAlbumSortUtil.java"


# static fields
.field private static sPref:Landroid/content/SharedPreferences;


# direct methods
.method private static sGetDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/miui/gallery/cloud/CloudAlbumSortUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cloud_album_sort_factor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudAlbumSortUtil;->sPref:Landroid/content/SharedPreferences;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudAlbumSortUtil;->sPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static sRemoveCloudAlbumSortByFactor()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/gallery/cloud/CloudAlbumSortUtil;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method
