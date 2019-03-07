.class Lcom/xiaomi/stat/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/stat/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/A;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xiaomi/stat/D;->c:Lcom/xiaomi/stat/A;

    iput-object p2, p0, Lcom/xiaomi/stat/D;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/stat/D;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 221
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/D;->c:Lcom/xiaomi/stat/A;

    invoke-static {v0}, Lcom/xiaomi/stat/A;->a(Lcom/xiaomi/stat/A;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/xiaomi/stat/D;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "pref"

    const-string v2, "pref_key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/stat/D;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-eqz v8, :cond_0

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    :try_start_1
    const-string v1, "pref"

    const/4 v2, 0x0

    const-string v3, "pref_key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/stat/D;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 233
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v9

    .line 237
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 238
    const-string v4, "pref_key"

    iget-object v5, p0, Lcom/xiaomi/stat/D;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "pref_value"

    iget-object v5, p0, Lcom/xiaomi/stat/D;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz v2, :cond_2

    .line 241
    const-string v2, "pref"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    :goto_2
    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 243
    :cond_2
    :try_start_3
    const-string v2, "pref"

    const-string v4, "pref_key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/stat/D;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :goto_3
    :try_start_4
    const-string v2, "MiStatPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update pref db failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_3

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 249
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 246
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :cond_4
    move v2, v10

    goto :goto_1
.end method
