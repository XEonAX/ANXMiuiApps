.class public Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;
.super Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
.source "BabyAlbumDetailTimeLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    }
.end annotation


# instance fields
.field private mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .line 44
    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;)Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    return-object v0
.end method

.method private setBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .param p3, "sharerInfoStr"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$802(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/cloud/baby/BabyInfo;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$902(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 134
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1002(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$1100(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public firstBindHeaderPic(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$500(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)Z

    move-result v0

    .line 100
    .local v0, "successful":Z
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v1, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$600(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Landroid/database/Cursor;)V

    .line 103
    :cond_0
    return-void
.end method

.method public getFaceImageOfFaceHeaderItem()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c9

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 120
    .local v1, "iconSize":I
    iget-object v2, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->getFaceImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v1, v3}, Lcom/miui/gallery/util/CropUtil;->cropImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "icon":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040028

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 54
    .local v3, "location":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 55
    iget-object v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "location":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 56
    .restart local v3    # "location":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 59
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 60
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .local v0, "createTime":J
    move-object v4, p2

    .line 61
    check-cast v4, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;

    iget-object v5, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    .line 62
    invoke-static {v5, v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$000(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;J)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v0, v1, v3, v5}, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->bindData(JLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object p2
.end method

.method public gotoBabyInfoSettingPage(Z)V
    .locals 1
    .param p1, "isOtherShared"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$200(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Z)V

    .line 88
    return-void
.end method

.method public rebindHeaderPic(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$700(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public resetBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V
    .locals 1
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImage()V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$100(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public setAlbumId(J)V
    .locals 1
    .param p1, "localId"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$302(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;J)J

    .line 92
    return-void
.end method

.method public setFaceHeader(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 2
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .param p3, "sharerInfoStr"    # Ljava/lang/String;
    .param p4, "faceHeader"    # Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;
    .param p5, "gotoPickHeaderBackgroundMaskView"    # Landroid/view/View;
    .param p6, "l"    # Landroid/view/View$OnClickListener;
    .param p7, "isOtherShared"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iput-object p4, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->setFaceImage()V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$100(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    new-instance v1, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$1;

    invoke-direct {v1, p0, p7}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$1;-><init>(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;Z)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->setOnFaceClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    iget-object v0, v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->mFaceHeaderItem:Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    .line 83
    invoke-virtual {v0, p6}, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;->setOnBackgroundClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public setPeopleServerId(Ljava/lang/String;)V
    .locals 1
    .param p1, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->mFaceHeaderHelper:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;->access$402(Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter$FaceHeaderHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    return-void
.end method
