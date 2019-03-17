.class Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "CleanerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CleanerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanResultDiffCallback"
.end annotation


# instance fields
.field private mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/ScanResult;>;"
    .local p3, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/ScanResult;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    .line 485
    iput-object p3, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    .line 486
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 5
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 519
    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 520
    :cond_0
    const-wide/16 v2, 0x0

    .line 526
    .local v2, "sizeOld":J
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p2, v4, :cond_3

    .line 527
    :cond_1
    const-wide/16 v0, 0x0

    .line 531
    .local v0, "sizeNew":J
    :goto_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 522
    .end local v0    # "sizeNew":J
    .end local v2    # "sizeOld":J
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cleaner/ScanResult;

    invoke-virtual {v4}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v2

    .restart local v2    # "sizeOld":J
    goto :goto_0

    .line 529
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cleaner/ScanResult;

    invoke-virtual {v4}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v0

    .restart local v0    # "sizeNew":J
    goto :goto_1

    .line 531
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .prologue
    .line 501
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 502
    :cond_0
    const/4 v1, -0x1

    .line 508
    .local v1, "typeOld":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_3

    .line 509
    :cond_1
    const/4 v0, -0x1

    .line 513
    .local v0, "typeNew":I
    :goto_1
    if-ne v1, v0, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 504
    .end local v0    # "typeNew":I
    .end local v1    # "typeOld":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cleaner/ScanResult;

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScanResult;->getType()I

    move-result v1

    .restart local v1    # "typeOld":I
    goto :goto_0

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cleaner/ScanResult;

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScanResult;->getType()I

    move-result v0

    .restart local v0    # "typeNew":I
    goto :goto_1

    .line 513
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getNewListSize()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOldListSize()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
