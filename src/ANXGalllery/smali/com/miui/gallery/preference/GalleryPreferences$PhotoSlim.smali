.class public Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoSlim"
.end annotation


# direct methods
.method public static isFirstUsePhotoSlim()Z
    .locals 2

    .prologue
    .line 1184
    const-string v0, "photo_slim_first_use"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setIsFirstUsePhotoSlim(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "isFirst"    # Ljava/lang/Boolean;

    .prologue
    .line 1180
    const-string v0, "photo_slim_first_use"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1181
    return-void
.end method
