.class public Lcom/miui/gallery/preference/GalleryPreferences$Favorites;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Favorites"
.end annotation


# direct methods
.method public static isFirstTimeAddToFavorites()Z
    .locals 3

    .prologue
    .line 1170
    const-string v1, "first_time_add_to_favorites"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1171
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 1172
    const-string v1, "first_time_add_to_favorites"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1174
    :cond_0
    return v0
.end method
