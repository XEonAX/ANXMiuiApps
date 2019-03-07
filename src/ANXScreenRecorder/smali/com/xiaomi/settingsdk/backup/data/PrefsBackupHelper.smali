.class public Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper;
.super Ljava/lang/Object;
.source "PrefsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrefsBackupHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backup(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 9
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p2, "entries"    # [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .prologue
    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 77
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v0, p2

    .local v0, "arr$":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 78
    .local v1, "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 79
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 81
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference type of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mismatched. actual type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v1    # "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public static restore(Landroid/content/SharedPreferences;Lcom/xiaomi/settingsdk/backup/data/DataPackage;[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 12
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p2, "entries"    # [Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;

    .prologue
    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 95
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v0, p2

    .local v0, "arr$":[Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v3, v0, v4

    .line 97
    .local v3, "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    :try_start_0
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    .line 98
    .local v5, "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    if-eqz v5, :cond_4

    .line 99
    invoke-virtual {v5}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 100
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_1

    .line 101
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    .end local v5    # "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .restart local v5    # "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_2

    .line 103
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    .end local v5    # "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v8, "PrefsBackupHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entry "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not KeyStringSettingItem"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_3

    .line 105
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    .line 107
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 110
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 116
    .end local v3    # "entry":Lcom/xiaomi/settingsdk/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v5    # "item":Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method
