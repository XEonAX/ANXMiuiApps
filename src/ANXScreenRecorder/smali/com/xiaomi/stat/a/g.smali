.class Lcom/xiaomi/stat/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 325
    const/4 v8, 0x0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 331
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 332
    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 336
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 337
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 340
    const-string v3, "ts < ? and e != ?"

    .line 342
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "mistat_delete_event"

    aput-object v2, v4, v1

    .line 344
    const-string v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ts"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ts ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 351
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 352
    if-eqz v1, :cond_4

    .line 354
    new-instance v7, Lcom/xiaomi/stat/H;

    invoke-direct {v7}, Lcom/xiaomi/stat/H;-><init>()V

    .line 355
    const-string v2, "ca"

    invoke-virtual {v7, v2, v1}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v2, "EventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete obsolete events total number "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "ts"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 359
    const/4 v5, 0x0

    .line 360
    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 363
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 364
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 365
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 366
    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 367
    const-string v12, "%4d%02d%02d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v14

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v2

    const/4 v2, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 369
    if-eqz v5, :cond_0

    .line 370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "c_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v1}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 375
    :cond_0
    const/4 v1, 0x1

    :goto_1
    move-object v5, v2

    .line 379
    goto :goto_0

    .line 377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v5

    goto :goto_1

    .line 380
    :cond_2
    if-eqz v5, :cond_3

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "c_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Lcom/xiaomi/stat/H;->putInt(Ljava/lang/String;I)V

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/H;)Lcom/xiaomi/stat/a/l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    .line 387
    const-string v1, "events"

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 393
    :cond_4
    if-eqz v6, :cond_5

    .line 394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_5
    :goto_2
    return-void

    .line 390
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 391
    :goto_3
    :try_start_2
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove obsolete events failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    if-eqz v1, :cond_5

    .line 394
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 393
    :catchall_0
    move-exception v0

    move-object v6, v8

    :goto_4
    if-eqz v6, :cond_6

    .line 394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 393
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    .line 390
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method
