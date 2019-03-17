.class public abstract Lcom/miui/gallery/dao/base/EntityManager;
.super Ljava/lang/Object;
.source "EntityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;
    }
.end annotation


# instance fields
.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/dao/base/EntityManager$SQLiteOpenHelperImpl;-><init>(Lcom/miui/gallery/dao/base/EntityManager;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/dao/base/EntityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/dao/base/EntityManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/EntityManager;->initTableList()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/dao/base/EntityManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/dao/base/EntityManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static checkTableChange(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 22
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v3, "allStatement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v9, v6, :cond_7

    .line 457
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/dao/base/Entity;

    .line 458
    .local v8, "entity":Lcom/miui/gallery/dao/base/Entity;
    invoke-virtual {v8}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v16

    .line 459
    .local v16, "tableName":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/miui/gallery/dao/base/Entity;->getTableColumns()Ljava/util/List;

    move-result-object v15

    .line 460
    .local v15, "tableColumns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const/4 v7, 0x0

    .line 462
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v17, "SELECT sql FROM sqlite_master WHERE type=? AND name=?"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "table"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 464
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 465
    .local v12, "sql":Ljava/lang/String;
    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "columns":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v4, v5, v17

    .line 467
    .local v4, "column":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v11, v19, v20

    .line 468
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 469
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/dao/base/TableColumn;>;"
    :cond_0
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 470
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/dao/base/TableColumn;

    .line 471
    .local v14, "tableColumn":Lcom/miui/gallery/dao/base/TableColumn;
    iget-object v0, v14, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 472
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 483
    .end local v4    # "column":Ljava/lang/String;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/dao/base/TableColumn;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "sql":Ljava/lang/String;
    .end local v14    # "tableColumn":Lcom/miui/gallery/dao/base/TableColumn;
    :catchall_0
    move-exception v17

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v17

    .line 466
    .restart local v4    # "column":Ljava/lang/String;
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/dao/base/TableColumn;>;"
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "sql":Ljava/lang/String;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 476
    .end local v4    # "column":Ljava/lang/String;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/dao/base/TableColumn;>;"
    .end local v11    # "name":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/dao/base/TableColumn;

    .line 477
    .restart local v14    # "tableColumn":Lcom/miui/gallery/dao/base/TableColumn;
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/miui/gallery/dao/base/EntityManager;->getAddColumnSql(Ljava/lang/String;Lcom/miui/gallery/dao/base/TableColumn;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 480
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v12    # "sql":Ljava/lang/String;
    .end local v14    # "tableColumn":Lcom/miui/gallery/dao/base/TableColumn;
    :cond_4
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/miui/gallery/dao/base/EntityManager;->getCreateTableSql(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 487
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "entity":Lcom/miui/gallery/dao/base/Entity;
    .end local v15    # "tableColumns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    .end local v16    # "tableName":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 489
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 490
    .local v13, "string":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 494
    .end local v13    # "string":Ljava/lang/String;
    :catchall_1
    move-exception v17

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v17

    .line 492
    :cond_8
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 496
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/dao/base/Entity;

    .line 405
    .local v1, "entity":Lcom/miui/gallery/dao/base/Entity;
    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "tableName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/miui/gallery/dao/base/Entity;->getTableColumns()Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    invoke-static {v2, v0}, Lcom/miui/gallery/dao/base/EntityManager;->getCreateTableSql(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cursorToEntity(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/miui/gallery/dao/base/Entity;
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/dao/base/Entity;

    .line 367
    .local v0, "entity":Lcom/miui/gallery/dao/base/Entity;, "TT;"
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p2}, Lcom/miui/gallery/dao/base/Entity;->initFromCursor(Landroid/database/Cursor;)V

    .line 370
    :cond_0
    return-object v0
.end method

.method public static getAddColumnSql(Ljava/lang/String;Lcom/miui/gallery/dao/base/TableColumn;)Ljava/lang/String;
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "tableColumn"    # Lcom/miui/gallery/dao/base/TableColumn;

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ADD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p1, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/gallery/dao/base/TableColumn;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-boolean v1, p1, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    if-eqz v1, :cond_1

    .line 444
    const-string v1, " UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 445
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/dao/base/TableColumn;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 446
    const-string v1, " DEFAULT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/gallery/dao/base/TableColumn;->defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getConstraintsSelection([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "constraints"    # [Ljava/lang/String;

    .prologue
    .line 374
    if-nez p0, :cond_0

    .line 375
    const/4 v3, 0x0

    .line 386
    :goto_0
    return-object v3

    .line 377
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 379
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 381
    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 383
    :cond_1
    const-string v3, "=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 386
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getCreateTableSql(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/dao/base/TableColumn;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v4, "(_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 418
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/dao/base/TableColumn;

    .line 420
    .local v1, "column":Lcom/miui/gallery/dao/base/TableColumn;
    iget-object v4, v1, Lcom/miui/gallery/dao/base/TableColumn;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/dao/base/TableColumn;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-boolean v4, v1, Lcom/miui/gallery/dao/base/TableColumn;->isUnique:Z

    if-eqz v4, :cond_1

    .line 422
    const-string v4, " UNIQUE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v4, v1, Lcom/miui/gallery/dao/base/TableColumn;->defaultValue:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 424
    const-string v4, " DEFAULT \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/dao/base/TableColumn;->defaultValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 427
    .end local v1    # "column":Lcom/miui/gallery/dao/base/TableColumn;
    :cond_2
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    invoke-static {p0}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/dao/base/Entity;

    .line 359
    .local v0, "entity":Lcom/miui/gallery/dao/base/Entity;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initTableList()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/dao/base/EntityManager;->onInitTableList()V

    goto :goto_0
.end method

.method private static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 390
    if-nez p0, :cond_0

    .line 400
    :goto_0
    return-object v2

    .line 394
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 395
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 396
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 397
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EntityManager"

    const-string v4, "newInstance error.\n"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected addTable(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public delete(Lcom/miui/gallery/dao/base/Entity;)Z
    .locals 12
    .param p1, "entity"    # Lcom/miui/gallery/dao/base/Entity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    :cond_0
    move v3, v4

    .line 155
    :cond_1
    :goto_0
    return v3

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_1
    if-gtz v1, :cond_1

    move v3, v4

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EntityManager"

    const-string v6, "delete error.\n"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    const/4 v3, 0x0

    .line 187
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "tableName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 191
    :cond_1
    const/4 v1, 0x0

    .line 193
    .local v1, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EntityManager"

    const-string v5, "delete error.\n"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public deleteAll(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public find(Ljava/lang/Class;J)Lcom/miui/gallery/dao/base/Entity;
    .locals 4
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v0

    return-object v0
.end method

.method public find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;
    .locals 11
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 240
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/dao/base/Entity;

    .line 241
    .local v10, "entity":Lcom/miui/gallery/dao/base/Entity;, "TT;"
    if-nez v10, :cond_0

    .line 261
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {v10}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "tableName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 247
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v10, v8}, Lcom/miui/gallery/dao/base/Entity;->initFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_1
    if-eqz v8, :cond_1

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v0, v10

    .line 261
    goto :goto_0

    .line 251
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v9

    .line 254
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 255
    :try_start_1
    const-string v0, "EntityManager"

    const-string v2, "find error.\n"

    invoke-static {v0, v2, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v8, :cond_1

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 257
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public varargs find(Ljava/lang/Class;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;
    .locals 8
    .param p2, "uniques"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/dao/base/Entity;

    .line 227
    .local v1, "entity":Lcom/miui/gallery/dao/base/Entity;
    if-nez v1, :cond_0

    .line 228
    const/4 v4, 0x0

    .line 236
    :goto_0
    return-object v4

    .line 230
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/miui/gallery/dao/base/Entity;->getUniqueConstraints()[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "constraints":[Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/dao/base/EntityManager;->getConstraintsSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "selection":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    array-length v4, p2

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 234
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "uniques should match %.getUniqueConstraints()"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_2
    invoke-virtual {p0, p1, v2, p2}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v4

    goto :goto_0
.end method

.method public insert(Ljava/util/Collection;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/miui/gallery/dao/base/Entity;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 94
    :goto_0
    return v2

    .line 65
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, "count":I
    iget-object v8, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 71
    .local v3, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 73
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/dao/base/Entity;

    .line 74
    .local v5, "entity":Lcom/miui/gallery/dao/base/Entity;
    invoke-virtual {v5}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "tableName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/gallery/dao/base/Entity;->convertToContents()Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 76
    .local v7, "values":Landroid/content/ContentValues;
    const-wide/16 v0, -0x1

    .line 78
    .local v0, "_id":J
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v3, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 82
    :goto_2
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-eqz v9, :cond_1

    .line 83
    :try_start_2
    invoke-virtual {v5, v0, v1}, Lcom/miui/gallery/dao/base/Entity;->setId(J)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "EntityManager"

    const-string v10, "insert error. %s"

    invoke-static {v9, v10, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 88
    .end local v0    # "_id":J
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "entity":Lcom/miui/gallery/dao/base/Entity;
    .end local v6    # "tableName":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    .line 89
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "EntityManager"

    const-string v9, "insert error %s"

    invoke-static {v8, v9, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    const/4 v2, 0x0

    .line 92
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public insert(Lcom/miui/gallery/dao/base/Entity;)Z
    .locals 10
    .param p1, "entity"    # Lcom/miui/gallery/dao/base/Entity;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v5

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->convertToContents()Landroid/content/ContentValues;

    move-result-object v4

    .line 49
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v0, -0x1

    .line 51
    .local v0, "_id":J
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    :goto_1
    cmp-long v6, v0, v8

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/dao/base/Entity;->setId(J)V

    .line 58
    :cond_2
    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EntityManager"

    const-string v7, "insert error. %s"

    invoke-static {v6, v7, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public insertWithOnConflict(Lcom/miui/gallery/dao/base/Entity;I)Z
    .locals 10
    .param p1, "entity"    # Lcom/miui/gallery/dao/base/Entity;
    .param p2, "conflictAlgorithm"    # I

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v5

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->convertToContents()Landroid/content/ContentValues;

    move-result-object v4

    .line 103
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v0, -0x1

    .line 105
    .local v0, "_id":J
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 109
    :goto_1
    cmp-long v6, v0, v8

    if-eqz v6, :cond_2

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/dao/base/Entity;->setId(J)V

    .line 112
    :cond_2
    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EntityManager"

    const-string v7, "insert error %s"

    invoke-static {v6, v7, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 561
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method protected abstract onInitTableList()V
.end method

.method public query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "tableName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 281
    const/4 v12, 0x0

    .line 302
    :cond_0
    :goto_0
    return-object v12

    .line 283
    :cond_1
    const/4 v9, 0x0

    .line 284
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 287
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    :cond_2
    invoke-direct {p0, p1, v9}, Lcom/miui/gallery/dao/base/EntityManager;->cursorToEntity(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v11

    .line 290
    .local v11, "entity":Lcom/miui/gallery/dao/base/Entity;, "TT;"
    if-eqz v11, :cond_3

    .line 291
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 298
    .end local v11    # "entity":Lcom/miui/gallery/dao/base/Entity;, "TT;"
    :cond_4
    if-eqz v9, :cond_0

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EntityManager"

    const-string v2, "query error.\n"

    invoke-static {v0, v2, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz v9, :cond_0

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 298
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "tableName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 346
    const/4 v9, 0x0

    .line 354
    :goto_0
    return-object v9

    .line 348
    :cond_0
    const/4 v9, 0x0

    .line 350
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 351
    :catch_0
    move-exception v10

    .line 352
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "EntityManager"

    const-string v2, "query error.\n"

    invoke-static {v0, v2, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Lcom/miui/gallery/dao/base/Entity;)Z
    .locals 12
    .param p1, "entity"    # Lcom/miui/gallery/dao/base/Entity;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    :cond_0
    move v4, v5

    .line 127
    :cond_1
    :goto_0
    return v4

    .line 119
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "tableName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->convertToContents()Landroid/content/ContentValues;

    move-result-object v3

    .line 121
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 123
    .local v1, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/dao/base/Entity;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_1
    if-gtz v1, :cond_1

    move v4, v5

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "EntityManager"

    const-string/jumbo v7, "update error.\n"

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/dao/base/Entity;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/dao/base/Entity;>;"
    const/4 v3, 0x0

    .line 131
    invoke-static {p1}, Lcom/miui/gallery/dao/base/EntityManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "tableName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v3

    .line 135
    :cond_1
    const/4 v1, 0x0

    .line 137
    .local v1, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/dao/base/EntityManager;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EntityManager"

    const-string/jumbo v5, "update error.\n"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
