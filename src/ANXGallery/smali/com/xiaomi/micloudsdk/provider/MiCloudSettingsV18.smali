.class final Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;
.super Ljava/lang/Object;
.source "MiCloudSettingsV18.java"


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field private static final NEED_CATCH_EXCEPTION_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->NEED_CATCH_EXCEPTION_PACKAGES:Ljava/util/HashSet;

    .line 19
    const-string v0, "content://com.xiaomi.micloudsdk.provider.MiCloudSettingsProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->BASE_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->NEED_CATCH_EXCEPTION_PACKAGES:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "valueString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 75
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 74
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 109
    const/4 v6, 0x0

    .line 113
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x3

    .line 114
    .local v9, "retryTimes":I
    const/4 v8, 0x0

    .line 115
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_0
    if-nez v6, :cond_4

    move-object v0, v10

    .line 127
    :goto_1
    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v0

    .line 131
    :cond_2
    :goto_2
    return-object v10

    .line 120
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    const-string v0, "MiCloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 123
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v7

    .line 125
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MiCloudSettings"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 127
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, "toInsert":Landroid/content/ContentValues;
    const-string v1, "micloud_settings_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "micloud_settings_value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/xiaomi/micloudsdk/provider/MiCloudSettingsV18;->BASE_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/utils/SafeContentResolver;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
