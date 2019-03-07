.class public Lcom/xiaomi/stat/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:I = 0xa

.field private static final c:I = 0x0

.field private static final d:I = 0x12c

.field private static final e:I = 0x1e000

.field private static final f:I = 0x37

.field private static final g:I = 0x2

.field private static final h:Ljava/lang/String; = "priority DESC, _id ASC"

.field private static final i:I = 0x7

.field private static final j:J = 0x3200000L

.field private static k:Lcom/xiaomi/stat/a/c;


# instance fields
.field private l:Lcom/xiaomi/stat/a/a;

.field private m:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/xiaomi/stat/a/a;

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    .line 93
    const-string v1, "mistat_ev"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/stat/a/c;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/xiaomi/stat/a/c;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/xiaomi/stat/a/c;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/c;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "mi_av"

    .line 142
    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "mi_sv"

    const-string v1, "3.0.6"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "mi_ov"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "mi_ob"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "mi_n"

    .line 147
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "mi_rd"

    .line 149
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "mi_mf"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "mi_m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "mi_os"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 266
    invoke-virtual {v3, p2, p3, p4}, Lcom/xiaomi/stat/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const/4 v0, 0x1

    .line 270
    :cond_0
    return v0

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 29

    .prologue
    .line 176
    const/4 v12, 0x0

    .line 178
    const/4 v4, 0x1

    .line 179
    const/4 v7, 0x0

    .line 180
    :try_start_0
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 181
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/xiaomi/stat/a/b;->a()Ljava/lang/String;

    move-result-object v7

    .line 182
    const/4 v4, 0x0

    move v13, v4

    .line 185
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v4}, Lcom/xiaomi/stat/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 186
    const-string v5, "events"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "priority DESC, _id ASC"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 189
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 190
    const-string v4, "e"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 191
    const-string v4, "eg"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 192
    const-string v4, "tp"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 193
    const-string v4, "ts"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 194
    const-string v4, "ps"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 195
    const-string v4, "sub"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 196
    const-string v4, "is_am"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 198
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 199
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v6, 0x1

    .line 202
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 204
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 205
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 206
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 207
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 208
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 209
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 210
    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_6

    const/4 v7, 0x1

    .line 212
    :goto_1
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    :cond_1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x37

    add-int/2addr v4, v7

    .line 215
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 217
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 219
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 220
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 222
    :cond_3
    const v7, 0x1e000

    if-le v4, v7, :cond_7

    .line 223
    const/4 v4, 0x0

    move v6, v4

    .line 249
    :cond_4
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 250
    new-instance v4, Lcom/xiaomi/stat/a/k;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1, v6}, Lcom/xiaomi/stat/a/k;-><init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    if-eqz v5, :cond_5

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_5
    :goto_3
    return-object v4

    .line 210
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 227
    :cond_7
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :try_start_3
    const-string v27, "e"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v19, "eg"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v19, "tp"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v19, "ts"

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    const-string v19, "eid"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v22, "ps"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 238
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :goto_4
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v19, 0x12c

    move/from16 v0, v19

    if-lt v7, v0, :cond_0

    .line 243
    invoke-interface {v5}, Landroid/database/Cursor;->isLast()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    move v6, v4

    .line 244
    goto :goto_2

    .line 255
    :cond_8
    if-eqz v5, :cond_9

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_9
    :goto_5
    const/4 v4, 0x0

    goto :goto_3

    .line 252
    :catch_0
    move-exception v4

    move-object v5, v12

    .line 253
    :goto_6
    :try_start_5
    const-string v6, "EventManager"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 255
    if-eqz v5, :cond_9

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 255
    :catchall_0
    move-exception v4

    move-object v5, v12

    :goto_7
    if-eqz v5, :cond_a

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4

    .line 255
    :catchall_1
    move-exception v4

    goto :goto_7

    .line 252
    :catch_1
    move-exception v4

    goto :goto_6

    .line 239
    :catch_2
    move-exception v7

    goto :goto_4

    :cond_b
    move v13, v4

    goto/16 :goto_0
.end method

.method private b(Lcom/xiaomi/stat/a/l;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/stat/a/c;->d()V

    .line 110
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 112
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 113
    const-string v0, "e"

    iget-object v4, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "eg"

    iget-object v4, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "tp"

    iget-object v4, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "ts"

    iget-wide v4, p1, Lcom/xiaomi/stat/a/l;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->c(Lcom/xiaomi/stat/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/MiStatParams;)V

    .line 121
    :cond_0
    const-string v0, "ps"

    iget-object v4, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/H;

    invoke-virtual {v4}, Lcom/xiaomi/stat/H;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "sub"

    iget-object v4, p1, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "is_am"

    iget-boolean v0, p1, Lcom/xiaomi/stat/a/l;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v4, "mistat_basic"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 128
    const-string v4, "priority"

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    .line 129
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 133
    return-void

    :cond_2
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x10

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    const-string v0, "_id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 308
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_2

    .line 309
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :cond_2
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v0, "events"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 315
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted events number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Lcom/xiaomi/stat/a/l;)Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string v1, "profile_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 403
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 405
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    const-string v1, "events"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    :cond_0
    return-void
.end method


# virtual methods
.method public a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/xiaomi/stat/a/e;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/e;-><init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V

    .line 162
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 163
    invoke-static {v2}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 165
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/stat/a/k;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 170
    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/stat/a/l;)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/xiaomi/stat/a/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/d;-><init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 104
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add event: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/xiaomi/stat/a/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/h;-><init>(Lcom/xiaomi/stat/a/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/xiaomi/stat/a/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/f;-><init>(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V

    .line 281
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 282
    invoke-static {v1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 285
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/xiaomi/stat/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/g;-><init>(Lcom/xiaomi/stat/a/c;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public c()J
    .locals 4

    .prologue
    .line 435
    new-instance v0, Lcom/xiaomi/stat/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/i;-><init>(Lcom/xiaomi/stat/a/c;)V

    .line 442
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 443
    invoke-static {v1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    .line 445
    const-wide/16 v2, -0x1

    .line 447
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 452
    :goto_0
    return-wide v0

    .line 448
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 450
    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method
