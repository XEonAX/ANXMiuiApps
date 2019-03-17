.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaAdapter;
.source "StoryAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/adapter/BaseMediaAdapter",
        "<",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exifImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exifImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "exifOrientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapter;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 80
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 81
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0201a9

    .line 82
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 87
    return-void
.end method

.method private updateLayoutParams(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 1
    .param p1, "lp"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .param p2, "size"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setHeight(I)V

    .line 101
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setWidth(I)V

    .line 103
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setFlexGrow(F)V

    .line 104
    return-void
.end method


# virtual methods
.method public doBindViewHolder(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 132
    iget-object v1, p1, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;

    .line 133
    .local v1, "recyclerViewItem":Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;
    const v3, 0x7f120022

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->setTag(ILjava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-virtual {v3, p2}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getLayoutSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v2

    .line 135
    .local v2, "size":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-virtual {v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 138
    invoke-virtual {v1}, Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-eqz v3, :cond_0

    .line 140
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->updateLayoutParams(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 142
    :cond_0
    return-void
.end method

.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getOriginFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMicroThumbFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemDecodeRectF(I)Landroid/graphics/RectF;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->moveCursorToPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumViewHolder;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040150

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->onViewRecycled(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 109
    return-void
.end method

.method public updateLayoutSizes(Ljava/util/List;II)V
    .locals 1
    .param p2, "parentWidth"    # I
    .param p3, "itemDecoration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "imageSizes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-direct {v0}, Lcom/miui/gallery/card/core/LayoutParamsHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->mLayoutParamsHelper:Lcom/miui/gallery/card/core/LayoutParamsHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->updateLayoutSizes(Ljava/util/List;II)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
