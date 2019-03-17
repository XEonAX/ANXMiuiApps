.class public Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;,
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;,
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;,
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoader;,
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;
    }
.end annotation


# instance fields
.field private mApdater:Landroid/widget/BaseAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

.field private mStorageDetail:Landroid/widget/TextView;

.field private mStorageFrame:Landroid/view/View;

.field private mUsedPercent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    .line 243
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->refresh(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V

    return-void
.end method

.method private refresh(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
    .locals 12
    .param p1, "refreshData"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;

    .prologue
    .line 76
    const-string v7, "CloudSpaceStatusFragment"

    const-string v8, "refresh %s"

    invoke-static {v7, v8, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "progress":F
    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mLeftCloudSpace:J

    iget-wide v10, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 81
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget-wide v10, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mLeftCloudSpace:J

    long-to-float v10, v10

    mul-float/2addr v9, v10

    iget-wide v10, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 82
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    invoke-virtual {v7, v2}, Lcom/miui/gallery/widget/ColorRingProgress;->setProgress(F)V

    .line 83
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mUsedPercent:Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mLeftCloudSpace:J

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "leftStorage":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mTotalCloudSpace:J

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "totalStorage":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mStorageDetail:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 90
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 91
    new-instance v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    .line 92
    .local v1, "photoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    const v7, 0x7f0c0101

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mTitle:Ljava/lang/String;

    .line 93
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedPhotoSize:J

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendTitle:Ljava/lang/String;

    .line 94
    const v7, 0x7f0e0012

    iget v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedPhotoCount:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedPhotoCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mValue:Ljava/lang/String;

    .line 96
    new-instance v6, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    .line 97
    .local v6, "videoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    const v7, 0x7f0c0104

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mTitle:Ljava/lang/String;

    .line 98
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-wide v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedVideoSize:J

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendTitle:Ljava/lang/String;

    .line 99
    const v7, 0x7f0e0013

    iget v8, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedVideoCount:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mSyncedVideoCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mValue:Ljava/lang/String;

    .line 101
    new-instance v4, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    .line 102
    .local v4, "storageItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    const v7, 0x7f0c00fd

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mTitle:Ljava/lang/String;

    .line 103
    iget-boolean v7, p1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;->mIsSpaceLow:Z

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    const v8, 0x7f1000da

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/widget/ColorRingProgress;->setBackgroundColor(I)V

    .line 105
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mStorageFrame:Landroid/view/View;

    const v8, 0x7f1000df

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    :goto_0
    new-instance v7, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;

    invoke-direct {v7, p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;)V

    iput-object v7, v4, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 117
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mIsShowArrow:Z

    .line 119
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mApdater:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 125
    .end local v0    # "leftStorage":Ljava/lang/String;
    .end local v1    # "photoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    .end local v2    # "progress":F
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "storageItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    .end local v5    # "totalStorage":Ljava/lang/String;
    .end local v6    # "videoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    :cond_1
    return-void

    .line 107
    .restart local v0    # "leftStorage":Ljava/lang/String;
    .restart local v1    # "photoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    .restart local v2    # "progress":F
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "storageItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    .restart local v5    # "totalStorage":Ljava/lang/String;
    .restart local v6    # "videoItem":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    const v8, 0x7f1000d9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/widget/ColorRingProgress;->setBackgroundColor(I)V

    .line 108
    iget-object v7, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mStorageFrame:Landroid/view/View;

    const v8, 0x7f1000de

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "cloud_space_status"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f110013

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$SpaceStatusLoaderCallBack;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 72
    const-string v0, "Sync"

    const-string/jumbo v1, "sync_cloud_space_status"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->setHasOptionsMenu(Z)V

    .line 47
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x7f04004e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mStorageFrame:Landroid/view/View;

    .line 58
    const v1, 0x7f120110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/ColorRingProgress;

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

    .line 59
    const v1, 0x7f120112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mUsedPercent:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f120113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mStorageDetail:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mListView:Landroid/widget/ListView;

    .line 63
    new-instance v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mDataList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mApdater:Landroid/widget/BaseAdapter;

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->mApdater:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-object v0
.end method
