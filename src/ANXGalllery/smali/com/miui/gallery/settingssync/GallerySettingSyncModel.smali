.class public Lcom/miui/gallery/settingssync/GallerySettingSyncModel;
.super Ljava/lang/Object;
.source "GallerySettingSyncModel.java"

# interfaces
.implements Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;


# instance fields
.field private final mRepository:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;)V
    .locals 0
    .param p1, "repository"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->mRepository:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    .line 25
    return-void
.end method

.method private convertSettingToJSON(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "syncableSetting"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 117
    .local v0, "enabled":Ljava/lang/Boolean;
    invoke-interface {p1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 119
    const/4 v1, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-interface {p1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    if-eqz v0, :cond_2

    .line 124
    const-string v3, "enable"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_2
    if-eqz v2, :cond_0

    .line 127
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private findSettingByName(Ljava/util/List;Ljava/lang/String;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    .locals 3
    .param p2, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "syncableSettings":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;

    .line 164
    .local v0, "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    invoke-interface {v0}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    .end local v0    # "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveJSONToSetting(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "syncableSetting"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "isEnabled":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 153
    .local v1, "value":Ljava/lang/String;
    const-string v2, "enable"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "enable"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    :cond_0
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_1
    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->writeValue(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method private saveJSONToSettings(Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 5
    .param p2, "settings"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "syncableSettings":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 147
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 138
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 139
    .local v3, "settingItem":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->findSettingByName(Ljava/util/List;Ljava/lang/String;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;

    move-result-object v2

    .line 142
    .local v2, "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    if-eqz v2, :cond_2

    .line 143
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->saveJSONToSetting(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;Lorg/json/JSONObject;)V

    .line 137
    .end local v2    # "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getUploadSettings()Lorg/json/JSONObject;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 45
    iget-object v10, p0, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->mRepository:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    invoke-interface {v10}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;->getSyncableSettings()Ljava/util/List;

    move-result-object v8

    .line 46
    .local v8, "syncableSettings":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;>;"
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 47
    const-string v10, "GallerySettingSyncModel"

    const-string v11, "No syncable settings found!"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    .line 87
    :cond_0
    :goto_0
    return-object v7

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    .local v1, "exportSettings":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 55
    .local v3, "extraSettings":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    move-object v4, v3

    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .local v4, "extraSettings":Lorg/json/JSONArray;
    move-object v2, v1

    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .local v2, "exportSettings":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;

    .line 56
    .local v5, "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    invoke-direct {p0, v5}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->convertSettingToJSON(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;)Lorg/json/JSONObject;

    move-result-object v6

    .line 57
    .local v6, "settingJSON":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 60
    invoke-interface {v5}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;->isExport()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 61
    if-nez v2, :cond_8

    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .end local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v1    # "exportSettings":Lorg/json/JSONArray;
    :goto_2
    :try_start_2
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v3    # "extraSettings":Lorg/json/JSONArray;
    :goto_3
    move-object v4, v3

    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .restart local v4    # "extraSettings":Lorg/json/JSONArray;
    move-object v2, v1

    .line 71
    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .restart local v2    # "exportSettings":Lorg/json/JSONArray;
    goto :goto_1

    .line 66
    :cond_3
    if-nez v4, :cond_7

    .line 67
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    .end local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v3    # "extraSettings":Lorg/json/JSONArray;
    :goto_4
    :try_start_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    .end local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v1    # "exportSettings":Lorg/json/JSONArray;
    goto :goto_3

    .line 73
    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .end local v5    # "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    .end local v6    # "settingJSON":Lorg/json/JSONObject;
    .restart local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v4    # "extraSettings":Lorg/json/JSONArray;
    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    move-object v7, v9

    .line 74
    goto :goto_0

    .line 76
    :cond_5
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v7, "settings":Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 78
    const-string v10, "itemList"

    invoke-virtual {v7, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_6
    if-eqz v4, :cond_0

    .line 81
    const-string v10, "extraConfig"

    invoke-virtual {v7, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 84
    .end local v7    # "settings":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v3    # "extraSettings":Lorg/json/JSONArray;
    move-object v1, v2

    .line 85
    .end local v2    # "exportSettings":Lorg/json/JSONArray;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v1    # "exportSettings":Lorg/json/JSONArray;
    :goto_5
    const-string v10, "GallerySettingSyncModel"

    const-string v11, "Failed form settings to JSONObject, %s"

    invoke-static {v10, v11, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v9

    .line 87
    goto :goto_0

    .line 84
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .restart local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v5    # "setting":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;
    .restart local v6    # "settingJSON":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v3    # "extraSettings":Lorg/json/JSONArray;
    goto :goto_5

    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .restart local v2    # "exportSettings":Lorg/json/JSONArray;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v1    # "exportSettings":Lorg/json/JSONArray;
    goto :goto_5

    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .restart local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v4    # "extraSettings":Lorg/json/JSONArray;
    :cond_7
    move-object v3, v4

    .end local v4    # "extraSettings":Lorg/json/JSONArray;
    .restart local v3    # "extraSettings":Lorg/json/JSONArray;
    goto :goto_4

    .end local v3    # "extraSettings":Lorg/json/JSONArray;
    .restart local v4    # "extraSettings":Lorg/json/JSONArray;
    :cond_8
    move-object v1, v2

    .end local v2    # "exportSettings":Lorg/json/JSONArray;
    .restart local v1    # "exportSettings":Lorg/json/JSONArray;
    goto :goto_2
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->isFirstUploadComplete()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDirty(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 36
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->markDirty(Z)V

    .line 37
    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->isFirstUploadComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->setFirstUploadComplete()V

    .line 39
    const-string v0, "GallerySettingSyncModel"

    const-string v1, "First setting upload complete"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onDownloadSettings(Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string v5, "GallerySettingSyncModel"

    const-string v6, "No download settings received!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v4

    .line 97
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->mRepository:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    invoke-interface {v5}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;->getSyncableSettings()Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "syncableSettings":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncableSetting;>;"
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    const-string v5, "GallerySettingSyncModel"

    const-string v6, "No syncable settings found!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    :try_start_0
    const-string v5, "itemList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 105
    .local v1, "exportSettings":Lorg/json/JSONArray;
    const-string v5, "extraConfig"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 106
    .local v2, "extraSettings":Lorg/json/JSONArray;
    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->saveJSONToSettings(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 107
    invoke-direct {p0, v3, v2}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;->saveJSONToSettings(Ljava/util/List;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v1    # "exportSettings":Lorg/json/JSONArray;
    .end local v2    # "extraSettings":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "GallerySettingSyncModel"

    const-string v5, "Failed save settings from JSONObject, %s"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const/4 v4, 0x0

    goto :goto_0
.end method
