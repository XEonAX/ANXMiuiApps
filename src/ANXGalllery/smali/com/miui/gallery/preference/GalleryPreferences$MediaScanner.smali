.class public Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaScanner"
.end annotation


# direct methods
.method public static getEverCleanUnsupportUploadItems()Z
    .locals 2

    .prologue
    .line 852
    const-string v0, "ever_clean_unsupport_upload_items"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLastImagesScanTime()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 876
    const-string v2, "last_images_scan_time"

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 877
    .local v0, "ret":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 879
    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastImagesScanTime(J)V

    .line 881
    :cond_0
    return-wide v0
.end method

.method public static getLastVideosScanTime()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 885
    const-string v2, "last_videos_scan_time"

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 886
    .local v0, "ret":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 888
    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;->setLastVideosScanTime(J)V

    .line 890
    :cond_0
    return-wide v0
.end method

.method public static isEverFillSpecialTypeFlags()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 868
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ever_fill_special_type_flags_v%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEverRestoreSecretItems()Z
    .locals 2

    .prologue
    .line 860
    const-string v0, "ever_restore_secret_items"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setEverCleanUnsupportUploadItems()V
    .locals 2

    .prologue
    .line 856
    const-string v0, "ever_clean_unsupport_upload_items"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    return-void
.end method

.method public static setEverFillSpecialTypeFlags()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 872
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ever_fill_special_type_flags_v%d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 873
    return-void
.end method

.method public static setHasRestoredSecretItems()V
    .locals 2

    .prologue
    .line 864
    const-string v0, "ever_restore_secret_items"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    return-void
.end method

.method public static setLastImagesScanTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 894
    const-string v0, "last_images_scan_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 895
    return-void
.end method

.method public static setLastVideosScanTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 898
    const-string v0, "last_videos_scan_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 899
    return-void
.end method
