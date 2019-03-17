.class public abstract Lcom/miui/gallery/cloud/RequestItemBase;
.super Ljava/lang/Object;
.source "RequestItemBase.java"


# static fields
.field public static final DELAY_UPLOAD_TIME:J

.field public static final PRI_THREAD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static isUpload:Z


# instance fields
.field public commitRetryTimes:I

.field public createRetryTimes:I

.field public final delayInMillis:J

.field public kssRetryTimes:I

.field public mDownloadedSize:J

.field public mTotalSize:J

.field public needReRequest:Z

.field public otherRetryTimes:I

.field public final priority:I

.field public requestId:Ljava/lang/String;

.field public requestIds:Ljava/lang/String;

.field public result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public retryAfter:J

.field public final startInMillis:J

.field private status:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 55
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/cloud/RequestItemBase;->PRI_THREAD:Ljava/util/Map;

    .line 103
    invoke-static {}, Lcom/miui/gallery/cloud/SyncConditionManager;->sGetSyncConfig()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getDelayUploadTime()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/gallery/cloud/RequestItemBase;->DELAY_UPLOAD_TIME:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "checkType"    # I

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/RequestItemBase;-><init>(IJ)V

    .line 124
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "p"    # I
    .param p2, "d"    # J

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    iput p1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->startInMillis:J

    .line 129
    iput-wide p2, p0, Lcom/miui/gallery/cloud/RequestItemBase;->delayInMillis:J

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestItemBase;->init()V

    .line 131
    return-void
.end method

.method protected static getDelay(Lcom/miui/gallery/data/DBImage;)J
    .locals 10
    .param p0, "dbCloud"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const-wide/16 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/miui/gallery/cloud/RequestItemBase;->isUpload:Z

    if-eqz v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-wide v2

    .line 202
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 203
    .local v6, "lastModified":J
    sget-wide v4, Lcom/miui/gallery/cloud/RequestItemBase;->DELAY_UPLOAD_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sub-long v0, v4, v8

    .line 204
    .local v0, "delay":J
    sget-wide v4, Lcom/miui/gallery/cloud/RequestItemBase;->DELAY_UPLOAD_TIME:J

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/Utils;->clamp(JJJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getDownloadTypeByPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "downloadType":I
    packed-switch p0, :pswitch_data_0

    .line 194
    :goto_0
    return v0

    .line 178
    :pswitch_0
    const/4 v0, 0x2

    .line 179
    goto :goto_0

    .line 182
    :pswitch_1
    const/4 v0, 0x1

    .line 183
    goto :goto_0

    .line 186
    :pswitch_2
    const/4 v0, 0x3

    .line 187
    goto :goto_0

    .line 189
    :pswitch_3
    const/4 v0, 0x4

    .line 190
    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isBackgroundPriority(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/miui/gallery/cloud/RequestItemBase;->PRI_THREAD:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isCancellablePriority(I)Z
    .locals 1
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x1

    .line 74
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareAndSetStatus(II)Z
    .locals 1
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public getDelayToExecuteInMillis(J)J
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->startInMillis:J

    iget-wide v2, p0, Lcom/miui/gallery/cloud/RequestItemBase;->delayInMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public getDownloadType()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/RequestItemBase;->getDownloadTypeByPriority(I)I

    move-result v0

    return v0
.end method

.method public abstract getItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestLimitAGroup()I
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 135
    iput v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->commitRetryTimes:I

    .line 136
    iput v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->kssRetryTimes:I

    .line 137
    iput v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 138
    iput-wide v2, p0, Lcom/miui/gallery/cloud/RequestItemBase;->retryAfter:J

    .line 139
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 140
    iput-object v1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->requestId:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->requestIds:Ljava/lang/String;

    .line 142
    iput-wide v2, p0, Lcom/miui/gallery/cloud/RequestItemBase;->mDownloadedSize:J

    .line 143
    iput-wide v2, p0, Lcom/miui/gallery/cloud/RequestItemBase;->mTotalSize:J

    .line 144
    iput-object v1, p0, Lcom/miui/gallery/cloud/RequestItemBase;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 145
    return-void
.end method

.method public abstract isInSameAlbum(Lcom/miui/gallery/cloud/RequestItemBase;)Z
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestItemBase;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 149
    return-void
.end method

.method public abstract supportMultiRequest()Z
.end method
