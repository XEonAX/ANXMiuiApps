.class public Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenAlbum"
.end annotation


# direct methods
.method public static isShowHiddenAlbum()Z
    .locals 2

    .prologue
    .line 951
    const-string/jumbo v0, "show_hidden_album"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setShowHiddenAlbum(Z)V
    .locals 1
    .param p0, "show"    # Z

    .prologue
    .line 955
    const-string/jumbo v0, "show_hidden_album"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    return-void
.end method
