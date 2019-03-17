.class public Lcom/miui/gallery/preference/GalleryPreferences$DataBase;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBase"
.end annotation


# direct methods
.method public static getEverFixedCameraAlbumAttributes()Z
    .locals 2

    .prologue
    .line 917
    const-string v0, "ever_update_camera_album_attributes"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getViewVerison(Ljava/lang/String;)I
    .locals 4
    .param p0, "viewName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 925
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "view_version_prefix_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setEverFixedCameraAlbumAttributes()V
    .locals 2

    .prologue
    .line 921
    const-string v0, "ever_update_camera_album_attributes"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 922
    return-void
.end method

.method public static setViewVersion(Ljava/lang/String;I)V
    .locals 4
    .param p0, "viewName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 929
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "view_version_prefix_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 930
    return-void
.end method
