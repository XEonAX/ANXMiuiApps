.class public Lcom/miui/gallery/card/Card$Builder;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseColor:I

.field private final mContext:Landroid/content/Context;

.field private mCoverMediaFeatureItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateBy:I

.field private mCreateTime:J

.field private mDeletable:Z

.field private mDescription:Ljava/lang/String;

.field private mDetailUrl:Ljava/lang/String;

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsIgnored:Z

.field private mIsSyncable:Z

.field private mIsTop:Z

.field private mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

.field private mScenarioId:I

.field private mSelectedMediaSha1s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServerId:Ljava/lang/String;

.field private mServerTag:J

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

.field private mUpdateTime:J

.field private mValidEndTime:J

.field private mValidStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-boolean v0, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    .line 684
    iput v2, p0, Lcom/miui/gallery/card/Card$Builder;->mType:I

    .line 691
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    .line 692
    iput-boolean v0, p0, Lcom/miui/gallery/card/Card$Builder;->mIsSyncable:Z

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/card/Card$Builder;->mValidStartTime:J

    .line 694
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/miui/gallery/card/Card$Builder;->mValidEndTime:J

    .line 695
    iput-boolean v2, p0, Lcom/miui/gallery/card/Card$Builder;->mIsTop:Z

    .line 704
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mContext:Landroid/content/Context;

    .line 705
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/gallery/card/Card;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 842
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const-string v1, "Card"

    const-string/jumbo v3, "the title must not be empty."

    invoke-static {v1, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    new-instance v0, Lcom/miui/gallery/card/Card;

    invoke-direct {v0, v2}, Lcom/miui/gallery/card/Card;-><init>(Lcom/miui/gallery/card/Card$1;)V

    .line 846
    .local v0, "card":Lcom/miui/gallery/card/Card;
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$102(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$202(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDetailUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$302(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$402(Lcom/miui/gallery/card/Card;Z)Z

    .line 850
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mBaseColor:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$502(Lcom/miui/gallery/card/Card;I)I

    .line 851
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$602(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 852
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$702(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;)Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .line 853
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$802(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageUri:Landroid/net/Uri;

    .line 855
    invoke-static {v1}, Lcom/miui/gallery/card/Card;->access$1000(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 854
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$902(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;

    .line 857
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mAllMediaSha1s:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1102(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 858
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mSelectedMediaSha1s:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1202(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 859
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mCoverMediaFeatureItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1302(Lcom/miui/gallery/card/Card;Ljava/util/List;)Ljava/util/List;

    .line 860
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mScenarioId:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1402(Lcom/miui/gallery/card/Card;I)I

    .line 861
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1502(Lcom/miui/gallery/card/Card;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mServerTag:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$1602(Lcom/miui/gallery/card/Card;J)J

    .line 863
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateBy:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$1702(Lcom/miui/gallery/card/Card;I)I

    .line 864
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateTime:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$1802(Lcom/miui/gallery/card/Card;J)J

    .line 865
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mUpdateTime:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$1902(Lcom/miui/gallery/card/Card;J)J

    .line 866
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$2002(Lcom/miui/gallery/card/Card;Z)Z

    .line 867
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsSyncable:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$2102(Lcom/miui/gallery/card/Card;Z)Z

    .line 868
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mValidStartTime:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$2202(Lcom/miui/gallery/card/Card;J)J

    .line 869
    iget-wide v2, p0, Lcom/miui/gallery/card/Card$Builder;->mValidEndTime:J

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/card/Card;->access$2302(Lcom/miui/gallery/card/Card;J)J

    .line 870
    iget-boolean v1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsTop:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$2402(Lcom/miui/gallery/card/Card;Z)Z

    .line 871
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageResId:I

    if-lez v1, :cond_1

    .line 872
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/card/Card$Builder;->mImageResId:I

    invoke-static {v1, v2}, Lcom/miui/gallery/card/Card;->convertResIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$902(Lcom/miui/gallery/card/Card;Landroid/net/Uri;)Landroid/net/Uri;

    .line 874
    :cond_1
    iget v1, p0, Lcom/miui/gallery/card/Card$Builder;->mType:I

    invoke-static {v0, v1}, Lcom/miui/gallery/card/Card;->access$2502(Lcom/miui/gallery/card/Card;I)I

    .line 875
    return-object v0

    .line 853
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 855
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .line 856
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public setAllMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "allMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mAllMediaSha1s:Ljava/util/List;

    .line 764
    return-object p0
.end method

.method public setCoverMediaFeatureItems(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mCoverMediaFeatureItems:Ljava/util/List;

    .line 775
    return-object p0
.end method

.method public setCreateBy(I)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "createBy"    # I

    .prologue
    .line 794
    iput p1, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateBy:I

    .line 795
    return-object p0
.end method

.method public setCreateTime(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 799
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mCreateTime:J

    .line 800
    return-object p0
.end method

.method public setDeletable(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 748
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDeletable:Z

    .line 749
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDescription:Ljava/lang/String;

    .line 715
    return-object p0
.end method

.method public setDetailUrl(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mDetailUrl:Ljava/lang/String;

    .line 720
    return-object p0
.end method

.method public setImageUri(Landroid/net/Uri;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mImageUri:Landroid/net/Uri;

    .line 726
    return-object p0
.end method

.method public setIsIgnored(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "isIgnored"    # Z

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsIgnored:Z

    .line 810
    return-object p0
.end method

.method public setOperationInfo(Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "operationInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mOperationInfo:Lcom/miui/gallery/cloud/card/model/CardInfo$OperationInfo;

    .line 820
    return-object p0
.end method

.method public setScenarioId(I)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "scenarioId"    # I

    .prologue
    .line 779
    iput p1, p0, Lcom/miui/gallery/card/Card$Builder;->mScenarioId:I

    .line 780
    return-object p0
.end method

.method public setSelectedMediaSha1s(Ljava/util/List;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/card/Card$Builder;"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "selectedMediaSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mSelectedMediaSha1s:Ljava/util/List;

    .line 770
    return-object p0
.end method

.method public setServerId(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerId:Ljava/lang/String;

    .line 785
    return-object p0
.end method

.method public setServerTag(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 1
    .param p1, "serverTag"    # J

    .prologue
    .line 789
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mServerTag:J

    .line 790
    return-object p0
.end method

.method public setSyncable(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "syncable"    # Z

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsSyncable:Z

    .line 815
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mTitle:Ljava/lang/String;

    .line 710
    return-object p0
.end method

.method public setTop(Z)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "top"    # Z

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/miui/gallery/card/Card$Builder;->mIsTop:Z

    .line 838
    return-object p0
.end method

.method public setType(I)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 753
    iput p1, p0, Lcom/miui/gallery/card/Card$Builder;->mType:I

    .line 754
    return-object p0
.end method

.method public setUniqueKey(Lcom/miui/gallery/card/scenario/Record$UniqueKey;)Lcom/miui/gallery/card/Card$Builder;
    .locals 0
    .param p1, "uniqueKey"    # Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/miui/gallery/card/Card$Builder;->mUniqueKey:Lcom/miui/gallery/card/scenario/Record$UniqueKey;

    .line 759
    return-object p0
.end method

.method public setUpdateTime(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 804
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mUpdateTime:J

    .line 805
    return-object p0
.end method

.method public setValidEndTime(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 3
    .param p1, "validEndTime"    # J

    .prologue
    .line 829
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 830
    const-wide p1, 0x7fffffffffffffffL

    .line 832
    :cond_0
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mValidEndTime:J

    .line 833
    return-object p0
.end method

.method public setValidStartTime(J)Lcom/miui/gallery/card/Card$Builder;
    .locals 1
    .param p1, "validStartTime"    # J

    .prologue
    .line 824
    iput-wide p1, p0, Lcom/miui/gallery/card/Card$Builder;->mValidStartTime:J

    .line 825
    return-object p0
.end method
