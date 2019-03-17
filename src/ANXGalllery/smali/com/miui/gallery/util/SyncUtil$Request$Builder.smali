.class public Lcom/miui/gallery/util/SyncUtil$Request$Builder;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/SyncUtil$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsDelayUpload:Z

.field private mIsManual:Z

.field private mSyncReason:I

.field private mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    .prologue
    .line 430
    iget v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncReason:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsDelayUpload:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/SyncUtil$Request$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsManual:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/miui/gallery/util/SyncUtil$Request;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Lcom/miui/gallery/util/SyncUtil$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/util/SyncUtil$Request;-><init>(Lcom/miui/gallery/util/SyncUtil$Request$Builder;Lcom/miui/gallery/util/SyncUtil$1;)V

    return-object v0
.end method

.method public cloneFrom(Lcom/miui/gallery/util/SyncUtil$Request;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .locals 1
    .param p1, "request"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 458
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncReason()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncReason:I

    .line 459
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->isDelayUpload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsDelayUpload:Z

    .line 460
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->isManual()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsManual:Z

    .line 461
    return-object p0
.end method

.method public setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .locals 0
    .param p1, "delayUpload"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsDelayUpload:Z

    .line 453
    return-object p0
.end method

.method public setManual(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .locals 0
    .param p1, "manual"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mIsManual:Z

    .line 448
    return-object p0
.end method

.method public setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncReason:I

    .line 443
    return-object p0
.end method

.method public setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;
    .locals 0
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->mSyncType:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 438
    return-object p0
.end method
