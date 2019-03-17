.class public Lcom/miui/gallery/adapter/PeoplePageAdapter;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "PeoplePageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;


# instance fields
.field private mCheckable:Z

.field private mUserDefineRelationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/PeoplePageGridItem;

    .line 61
    .local v0, "item":Lcom/miui/gallery/ui/PeoplePageGridItem;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 62
    .local v10, "position":I
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v10}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v10}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 65
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v4

    .line 66
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailDownloadType(Landroid/database/Cursor;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PeoplePageGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 67
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "name":Ljava/lang/String;
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "peopleServerId":Ljava/lang/String;
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 70
    .local v8, "peopleLocalId":J
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0, v6}, Lcom/miui/gallery/ui/PeoplePageGridItem;->setName(Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-virtual {v0, v8, v9, v7}, Lcom/miui/gallery/ui/PeoplePageGridItem;->saveIds2Tag(JLjava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mCheckable:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PeoplePageGridItem;->setCheckable(Z)V

    .line 78
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0339

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PeoplePageGridItem;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enterChoiceMode()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mCheckable:Z

    .line 175
    return-void
.end method

.method public exitChoiceMode()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mCheckable:Z

    .line 185
    return-void
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailDownloadUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFaceRegionRectF(I)Landroid/graphics/RectF;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getCoverSize(Landroid/database/Cursor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getHeaderId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTypeOfItem(I)I

    move-result v2

    .line 126
    .local v2, "relationType":I
    invoke-static {v2}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "relationIndex":I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTextOfItem(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "relationText":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mUserDefineRelationMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mUserDefineRelationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mUserDefineRelationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    :cond_0
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationTypesCount()I

    move-result v3

    add-int/2addr v3, v0

    int-to-long v4, v3

    .line 134
    .end local v0    # "relationIndex":I
    .end local v1    # "relationText":Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_1
    int-to-long v4, v2

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    if-nez p2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTypeOfItem(I)I

    move-result v1

    .line 145
    .local v1, "relationType":I
    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getRelationTextOfItem(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "relationShow":Ljava/lang/String;
    :goto_0
    move-object v2, p2

    .line 150
    check-cast v2, Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;->bindData(Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->isUnKnownRelation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    new-instance v2, Lcom/miui/gallery/adapter/PeoplePageAdapter$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/adapter/PeoplePageAdapter$1;-><init>(Lcom/miui/gallery/adapter/PeoplePageAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_1
    return-object p2

    .line 148
    .end local v0    # "relationShow":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationShow(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "relationShow":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPeopleIdOfItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleLocalIdOfItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelationTextOfItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelationTypeOfItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getRelationType(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initDisplayImageOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 39
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200df

    .line 43
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 45
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 50
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setUserDefineRelationMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/miui/gallery/adapter/PeoplePageAdapter;->mUserDefineRelationMap:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
