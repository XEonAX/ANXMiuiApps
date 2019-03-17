.class public Lcom/miui/gallery/util/PreferenceCleaner;
.super Ljava/lang/Object;
.source "PreferenceCleaner.java"


# direct methods
.method public static clean()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/miui/gallery/util/PreferenceCleaner;->transferOldPreference()V

    .line 10
    return-void
.end method

.method private static transferOldPreference()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 13
    const-string v11, "old_preferences_transfered"

    invoke-static {v11, v10}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 50
    .local v0, "canConnectNetwork":Z
    .local v1, "faceSwitchPending":Z
    .local v2, "faceStatusNextCheckTime":J
    .local v4, "interval":I
    .local v5, "onlySyncInWifi":Z
    .local v6, "remindNever":Z
    .local v7, "showHiddenAlbum":Z
    .local v8, "urlForQueuing":Ljava/lang/String;
    .local v9, "urlForWaiting":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 16
    .end local v0    # "canConnectNetwork":Z
    .end local v1    # "faceSwitchPending":Z
    .end local v2    # "faceStatusNextCheckTime":J
    .end local v4    # "interval":I
    .end local v5    # "onlySyncInWifi":Z
    .end local v6    # "remindNever":Z
    .end local v7    # "showHiddenAlbum":Z
    .end local v8    # "urlForQueuing":Ljava/lang/String;
    .end local v9    # "urlForWaiting":Ljava/lang/String;
    :cond_1
    const-string v11, "old_preferences_transfered"

    invoke-static {v11, v6}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetSlideshowInterval()I

    move-result v11

    div-int/lit16 v4, v11, 0x3e8

    .line 20
    .restart local v4    # "interval":I
    const/4 v11, 0x3

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0xe10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v11}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->setSlideShowInterval(I)V

    .line 23
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsShowHidden()Z

    move-result v7

    .line 24
    .restart local v7    # "showHiddenAlbum":Z
    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;->setShowHiddenAlbum(Z)V

    .line 26
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sOnlySyncInWifi()Z

    move-result v5

    .line 27
    .restart local v5    # "onlySyncInWifi":Z
    invoke-static {v5}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setBackupOnlyInWifi(Z)V

    .line 29
    const-string v11, "cloud_face_status"

    invoke-static {v11}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetCloudFaceStatusNextCheckTime()J

    move-result-wide v2

    .line 32
    .restart local v2    # "faceStatusNextCheckTime":J
    const-string v11, "cloud_face_status_retry_time"

    invoke-static {v11, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 35
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceFeaturePending()Z

    move-result v1

    .line 36
    .restart local v1    # "faceSwitchPending":Z
    const-string v11, "face_feature_switch_pending"

    invoke-static {v11, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceUrlForQueuing()Ljava/lang/String;

    move-result-object v8

    .line 40
    .restart local v8    # "urlForQueuing":Ljava/lang/String;
    const-string v11, "face_url_for_queuing"

    invoke-static {v11, v8}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetFaceUrlForWaiting()Ljava/lang/String;

    move-result-object v9

    .line 43
    .restart local v9    # "urlForWaiting":Ljava/lang/String;
    const-string v11, "face_url_for_waiting"

    invoke-static {v11, v9}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sCanConnectNetworkByImpunity()Z

    move-result v0

    .line 46
    .restart local v0    # "canConnectNetwork":Z
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetImpunityDeclarationEveryTime()Z

    move-result v11

    if-nez v11, :cond_2

    .line 47
    .restart local v6    # "remindNever":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 48
    invoke-static {v6}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectNetwork(Z)V

    goto :goto_0

    .end local v6    # "remindNever":Z
    :cond_2
    move v6, v10

    .line 46
    goto :goto_1
.end method
