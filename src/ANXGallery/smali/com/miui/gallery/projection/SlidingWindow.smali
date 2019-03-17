.class Lcom/miui/gallery/projection/SlidingWindow;
.super Ljava/lang/Object;
.source "ConnectController.java"


# instance fields
.field private mCurrentIndex:I

.field private mCurrentIndexChanged:Z

.field private mEndIndex:I

.field private mFiles:[Ljava/lang/String;

.field private mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

.field private mStartIndex:I

.field private mTotalCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const/16 v0, 0x97

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    return-void
.end method

.method private doSlideWindow(I)V
    .locals 7
    .param p1, "indexSlideTo"    # I

    .prologue
    .line 782
    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    if-nez v4, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/miui/gallery/projection/SlidingWindow;->reset()V

    .line 806
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    .line 787
    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-gtz v4, :cond_1

    .line 788
    invoke-direct {p0}, Lcom/miui/gallery/projection/SlidingWindow;->reset()V

    goto :goto_0

    .line 791
    :cond_1
    add-int/lit8 v4, p1, -0x4b

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    .line 792
    add-int/lit8 v4, p1, 0x4b

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "bufferIndex":I
    iget v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    .local v1, "index":I
    :goto_1
    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    if-ge v1, v4, :cond_3

    .line 796
    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 797
    .local v2, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_2

    .line 798
    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 800
    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 801
    add-int/lit8 v0, v0, 0x1

    .line 795
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 805
    .end local v2    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_3
    const-string v4, "SlidingWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slideWindow, mStartIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mEndIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "index":I
    if-eqz p1, :cond_1

    .line 771
    iget-object v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 772
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    .line 778
    .end local v0    # "file":Ljava/lang/String;
    :goto_1
    return v2

    .line 775
    .restart local v0    # "file":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private isWindowDirty(I)Z
    .locals 3
    .param p1, "currentIndex"    # I

    .prologue
    const/16 v2, 0x32

    .line 832
    iget v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    sub-int v0, p1, v0

    if-lt v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    iget v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    iput v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    .line 690
    iput v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 692
    iput v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    .line 694
    return-void
.end method

.method private slideWindowTo(I)V
    .locals 4
    .param p1, "indexSlideTo"    # I

    .prologue
    .line 809
    iget-object v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    if-nez v1, :cond_1

    .line 810
    invoke-direct {p0}, Lcom/miui/gallery/projection/SlidingWindow;->reset()V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    .line 814
    .local v0, "count":I
    if-gtz v0, :cond_2

    .line 815
    invoke-direct {p0}, Lcom/miui/gallery/projection/SlidingWindow;->reset()V

    goto :goto_0

    .line 818
    :cond_2
    if-gez p1, :cond_5

    .line 819
    const/4 p1, 0x0

    .line 824
    :cond_3
    :goto_1
    iget v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    iget v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    iget v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 826
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->isWindowDirty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->doSlideWindow(I)V

    goto :goto_0

    .line 821
    :cond_5
    if-lt p1, v0, :cond_3

    .line 822
    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getNext(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isRecyle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 728
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    if-eqz v3, :cond_0

    .line 729
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    .line 730
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/miui/gallery/projection/SlidingWindow;->slideWindowTo(I)V

    .line 732
    :cond_0
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-lez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 765
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 736
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 737
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 738
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    sub-int v0, v3, v4

    .line 753
    :cond_3
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 754
    .local v1, "next":I
    if-eqz p2, :cond_7

    .line 755
    iget-object v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 756
    const/4 v1, 0x0

    .line 763
    :cond_4
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNext: next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    aget-object v2, v2, v1

    goto :goto_0

    .line 740
    .end local v1    # "next":I
    :cond_5
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    .line 741
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-ge v3, v4, :cond_6

    .line 742
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mEndIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/miui/gallery/projection/SlidingWindow;->slideWindowTo(I)V

    .line 743
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 745
    :cond_6
    if-eqz p2, :cond_1

    .line 746
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/miui/gallery/projection/SlidingWindow;->slideWindowTo(I)V

    .line 747
    const/4 v0, -0x1

    goto :goto_1

    .line 759
    .restart local v1    # "next":I
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v3, :cond_4

    goto :goto_0

    .line 728
    .end local v0    # "index":I
    .end local v1    # "next":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPrevious(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isRecyle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 697
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    if-eqz v3, :cond_0

    .line 698
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    .line 699
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/miui/gallery/projection/SlidingWindow;->slideWindowTo(I)V

    .line 701
    :cond_0
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mTotalCount:I

    if-lez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 705
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 706
    .local v0, "index":I
    if-nez v0, :cond_3

    .line 707
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    invoke-direct {p0, v3}, Lcom/miui/gallery/projection/SlidingWindow;->slideWindowTo(I)V

    .line 708
    invoke-direct {p0, p1}, Lcom/miui/gallery/projection/SlidingWindow;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 710
    :cond_3
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 711
    iget v3, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    iget v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mStartIndex:I

    sub-int v0, v3, v4

    .line 712
    :cond_4
    add-int/lit8 v1, v0, -0x1

    .line 713
    .local v1, "pre":I
    if-eqz p2, :cond_6

    .line 714
    if-gez v1, :cond_5

    .line 715
    iget-object v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 722
    :cond_5
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrevious: pre="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/miui/gallery/projection/SlidingWindow;->mFiles:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    :cond_6
    if-gez v1, :cond_5

    goto :goto_0

    .line 697
    .end local v0    # "index":I
    .end local v1    # "pre":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onCurrentIndexChanged(I)V
    .locals 2
    .param p1, "currentIndex"    # I

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    iget v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndexChanged:Z

    .line 838
    iput p1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    monitor-exit p0

    return-void

    .line 837
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMediaSet(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_3

    .line 681
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eq v0, p1, :cond_2

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/projection/SlidingWindow;->reset()V

    .line 684
    :cond_2
    iput-object p1, p0, Lcom/miui/gallery/projection/SlidingWindow;->mMediaSet:Lcom/miui/gallery/model/BaseDataSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_3
    monitor-exit p0

    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
