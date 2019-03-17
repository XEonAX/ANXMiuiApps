.class public abstract Lcom/nexstreaming/app/common/norm/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NormDb.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NormDb"


# instance fields
.field private final gson:Lcom/google/gson_nex/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/a;->gson:Lcom/google/gson_nex/Gson;

    .line 67
    return-void
.end method

.method public static camelCaseToLCUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const-string v0, "(?<=[A-Z])(?=[A-Z][a-z])|(?<=[^A-Z])(?=[A-Z])|(?<=[A-Za-z])(?=[^A-Za-z])"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 137
    const-string v0, "_"

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 139
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_0

    .line 140
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private count_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 316
    .line 317
    if-eqz p3, :cond_0

    .line 318
    array-length v0, p3

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    .line 319
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 320
    aget-object v2, p3, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v3

    .line 324
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/nexstreaming/app/common/norm/c;->f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 325
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v3}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    return v1
.end method

.method private getContentValuesForRecord(Lcom/nexstreaming/app/common/norm/b;)Landroid/content/ContentValues;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 148
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/c;->e()[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v5

    .line 150
    :try_start_0
    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 151
    if-nez v7, :cond_1

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 153
    :cond_1
    iget-boolean v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/nexstreaming/app/common/norm/a$1;->a:[I

    iget-object v8, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v8}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 157
    :pswitch_0
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    if-nez v0, :cond_2

    .line 159
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_2
    :try_start_1
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 168
    :pswitch_2
    iget-boolean v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    instance-of v8, v0, Lcom/nexstreaming/app/common/norm/b;

    if-eqz v8, :cond_0

    .line 171
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    check-cast v0, Lcom/nexstreaming/app/common/norm/b;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/b;->getDbRowID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 174
    :cond_3
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 178
    :pswitch_3
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 181
    :pswitch_4
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_1

    .line 184
    :pswitch_5
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 185
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 189
    :pswitch_6
    iget-object v8, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    .line 192
    :pswitch_7
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 193
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 198
    :pswitch_8
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 199
    if-eqz v0, :cond_8

    .line 200
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 202
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 204
    :goto_4
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 209
    :pswitch_9
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 210
    if-eqz v0, :cond_7

    .line 211
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x55

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 215
    :goto_5
    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 219
    :pswitch_a
    iget-object v0, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/nexstreaming/app/common/norm/a;->gson:Lcom/google/gson_nex/Gson;

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 226
    :cond_6
    return-object v4

    :cond_7
    move-object v0, v1

    goto :goto_5

    :cond_8
    move-object v0, v1

    goto :goto_4

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private query_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    const/4 v4, 0x0

    .line 333
    if-eqz p3, :cond_0

    .line 334
    array-length v0, p3

    new-array v4, v0, [Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 336
    aget-object v1, p3, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p1}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->e()[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v8

    .line 343
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->d()[Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 348
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/b;

    .line 351
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    array-length v1, v8

    if-ge v3, v1, :cond_6

    .line 352
    sget-object v1, Lcom/nexstreaming/app/common/norm/a$1;->a:[I

    aget-object v2, v8, v3

    iget-object v2, v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 351
    :cond_1
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 354
    :pswitch_0
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 357
    :pswitch_1
    :try_start_2
    aget-object v1, v8, v3

    iget-boolean v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    if-eqz v1, :cond_4

    .line 358
    if-eqz p4, :cond_1

    .line 359
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_2
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 363
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 364
    if-nez v1, :cond_3

    .line 365
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-virtual {p0, v1, v10, v11}, Lcom/nexstreaming/app/common/norm/a;->findById(Ljava/lang/Class;J)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v2

    .line 366
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 368
    :cond_3
    aget-object v2, v8, v3

    iget-object v2, v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 419
    :catch_1
    move-exception v0

    .line 420
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    :cond_4
    :try_start_4
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v1, v0, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_3

    .line 375
    :pswitch_2
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v1, v0, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_3

    .line 378
    :pswitch_3
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_3

    .line 381
    :pswitch_4
    aget-object v1, v8, v3

    iget-object v2, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 384
    :pswitch_5
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 387
    :pswitch_6
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 391
    :pswitch_7
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 392
    const/4 v2, 0x0

    array-length v7, v1

    invoke-static {v1, v2, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 393
    aget-object v2, v8, v3

    iget-object v2, v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 397
    :pswitch_8
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    aget-object v2, v8, v3

    iget-object v2, v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    iget-object v7, p0, Lcom/nexstreaming/app/common/norm/a;->gson:Lcom/google/gson_nex/Gson;

    aget-object v9, v8, v3

    iget-object v9, v9, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v7, v1, v9}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 402
    :pswitch_9
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 403
    check-cast v1, Ljava/lang/Class;

    .line 404
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 405
    if-eqz v2, :cond_1

    .line 407
    :try_start_5
    aget-object v7, v8, v3

    iget-object v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 408
    :catch_2
    move-exception v1

    .line 409
    :try_start_6
    aget-object v1, v8, v3

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 415
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 422
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 424
    return-object v5

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateRecIndex(Lcom/nexstreaming/app/common/norm/b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;J)V"
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/c;->f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nexstreaming/app/common/norm/b;->addedOrUpdatedToDb:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(Lcom/nexstreaming/app/common/norm/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/norm/a;->getContentValuesForRecord(Lcom/nexstreaming/app/common/norm/b;)Landroid/content/ContentValues;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 247
    invoke-direct {p0, p1, v0, v1}, Lcom/nexstreaming/app/common/norm/a;->updateRecIndex(Lcom/nexstreaming/app/common/norm/b;J)V

    .line 248
    return-void
.end method

.method public addOrUpdate(Lcom/nexstreaming/app/common/norm/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/norm/a;->getContentValuesForRecord(Lcom/nexstreaming/app/common/norm/b;)Landroid/content/ContentValues;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 241
    invoke-direct {p0, p1, v0, v1}, Lcom/nexstreaming/app/common/norm/a;->updateRecIndex(Lcom/nexstreaming/app/common/norm/b;J)V

    .line 242
    return-void
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 517
    return-void
.end method

.method public count(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/nexstreaming/app/common/norm/a;->count_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public varargs count(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nexstreaming/app/common/norm/a;->count_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public delete(Lcom/nexstreaming/app/common/norm/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/app/common/norm/c;->f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getDbRowID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public varargs delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    array-length v0, p3

    new-array v1, v0, [Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 294
    aget-object v2, p3, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public endTransaction()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteFullException;-><init>()V

    throw v0
.end method

.method public findById(Ljava/lang/Class;J)Lcom/nexstreaming/app/common/norm/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/nexstreaming/app/common/norm/a;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/b;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/nexstreaming/app/common/norm/a;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/b;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs findFirstRowId(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/nexstreaming/app/common/norm/a;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/b;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/b;->getDbRowID()J

    move-result-wide v0

    .line 283
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getTableClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getTableClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 76
    invoke-static {v0}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/c;->a()[Ljava/lang/String;

    move-result-object v5

    .line 77
    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 78
    const-string v8, "NormDb"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CreateTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v7, "NormDb"

    const-string v8, "Created"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getTableClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 124
    invoke-static {v0}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/c;->b()[Ljava/lang/String;

    move-result-object v5

    .line 125
    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 126
    const-string v8, "NormDb"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDowngrade:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v7, "NormDb"

    const-string v8, "onDowngrade"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/norm/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, "NormDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v0, 0xb

    if-ge p2, v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getTableClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 95
    invoke-static {v0}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/norm/c;->b()[Ljava/lang/String;

    move-result-object v5

    .line 96
    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 97
    const-string v8, "NormDb"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DropTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v7, "NormDb"

    const-string v8, "Dropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nexstreaming/app/common/norm/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    :cond_2
    return-void

    .line 106
    :cond_3
    if-ge p2, p3, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getTableClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 109
    invoke-static {v0}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nexstreaming/app/common/norm/c;->a(II)[Ljava/lang/String;

    move-result-object v5

    .line 110
    array-length v6, v5

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_4

    aget-object v7, v5, v0

    .line 111
    const-string v8, "NormDb"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onUpgrade:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v7, "NormDb"

    const-string v8, "onUpgrade end"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 108
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method public query(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/nexstreaming/app/common/norm/a;->query_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nexstreaming/app/common/norm/a;->query_internal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryIndividualField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            "RESU",
            "LT_TYPE:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TRESU",
            "LT_TYPE;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 428
    .line 429
    if-eqz p4, :cond_0

    .line 430
    array-length v0, p4

    new-array v4, v0, [Ljava/lang/String;

    move v0, v8

    .line 431
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    .line 432
    aget-object v1, p4, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 435
    :cond_1
    invoke-static {p1}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;

    move-result-object v1

    .line 438
    invoke-virtual {v1, p2}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/String;)Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v10

    .line 439
    new-array v2, v9, [Ljava/lang/String;

    aput-object p2, v2, v8

    .line 440
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 441
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 444
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 445
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    sget-object v0, Lcom/nexstreaming/app/common/norm/a$1;->a:[I

    iget-object v1, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    move-object v0, v5

    .line 507
    :cond_3
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 510
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 449
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 452
    :pswitch_1
    iget-boolean v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 454
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 457
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    if-nez v0, :cond_3

    .line 459
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-virtual {p0, v0, v6, v7}, Lcom/nexstreaming/app/common/norm/a;->findById(Ljava/lang/Class;J)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v1

    .line 460
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_2

    .line 464
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 468
    :pswitch_2
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2

    .line 471
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    .line 474
    :pswitch_4
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v9

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    move v0, v8

    goto :goto_3

    .line 477
    :pswitch_5
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 480
    :pswitch_6
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto/16 :goto_2

    .line 484
    :pswitch_7
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    array-length v6, v0

    invoke-static {v0, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 490
    :pswitch_8
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/nexstreaming/app/common/norm/a;->gson:Lcom/google/gson_nex/Gson;

    iget-object v6, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 495
    :pswitch_9
    iget-object v0, v10, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 496
    check-cast v0, Ljava/lang/Class;

    .line 497
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 498
    if-eqz v1, :cond_2

    .line 500
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    .line 501
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 502
    goto/16 :goto_2

    .line 510
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 512
    return-object v3

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 521
    return-void
.end method

.method public update(Lcom/nexstreaming/app/common/norm/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/norm/a;->getContentValuesForRecord(Lcom/nexstreaming/app/common/norm/b;)Landroid/content/ContentValues;

    move-result-object v0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/norm/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/norm/c;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 254
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/norm/b;->getTableInfo()Lcom/nexstreaming/app/common/norm/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/app/common/norm/c;->f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 253
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
