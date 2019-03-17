.class public Lcom/miui/gallery/util/SyncUtil$Request;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/SyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    }
.end annotation


# instance fields
.field private mIsDelayUpload:Z

.field private mIsManual:Z

.field private mSyncReason:I

.field private mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    iput-object v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 387
    iput v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncReason:I

    .line 391
    iput-boolean v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsDelayUpload:Z

    .line 398
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->access$100(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 399
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->access$200(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncReason:I

    .line 400
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->access$300(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsDelayUpload:Z

    .line 401
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->access$400(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsManual:Z

    .line 402
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/SyncUtil$Request$Builder;Lcom/miui/gallery/util/SyncUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/util/SyncUtil$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/SyncUtil$Request;-><init>(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)V

    return-void
.end method


# virtual methods
.method public getSyncReason()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncReason:I

    return v0
.end method

.method public getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method

.method public isDelayUpload()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsDelayUpload:Z

    return v0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsManual:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request {syncType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mSyncReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsDelayUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/util/SyncUtil$Request;->mIsManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
