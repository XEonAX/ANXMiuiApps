.class public Lcn/kuaipan/android/http/KscSpeedManager;
.super Ljava/lang/Object;
.source "KscSpeedManager.java"


# instance fields
.field private mLatestEraseTime:J

.field private final mRecodeDuration:I

.field private final mRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "recodeDuration"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuaipan/android/http/KscSpeedManager;->mLatestEraseTime:J

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecordMap:Ljava/util/HashMap;

    .line 25
    if-gez p1, :cond_0

    .line 26
    const/16 p1, 0x258

    .line 28
    :cond_0
    const/16 v0, 0xe10

    const/16 v1, 0x12c

    .line 29
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecodeDuration:I

    .line 30
    return-void
.end method

.method private appendRecoder(Ljava/lang/String;IF)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # I
    .param p3, "size"    # F

    .prologue
    .line 250
    iget-object v2, p0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 251
    .local v1, "recoders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-nez v1, :cond_0

    .line 252
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "recoders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 253
    .restart local v1    # "recoders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    iget-object v2, p0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 256
    .local v0, "old":F
    add-float v2, v0, p3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    if-eqz p1, :cond_1

    .line 259
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2, p3}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 261
    :cond_1
    return-void
.end method

.method private appendRecoders(Ljava/lang/String;IIF)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "startKey"    # I
    .param p3, "endKey"    # I
    .param p4, "size"    # F

    .prologue
    .line 234
    if-lt p3, p2, :cond_0

    .line 235
    move v0, p2

    .local v0, "key":I
    :goto_0
    if-gt v0, p3, :cond_2

    .line 236
    invoke-direct {p0, p1, v0, p4}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "key":I
    :cond_0
    move v0, p2

    .restart local v0    # "key":I
    :goto_1
    const v1, 0x36ee80

    if-ge v0, v1, :cond_1

    .line 240
    invoke-direct {p0, p1, v0, p4}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-gt v0, p3, :cond_2

    .line 244
    invoke-direct {p0, p1, v0, p4}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 247
    :cond_2
    return-void
.end method

.method private static computeKey(J)I
    .locals 4
    .param p0, "start"    # J

    .prologue
    .line 230
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/32 v2, 0x36ee80

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static current()J
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private eraseExpired()V
    .locals 18

    .prologue
    .line 179
    invoke-static {}, Lcn/kuaipan/android/http/KscSpeedManager;->current()J

    move-result-wide v4

    .line 180
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/kuaipan/android/http/KscSpeedManager;->mLatestEraseTime:J

    sub-long v14, v4, v14

    const-wide/32 v16, 0x493e0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_0

    .line 227
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {v4, v5}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v3

    .line 185
    .local v3, "endKey":I
    move-object/from16 v0, p0

    iget v13, v0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecodeDuration:I

    sub-int v12, v3, v13

    .line 186
    .local v12, "startKey":I
    if-ge v3, v12, :cond_2

    const/4 v2, 0x1

    .line 188
    .local v2, "broken":Z
    :goto_1
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 190
    .local v11, "removeList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 191
    .local v6, "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 192
    .local v7, "host":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 194
    .local v10, "recodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-eqz v2, :cond_6

    .line 195
    const/4 v8, 0x0

    .line 196
    .local v8, "index":I
    :goto_3
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 197
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 198
    .local v9, "key":I
    if-le v9, v3, :cond_3

    if-ge v9, v12, :cond_3

    .line 199
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 186
    .end local v2    # "broken":Z
    .end local v6    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "key":I
    .end local v10    # "recodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local v11    # "removeList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 200
    .restart local v2    # "broken":Z
    .restart local v6    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "index":I
    .restart local v9    # "key":I
    .restart local v10    # "recodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .restart local v11    # "removeList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_3
    if-lt v9, v12, :cond_5

    .line 218
    .end local v9    # "key":I
    :cond_4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-gtz v14, :cond_1

    .line 219
    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .restart local v9    # "key":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 207
    .end local v8    # "index":I
    .end local v9    # "key":I
    :cond_6
    const/4 v8, 0x0

    .line 208
    .restart local v8    # "index":I
    :goto_4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 209
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 210
    .restart local v9    # "key":I
    if-gt v9, v3, :cond_7

    if-ge v9, v12, :cond_8

    .line 211
    :cond_7
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_4

    .line 213
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 223
    .end local v6    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "key":I
    .end local v10    # "recodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :cond_9
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 224
    .restart local v7    # "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/kuaipan/android/http/KscSpeedManager;->mRecordMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 226
    .end local v7    # "host":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcn/kuaipan/android/http/KscSpeedManager;->mLatestEraseTime:J

    goto/16 :goto_0
