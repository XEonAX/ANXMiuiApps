.class public Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSync"
.end annotation


# direct methods
.method public static isDirty()Z
    .locals 2

    .prologue
    .line 1224
    const-string/jumbo v0, "settings_sync_is_dirty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFirstUploadComplete()Z
    .locals 2

    .prologue
    .line 1232
    const-string/jumbo v0, "settings_sync_first_upload_complete"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static markDirty(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 1228
    const-string/jumbo v0, "settings_sync_is_dirty"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1229
    return-void
.end method

.method public static remove()V
    .locals 1

    .prologue
    .line 1240
    const-string/jumbo v0, "settings_sync_is_dirty"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v0, "settings_sync_first_upload_complete"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method public static setFirstUploadComplete()V
    .locals 2

    .prologue
    .line 1236
    const-string/jumbo v0, "settings_sync_first_upload_complete"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1237
    return-void
.end method
