.class Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
.super Ljava/lang/Thread;
.source "SlimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimWorker"
.end annotation


# instance fields
.field private volatile mIsCanceled:Z

.field private volatile mIsPaused:Z

.field private mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

.field private mSlimLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimController;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 206
    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    .line 207
    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mSlimLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p2, "x1"    # Lcom/miui/gallery/cleaner/slim/SlimController$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    return-void
.end method

.method private getNextRemainItem()Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$400(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$500(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$500(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/util/LinkedList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;

    .line 267
    .local v0, "item":Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$500(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v2

    .line 270
    .end local v0    # "item":Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRemainItemsValid()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$400(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$500(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDone(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;->onSlimDone(J)V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    .line 309
    return-void
.end method

.method public doPause()V
    .locals 3

    .prologue
    .line 282
    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mSlimLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 285
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mSlimLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 291
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    return v0
.end method

.method public pauseSlim()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1200(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    .line 314
    return-void
.end method

.method public resumeSlim()V
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mSlimLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mSlimLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1300(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 213
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 214
    iget-boolean v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    if-eqz v8, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-boolean v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    if-eqz v8, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->doPause()V

    .line 221
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$300(Lcom/miui/gallery/cleaner/slim/SlimController;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 222
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$400(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 223
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$300(Lcom/miui/gallery/cleaner/slim/SlimController;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    iget-object v10, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    iget-object v11, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v11}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$600(Lcom/miui/gallery/cleaner/slim/SlimController;)[J

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$700(Lcom/miui/gallery/cleaner/slim/SlimController;[J)Ljava/util/LinkedList;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$502(Lcom/miui/gallery/cleaner/slim/SlimController;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 225
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$302(Lcom/miui/gallery/cleaner/slim/SlimController;Z)Z

    .line 227
    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->isRemainItemsValid()Z

    move-result v8

    if-nez v8, :cond_5

    .line 231
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8, v12}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$800(Lcom/miui/gallery/cleaner/slim/SlimController;I)V

    .line 232
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->onDone(J)V

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 236
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    const-wide/16 v4, 0x0

    .line 239
    .local v4, "slimTotalTime":J
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->getNextRemainItem()Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;

    move-result-object v1

    .local v1, "item":Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    if-eqz v1, :cond_8

    .line 240
    iget-boolean v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    if-nez v8, :cond_0

    .line 243
    iget-boolean v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsPaused:Z

    if-eqz v8, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->doPause()V

    .line 246
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 247
    .local v6, "start":J
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8, v1, v0}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$900(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;Ljava/util/ArrayList;)J

    move-result-wide v2

    .line 248
    .local v2, "releaseSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v4, v8

    .line 249
    iget-object v9, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    monitor-enter v9

    .line 250
    :try_start_2
    iget-boolean v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mIsCanceled:Z

    if-nez v8, :cond_7

    .line 251
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    iget-object v10, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v10}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1000(Lcom/miui/gallery/cleaner/slim/SlimController;)J

    move-result-wide v10

    add-long/2addr v10, v2

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1002(Lcom/miui/gallery/cleaner/slim/SlimController;J)J

    .line 252
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-static {v8}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1110(Lcom/miui/gallery/cleaner/slim/SlimController;)I

    .line 254
    :cond_7
    iget-object v8, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    iget v10, v1, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->id:I

    invoke-static {v8, v10}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$800(Lcom/miui/gallery/cleaner/slim/SlimController;I)V

    .line 255
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 257
    .end local v2    # "releaseSize":J
    .end local v6    # "start":J
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->onDone(J)V

    .line 258
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 259
    invoke-static {v0}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->record(Ljava/util/Collection;)I

    goto/16 :goto_0
.end method

.method public setOnSlimDoneListener(Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    .line 326
    return-void
.end method