.end method


# virtual methods
.method public getMoniter(Ljava/lang/String;)Lcn/kuaipan/android/http/KscSpeedMonitor;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcn/kuaipan/android/http/KscSpeedMonitor;

    invoke-direct {v0, p0, p1}, Lcn/kuaipan/android/http/KscSpeedMonitor;-><init>(Lcn/kuaipan/android/http/KscSpeedManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized recoder(Ljava/lang/String;JJF)V
    .locals 24
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "size"    # F

    .prologue
    .line 138
    monitor-enter p0

    cmp-long v18, p4, p2

    if-ltz v18, :cond_0

    const/16 v18, 0x0

    cmpg-float v18, p6, v18

    if-gez v18, :cond_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    const-wide/16 v18, 0x3e8

    :try_start_0
    div-long v16, p2, v18

    .line 143
    .local v16, "sSec":J
    const-wide/16 v18, 0x3e8

    div-long v10, p4, v18

    .line 144
    .local v10, "eSec":J
    cmp-long v18, v10, v16

    if-nez v18, :cond_2

    .line 145
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v15

    .line 146
    .local v15, "key":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v15, v2}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 175
    .end local v15    # "key":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcn/kuaipan/android/http/KscSpeedManager;->eraseExpired()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v10    # "eSec":J
    .end local v16    # "sSec":J
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 147
    .restart local v10    # "eSec":J
    .restart local v16    # "sSec":J
    :cond_2
    sub-long v18, v10, v16

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-gtz v18, :cond_3

    .line 148
    sub-long v8, p4, p2

    .line 149
    .local v8, "dur":J
    const-wide/16 v18, 0x3e8

    const-wide/16 v20, 0x3e8

    :try_start_1
    rem-long v20, p2, v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p6

    long-to-float v0, v8

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 150
    .local v13, "header":F
    const-wide/16 v18, 0x3e8

    rem-long v18, p4, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p6

    long-to-float v0, v8

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 152
    .local v7, "foot":F
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v14

    .line 153
    .local v14, "headerKey":I
    invoke-static/range {p4 .. p5}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v12

    .line 155
    .local v12, "footKey":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v7}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    goto :goto_1

    .line 158
    .end local v7    # "foot":F
    .end local v8    # "dur":J
    .end local v12    # "footKey":I
    .end local v13    # "header":F
    .end local v14    # "headerKey":I
    :cond_3
    sub-long v8, p4, p2

    .line 159
    .restart local v8    # "dur":J
    const-wide/16 v18, 0x3e8

    const-wide/16 v20, 0x3e8

    rem-long v20, p2, v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p6

    long-to-float v0, v8

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 160
    .restart local v13    # "header":F
    const-wide/16 v18, 0x3e8

    rem-long v18, p4, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p6

    long-to-float v0, v8

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 161
    .restart local v7    # "foot":F
    sub-float v18, p6, v13

    sub-float v18, v18, v7

    sub-long v20, v10, v16

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 163
    .local v4, "body":F
    invoke-static/range {p2 .. p3}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v14

    .line 164
    .restart local v14    # "headerKey":I
    invoke-static/range {p4 .. p5}, Lcn/kuaipan/android/http/KscSpeedManager;->computeKey(J)I

    move-result v12

    .line 166
    .restart local v12    # "footKey":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v7}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoder(Ljava/lang/String;IF)V

    .line 169
    add-int/lit8 v6, v14, 0x1

    .line 170
    .local v6, "bodyStart":I
    add-int/lit8 v5, v12, -0x1

    .line 172
    .local v5, "bodyEnd":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5, v4}, Lcn/kuaipan/android/http/KscSpeedManager;->appendRecoders(Ljava/lang/String;IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
