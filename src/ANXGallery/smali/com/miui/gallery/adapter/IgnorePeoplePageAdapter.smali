.class public Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "IgnorePeoplePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;,
        Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;
    }
.end annotation


# instance fields
.field private mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;)Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    .line 57
    .local v0, "item":Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 58
    .local v6, "position":I
    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->bindData(Landroid/database/Cursor;)V

    .line 59
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 61
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 62
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v4

    .line 63
    invoke-static {p3}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailDownloadType(Landroid/database/Cursor;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 64
    return-void
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailDownloadUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getCoverSize(Landroid/database/Cursor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected initDisplayImageOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 33
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0200df

    .line 37
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 39
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 44
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    iget-object v2, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;-><init>(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method public setRecoveryListener(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->mRecoveryListener:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    .line 86
    return-void
.end method
