.class public Lcn/kuaipan/android/kss/download/LoadMap;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;,
        Lcn/kuaipan/android/kss/download/LoadMap$Space;,
        Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    }
.end annotation


# instance fields
.field private final mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

.field private final mEmptySpaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final mRecorders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcn/kuaipan/android/kss/download/LoadMap$Space;",
            "Lcn/kuaipan/android/kss/download/LoadRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/IKssDownloadRequestResult;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .locals 8
    .param p1, "request"    # Lcn/kuaipan/android/kss/IKssDownloadRequestResult;
    .param p2, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    .line 44
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getBlockCount()I

    move-result v2

    .line 45
    .local v2, "count":I
    new-array v6, v2, [Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    iput-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "pos":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 49
    invoke-interface {p1, v3}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getBlock(I)Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;

    move-result-object v0

    .line 51
    .local v0, "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    new-instance v1, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-direct {v1, p0, v0, v4, v5}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;J)V

    .line 52
    .local v1, "blockSpace":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aput-object v1, v6, v3

    .line 54
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-wide v6, v0, Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;->size:J

    add-long/2addr v4, v6

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "block":Lcn/kuaipan/android/kss/IKssDownloadRequestResult$Block;
    .end local v1    # "blockSpace":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_0
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 59
    if-eqz p2, :cond_1

    .line 60
    invoke-interface {p1}, Lcn/kuaipan/android/kss/IKssDownloadRequestResult;->getTotalSize()J

    move-result-wide v6

    invoke-interface {p2, v6, v7}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceiveTotal(J)V

    .line 62
    :cond_1
    return-void
.end method

.method private allocEmptySpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 8

    .prologue
    .line 164
    const-wide/16 v2, -0x1

    .line 165
    .local v2, "maxSize":J
    const/4 v1, -0x1

    .line 167
    .local v1, "maxIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 168
    iget-object v7, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 169
    .local v6, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    invoke-virtual {v6}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J

    move-result-wide v4

    .line 170
    .local v4, "size":J
    cmp-long v7, v2, v4

    if-gez v7, :cond_0

    .line 171
    move-wide v2, v4

    .line 172
    move v1, v0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "size":J
    .end local v6    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :cond_1
    if-ltz v1, :cond_2

    .line 177
    iget-object v7, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 179
    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private findMaxInUsedSpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 8

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    .line 200
    .local v0, "maxSize":J
    const/4 v2, 0x0

    .line 201
    .local v2, "result":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 202
    .local v3, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J

    move-result-wide v4

    .line 203
    .local v4, "size":J
    cmp-long v7, v0, v4

    if-gez v7, :cond_0

    .line 204
    move-wide v0, v4

    .line 205
    move-object v2, v3

    goto :goto_0

    .line 208
    .end local v3    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .end local v4    # "size":J
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getBlockStart(J)J
    .locals 11
    .param p1, "start"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 548
    cmp-long v1, p1, v8

    if-gez v1, :cond_0

    .line 549
    const-string v1, "LoadMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 552
    :cond_0
    const-wide/16 v2, -0x1

    .line 553
    .local v2, "result":J
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 554
    .local v0, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-ltz v6, :cond_2

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    .line 555
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v2

    .line 559
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_1
    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    .line 560
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 553
    .restart local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_3
    return-wide v2
.end method

.method public initSize(J)V
    .locals 19
    .param p1, "length"    # J

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v3, v7

    .line 214
    .local v3, "blockConut":I
    const-wide/16 v8, 0x0

    .line 215
    .local v8, "pos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v7, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    const-wide/16 v14, 0x0

    invoke-interface {v7, v14, v15}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceivePos(J)V

    .line 221
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v2, v7, v6

    .line 223
    .local v2, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$600(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    .line 224
    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$700(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v10

    .line 225
    .local v10, "size":J
    add-long v14, v8, v10

    cmp-long v7, p1, v14

    if-ltz v7, :cond_2

    .line 226
    const/4 v7, 0x0

    new-array v7, v7, [J

    invoke-virtual {v2, v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->setSpaces([J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v7, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v14

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-interface {v7, v14, v15}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    .line 239
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    add-long/2addr v8, v10

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 232
    :cond_2
    move-wide v12, v8

    .line 233
    .local v12, "start":J
    add-long v4, v8, v10

    .line 235
    .local v4, "end":J
    const/4 v7, 0x2

    new-array v7, v7, [J

    const/4 v14, 0x0

    aput-wide v12, v7, v14

    const/4 v14, 0x1

    aput-wide v4, v7, v14

    invoke-virtual {v2, v7}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->setSpaces([J)V

    goto :goto_1

    .line 242
    .end local v2    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .end local v3    # "blockConut":I
    .end local v4    # "end":J
    .end local v6    # "i":I
    .end local v8    # "pos":J
    .end local v10    # "size":J
    .end local v12    # "start":J
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v3    # "blockConut":I
    .restart local v6    # "i":I
    .restart local v8    # "pos":J
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    return-void
.end method

.method public isCompleted()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 336
    .local v0, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$700(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->isVerified()Z

    move-result v5

    if-nez v5, :cond_1

    .line 340
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_0
    :goto_1
    return v1

    .line 335
    .restart local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public load(Landroid/os/Bundle;)Z
    .locals 22
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/16 v17, 0x0

    .line 300
    :goto_0
    return v17

    .line 251
    :cond_0
    :try_start_0
    const-string v17, "blocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 253
    .local v4, "blockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 254
    .local v3, "blockConut":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v3, v0, :cond_1

    .line 255
    const-string v17, "LoadMap"

    const-string v18, "Block count is wrong in kinfo, ignore saved map"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v17, 0x0

    goto :goto_0

    .line 259
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_4

    .line 260
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 261
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "block_start"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 262
    .local v14, "start":J
    const-string v17, "block_end"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 263
    .local v6, "end":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    move-object/from16 v17, v0

    aget-object v2, v17, v8

    .line 264
    .local v2, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v18

    cmp-long v17, v18, v14

    if-nez v17, :cond_2

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v18

    cmp-long v17, v18, v6

    if-eqz v17, :cond_3

    .line 265
    :cond_2
    const-string v17, "LoadMap"

    const-string v18, "Block start/ends is wrong in kinfo, ignore saved map"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v17, 0x0

    goto :goto_0

    .line 259
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 271
    .end local v2    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    .end local v14    # "start":J
    :cond_4
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-interface/range {v17 .. v19}, Lcn/kuaipan/android/http/IKscTransferListener;->setReceivePos(J)V

    .line 278
    :cond_5
    const-wide/16 v10, 0x0

    .line 279
    .local v10, "initSize":J
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_7

    .line 280
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 281
    .restart local v5    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    move-object/from16 v17, v0

    aget-object v2, v17, v8

    .line 282
    .restart local v2    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$600(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    .line 283
    const-string/jumbo v17, "space_info"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 284
    .local v9, "spaces":[J
    invoke-virtual {v2, v9}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->setSpaces([J)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 288
    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v18

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v20

    sub-long v18, v18, v20

    invoke-static {v2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$700(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v20

    sub-long v12, v18, v20

    .line 289
    .local v12, "size":J
    add-long/2addr v10, v12

    .line 279
    .end local v12    # "size":J
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 293
    .end local v2    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v9    # "spaces":[J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    const-wide/16 v18, 0x0

    cmp-long v17, v10, v18

    if-eqz v17, :cond_8

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v11}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    .line 296
    :cond_8
    monitor-exit p0

    .line 297
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 296
    .end local v10    # "initSize":J
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v17
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    .end local v3    # "blockConut":I
    .end local v4    # "blockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v8    # "i":I
    :catch_0
    move-exception v16

    .line 299
    .local v16, "t":Ljava/lang/Throwable;
    const-string v17, "LoadMap"

    const-string v18, "Meet exception Block count is wrony in kinfo, ignore saved map"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method declared-synchronized obtainRecorder()Lcn/kuaipan/android/kss/download/LoadRecorder;
    .locals 6

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap;->allocEmptySpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v1

    .line 97
    .local v1, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcn/kuaipan/android/kss/download/LoadRecorder;

    invoke-direct {v0, p0, v1}, Lcn/kuaipan/android/kss/download/LoadRecorder;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V

    .line 99
    .local v0, "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap;->findMaxInUsedSpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->access$400(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v1

    .line 109
    new-instance v0, Lcn/kuaipan/android/kss/download/LoadRecorder;

    invoke-direct {v0, p0, v1}, Lcn/kuaipan/android/kss/download/LoadRecorder;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V

    .line 110
    .restart local v0    # "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    .end local v1    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onSpaceRemoved(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    .line 196
    :cond_0
    return-void
.end method

.method declared-synchronized recycleRecorder(Lcn/kuaipan/android/kss/download/LoadRecorder;)V
    .locals 2
    .param p1, "recorder"    # Lcn/kuaipan/android/kss/download/LoadRecorder;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcn/kuaipan/android/kss/download/LoadRecorder;->getSpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    .line 121
    .local v0, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->access$500(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method resetBlock(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 139
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 140
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 143
    :cond_1
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v0, v3, p1

    .line 144
    .local v0, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    monitor-enter v0

    .line 145
    :try_start_0
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 146
    .local v2, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mRecorders:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuaipan/android/kss/download/LoadRecorder;

    .line 147
    .local v1, "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1}, Lcn/kuaipan/android/kss/download/LoadRecorder;->recycle()V

    .line 151
    :cond_2
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "recorder":Lcn/kuaipan/android/kss/download/LoadRecorder;
    .end local v2    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :cond_3
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$600(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)V

    .line 155
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mEmptySpaces:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$000(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)[Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    monitor-exit v0

    .line 161
    return-void

    .line 156
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v10, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v1, v10

    .line 310
    .local v1, "blockConut":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v2, "blockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 312
    iget-object v10, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v0, v10, v5

    .line 313
    .local v0, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v10, "block_start"

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v12

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 315
    const-string v10, "block_end"

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v12

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$800(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;

    move-result-object v9

    .line 318
    .local v9, "spaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/kuaipan/android/kss/download/LoadMap$Space;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 320
    .local v4, "conut":I
    mul-int/lit8 v10, v4, 0x2

    new-array v7, v10, [J

    .line 321
    .local v7, "pos":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v4, :cond_1

    .line 322
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 324
    .local v8, "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    mul-int/lit8 v10, v6, 0x2

    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->access$900(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J

    move-result-wide v12

    aput-wide v12, v7, v10

    .line 325
    mul-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-static {v8}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->access$1000(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J

    move-result-wide v12

    aput-wide v12, v7, v10

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 327
    .end local v8    # "space":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    :cond_1
    const-string/jumbo v10, "space_info"

    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 328
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "conut":I
    .end local v6    # "j":I
    .end local v7    # "pos":[J
    .end local v9    # "spaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/kuaipan/android/kss/download/LoadMap$Space;>;"
    :cond_2
    const-string v10, "blocks"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method verify(Lcn/kuaipan/android/kss/download/KssAccessor;Z)V
    .locals 8
    .param p1, "accessor"    # Lcn/kuaipan/android/kss/download/KssAccessor;
    .param p2, "increaseFailCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mBlocks:[Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    aget-object v0, v2, v1

    .line 78
    .local v0, "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    invoke-static {v0, p1, p2}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$100(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/KssAccessor;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/kss/download/LoadMap;->resetBlock(I)V

    .line 80
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->mListener:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$200(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v4

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$300(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Lcn/kuaipan/android/http/IKscTransferListener;->received(J)V

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "block":Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    :cond_1
    return-void
.end method
