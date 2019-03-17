.class public Lcom/miui/gallery/util/deprecated/Preference;
.super Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;
.source "Preference.java"


# direct methods
.method public static createAutoUploadAlbumPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "albumKey"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto_upload_album_preference_key_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_multi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSyncFetchAllPrivateData()Z
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sync_fetch_all_private_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSyncFetchSyncExtraInfoFromV2ToV3()Z
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sync_fetch_syncextreinfo_from_v2_to_v3"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSyncShouldClearDataBase()Z
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sync_should_clean_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isAutoUploadAlbumPreferenceKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "auto_upload_album_preference_key_prefix_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sGetCloudFaceStatusNextCheckTime()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cloud_face_status_retry_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static sGetCloudGalleryRecyclebinFull()Z
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cloud_gallery_recyclebin_full"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sGetCloudGallerySpaceFull()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloud_gallery_space_full_time"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 132
    .local v2, "spaceFullTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    .local v0, "now":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "cloud_gallery_space_full"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method

.method public static sGetFaceFeaturePending()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_feature_switch_pending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sGetFaceUrlForQueuing()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_url_for_queuing"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sGetFaceUrlForWaiting()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_url_for_waiting"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sGetFilterMinSize()J
    .locals 6

    .prologue
    .line 222
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "minSize":J
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "filter_min_size"

    .line 225
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 227
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-wide v2

    .line 226
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static sGetImpunityDeclarationEveryTime()Z
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "impunity_declaration_every_time"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sGetIsAlbumAutoUploadOpen(Ljava/lang/String;)Z
    .locals 3
    .param p0, "albumKey"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    invoke-static {p0}, Lcom/miui/gallery/util/deprecated/Preference;->createAutoUploadAlbumPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 234
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sGetIsScreenShotAutoUploadOpen()Z
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto-upload-screenshot"

    .line 240
    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->createAutoUploadAlbumPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 239
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sGetSlideshowInterval()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x2

    .line 72
    .local v0, "interval":I
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "slideshow_interval"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static sHaveCheckBabyForNewService(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-static {p0}, Lcom/miui/gallery/util/deprecated/Preference;->getMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "have_check_baby_for_new_face_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sIsFirstSynced()Z
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_synced"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sIsInternationalAccount()I
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_international_account"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sIsShowHidden()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sOnlySyncInWifi()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sync_only_in_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sRemoveCloudSettings()V
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_slowscan_time"

    .line 184
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cloud_gallery_space_full"

    .line 185
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cloud_gallery_recyclebin_full"

    .line 186
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "sync_only_in_wifi"

    .line 187
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "sync_fetch_syncextreinfo_from_v2_to_v3"

    .line 188
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "sync_fetch_all_private_data"

    .line 189
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_synced"

    .line 190
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "is_international_account"

    .line 191
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cloud_face_status"

    .line 192
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cloud_face_status_retry_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "face_feature_switch_pending"

    .line 193
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "face_url_for_waiting"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "face_url_for_queuing"

    .line 194
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "micloud_vip_level"

    .line 195
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "has_ever_synced_system_album"

    .line 196
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 197
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/deprecated/Preference;->isAutoUploadAlbumPreferenceKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 205
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public static sSetCloudGalleryRecyclebinFull(Z)V
    .locals 2
    .param p0, "isFull"    # Z

    .prologue
    .line 140
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_gallery_recyclebin_full"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public static sSetCloudGallerySpaceFull(Z)V
    .locals 4
    .param p0, "isFull"    # Z

    .prologue
    .line 124
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_gallery_space_full"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_gallery_space_full_time"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public static sSetFirstSynced()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_synced"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public static sSetHaveCheckBabyForNewService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-static {p0}, Lcom/miui/gallery/util/deprecated/Preference;->getMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "have_check_baby_for_new_face_service"

    const/4 v2, 0x1

    .line 277
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public static sSetIsInternationalAccount(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 148
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_international_account"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    return-void
.end method

.method public static sSetLastSlowScanTime(J)V
    .locals 2
    .param p0, "lastTime"    # J

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_slowscan_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    return-void
.end method

.method public static setDBUpgradeTo42()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "database_upgrade_to_42_clean_data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method

.method public static setSyncFetchAllPrivateData()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_fetch_all_private_data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public static setSyncFetchSyncExtraInfoFromV2ToV3(Z)V
    .locals 2
    .param p0, "fetch"    # Z

    .prologue
    .line 112
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_fetch_syncextreinfo_from_v2_to_v3"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method

.method public static setSyncRetryTimes(I)V
    .locals 3
    .param p0, "times"    # I

    .prologue
    .line 165
    const-string v0, "Preference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncRetryTimes, times="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_retry_times"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public static setSyncShouldClearDataBase(Z)V
    .locals 2
    .param p0, "shouldClear"    # Z

    .prologue
    .line 161
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_should_clean_data"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method
