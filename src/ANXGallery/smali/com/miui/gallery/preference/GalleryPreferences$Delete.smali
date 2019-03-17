.class public Lcom/miui/gallery/preference/GalleryPreferences$Delete;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delete"
.end annotation


# direct methods
.method private static isFirstDelete(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 829
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 830
    .local v0, "isFirst":Z
    if-eqz v0, :cond_0

    .line 831
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 833
    :cond_0
    return v0
.end method

.method public static isFirstDeleteFromAlbum()Z
    .locals 1

    .prologue
    .line 825
    const-string v0, "first_delete_from_album"

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Delete;->isFirstDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstDeleteFromHomePage()Z
    .locals 1

    .prologue
    .line 821
    const-string v0, "first_delete_from_homepage"

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Delete;->isFirstDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
