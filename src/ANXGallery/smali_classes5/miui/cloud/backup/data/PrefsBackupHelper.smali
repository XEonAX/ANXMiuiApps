.class public Lmiui/cloud/backup/data/PrefsBackupHelper;
.super Ljava/lang/Object;
.source "PrefsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrefsBackupHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backup(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p2, "entries"    # [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p2, v1

    .line 78
    .local v3, "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 86
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lmiui/cloud/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preference type of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mismatched. actual type = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", expected type = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 88
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lmiui/cloud/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v3    # "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_3
    return-void
.end method

.method public static restore(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 9
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p2, "entries"    # [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    .line 97
    .local v3, "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    :try_start_0
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmiui/cloud/backup/data/DataPackage;->get(Ljava/lang/String;)Lmiui/cloud/backup/data/SettingItem;

    move-result-object v4

    check-cast v4, Lmiui/cloud/backup/data/KeyStringSettingItem;

    .line 98
    .local v4, "item":Lmiui/cloud/backup/data/KeyStringSettingItem;
    if-eqz v4, :cond_4

    .line 99
    invoke-virtual {v4}, Lmiui/cloud/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_0

    .line 101
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    if-ne v6, v7, :cond_1

    .line 103
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_2

    .line 105
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_3

    .line 107
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v4    # "item":Lmiui/cloud/backup/data/KeyStringSettingItem;
    :goto_2
    goto :goto_3

    .line 112
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/ClassCastException;
    const-string v5, "PrefsBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not KeyStringSettingItem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v3    # "entry":Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 116
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method
