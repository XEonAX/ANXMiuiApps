.class public Lcom/miui/gallery/settingsbackup/GallerySettingsBackupHelper;
.super Ljava/lang/Object;
.source "GallerySettingsBackupHelper.java"


# direct methods
.method public static final backupToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences;->getAutoBackupPrefKeys()Ljava/util/List;

    move-result-object v3

    .line 22
    .local v3, "prefKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 24
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupHelper;->savePrefEntry(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "GallerySettingsBackupHelper"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v1
.end method

.method public static final restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences;->getAutoBackupPrefKeys()Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, "prefKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupHelper;->restorePrefEntry(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 43
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "prefKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static restorePrefEntry(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 56
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 61
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 65
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 68
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 69
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 72
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static savePrefEntry(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    return-void
.end method
