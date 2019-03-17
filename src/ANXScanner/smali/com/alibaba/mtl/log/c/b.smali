.class Lcom/alibaba/mtl/log/c/b;
.super Ljava/lang/Object;
.source "LogSqliteStore.java"

# interfaces
.implements Lcom/alibaba/mtl/log/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/c/b$a;
    }
.end annotation


# instance fields
.field Z:Ljava/lang/String;

.field a:Lcom/alibaba/mtl/log/c/b$a;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "SELECT * FROM %s ORDER BY %s ASC LIMIT %s"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->Z:Ljava/lang/String;

    .line 43
    const-string v0, "SELECT count(*) FROM %s"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->aa:Ljava/lang/String;

    .line 44
    const-string v0, "DELETE FROM log where _id in ( select _id from log  ORDER BY _id ASC LIMIT %d )"

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->ab:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/alibaba/mtl/log/c/b$a;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mtl/log/c/b$a;-><init>(Lcom/alibaba/mtl/log/c/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    .line 51
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 347
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/c/b;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 112
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 114
    if-eqz v5, :cond_4

    .line 116
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v4, v1

    move v3, v1

    .line 118
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 119
    const-string v6, "log"

    const-string v7, "_id=?"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    iget v0, v0, Lcom/alibaba/mtl/log/model/a;->id:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    .line 120
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    .line 122
    const-string v2, "UTSqliteLogStore"

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v9, "[delete]  "

    aput-object v9, v8, v0

    const/4 v9, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    iget v0, v0, Lcom/alibaba/mtl/log/model/a;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x2

    const-string v9, " ret:"

    aput-object v9, v8, v0

    const/4 v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v0

    invoke-static {v2, v8}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    move v2, v3

    .line 118
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 123
    :cond_2
    const-string v6, "6005"

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    iget-object v0, v0, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    .line 124
    add-int/lit8 v0, v3, 0x1

    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_2

    .line 129
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v5}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v3

    .line 141
    :goto_5
    const-string v0, "UTSqliteLogStore"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "delete "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " isSuccess:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 139
    :cond_4
    const-string v0, "UTSqliteLogStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "db is null"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v2, v1

    goto :goto_5

    .line 130
    :catch_0
    move-exception v0

    goto :goto_3

    .line 134
    :catch_1
    move-exception v0

    goto :goto_4

    .line 130
    :catch_2
    move-exception v1

    goto :goto_6

    .line 134
    :catch_3
    move-exception v1

    goto :goto_7

    :cond_5
    move v0, v2

    move v2, v3

    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 147
    monitor-enter p0

    .line 149
    if-gtz p2, :cond_0

    .line 150
    :try_start_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit p0

    return-object v0

    .line 152
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 155
    if-eqz v3, :cond_3

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v4, "SELECT * FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    const-string v4, " WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    const-string v4, " ORDER BY "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ASC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v4, " LIMIT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v4, "UTSqliteLogStore"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sql:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 169
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    new-instance v1, Lcom/alibaba/mtl/log/model/a;

    invoke-direct {v1}, Lcom/alibaba/mtl/log/model/a;-><init>()V

    .line 171
    const-string v4, "UTSqliteLogStore"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "pos"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "count"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/mtl/log/model/a;->id:I

    .line 173
    const-string v4, "eventId"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    .line 174
    const-string v4, "priority"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    .line 175
    const-string v4, "content"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/log/model/a;->j(Ljava/lang/String;)V

    .line 177
    const-string v4, "time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :try_start_4
    const-string v4, "_index"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    :goto_2
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    :try_start_6
    const-string v4, "UTSqliteLogStore"

    const-string v5, "[get]"

    invoke-static {v4, v5, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 187
    :try_start_7
    invoke-direct {p0, v2}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 193
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-direct {p0, v2}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 191
    :cond_3
    const-string v1, "UTSqliteLogStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "db is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 193
    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    .line 180
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/log/c/b;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 103
    :goto_0
    monitor-exit p0

    return v0

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    const/4 v5, 0x1

    move v4, v1

    .line 64
    :goto_1
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 65
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/log/model/a;

    .line 66
    if-eqz v0, :cond_4

    .line 67
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 68
    const-string v7, "eventId"

    iget-object v8, v0, Lcom/alibaba/mtl/log/model/a;->S:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v7, "priority"

    iget-object v8, v0, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/a;->k()Ljava/lang/String;

    move-result-object v7

    .line 71
    const-string v8, "content"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v7, "time"

    iget-object v8, v0, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v7, "_index"

    iget-object v8, v0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "log"

    const-string v8, ""

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 75
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    move v0, v1

    .line 91
    :goto_2
    if-eqz v3, :cond_2

    .line 93
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :cond_2
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_3
    :try_start_7
    const-string v8, "UTSqliteLogStore"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "[insert] "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    aput-object v0, v9, v10

    const/4 v0, 0x2

    const-string v10, " isSuccess:"

    aput-object v10, v9, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x4

    const-string v10, "ret"

    aput-object v10, v9, v0

    const/4 v0, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-static {v8, v9}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 64
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 84
    :cond_5
    :try_start_8
    const-string v0, "UTSqliteLogStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "db is null"

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v0, v1

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    move-object v2, v3

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 87
    :goto_5
    :try_start_9
    const-string v3, "UTSqliteLogStore"

    const-string v4, "insert error"

    invoke-static {v3, v4, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 91
    if-eqz v2, :cond_6

    .line 93
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 97
    :goto_6
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 101
    :cond_6
    :goto_7
    :try_start_c
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 91
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v3, :cond_7

    .line 93
    :try_start_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 97
    :goto_9
    :try_start_e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 101
    :cond_7
    :goto_a
    :try_start_f
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 94
    :catch_1
    move-exception v1

    goto :goto_3

    .line 98
    :catch_2
    move-exception v1

    goto :goto_4

    .line 94
    :catch_3
    move-exception v1

    goto :goto_6

    .line 98
    :catch_4
    move-exception v1

    goto :goto_7

    .line 94
    :catch_5
    move-exception v1

    goto :goto_9

    .line 98
    :catch_6
    move-exception v1

    goto :goto_a

    .line 91
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_8

    .line 86
    :catch_7
    move-exception v0

    move-object v2, v3

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto :goto_5

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    .line 314
    :try_start_1
    const-string v0, "log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 320
    :cond_0
    const-string v0, "UTSqliteLogStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "db is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    const-string v1, "log"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized count()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 202
    if-eqz v2, :cond_1

    .line 204
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/mtl/log/c/b;->aa:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "log"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 212
    :cond_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return v0

    .line 210
    :catch_0
    move-exception v3

    .line 212
    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/alibaba/mtl/log/c/b;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 216
    :cond_1
    const-string v1, "UTSqliteLogStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "db is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public e(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 328
    if-gtz p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->ab:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 338
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/alibaba/mtl/log/c/b;->a:Lcom/alibaba/mtl/log/c/b$a;

    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/log/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 341
    :cond_1
    const-string v0, "UTSqliteLogStore"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "db is null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
