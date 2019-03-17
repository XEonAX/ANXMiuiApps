.class public Lcom/miui/gallery/ui/AlbumPageListFaceItem;
.super Lcom/miui/gallery/ui/AlbumPageListItemBase;
.source "AlbumPageListFaceItem.java"


# static fields
.field private static sAlbumCovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f1200ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f1200ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f1200ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    const v1, 0x7f1200af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageListItemBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 77
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v4, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindFaceImage(Ljava/lang/String;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Z)V

    .line 78
    return-void
.end method

.method private buildDisplayFaceOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 2
    .param p1, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    .param p2, "coverSize"    # J

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    goto :goto_0
.end method

.method private getDownloadUri(JI)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J
    .param p3, "syncState"    # I

    .prologue
    .line 73
    if-nez p3, :cond_0

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private parseCoverRect(Ljava/lang/String;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 9
    .param p1, "faceRect"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "rectInfo":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 89
    .local v1, "faceX":F
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 90
    .local v2, "faceY":F
    const/4 v0, 0x2

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 91
    .local v7, "faceW":F
    const/4 v0, 0x3

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 92
    .local v6, "faceH":F
    const/4 v0, 0x4

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "orientation":I
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    add-float v3, v1, v7

    add-float v4, v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    return-object v0
.end method

.method private setDefaultCover()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public bindImageAndAlbumCount(Landroid/os/Bundle;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "builder"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .prologue
    .line 44
    const/4 v7, 0x0

    .line 45
    .local v7, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/FaceAlbumCover;>;"
    if-eqz p1, :cond_0

    .line 46
    const-class v0, Lcom/miui/gallery/model/FaceAlbumCover;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 47
    const-string v0, "face_album_cover"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    if-nez v7, :cond_2

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->setDefaultCover()V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->mAlbumPhotoCount:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 53
    :cond_2
    const/4 v8, 0x0

    .line 54
    .local v8, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    const/4 v0, 0x4

    if-ge v8, v0, :cond_3

    .line 55
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/model/FaceAlbumCover;

    .line 56
    .local v6, "cover":Lcom/miui/gallery/model/FaceAlbumCover;
    iget-object v0, v6, Lcom/miui/gallery/model/FaceAlbumCover;->faceRect:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->parseCoverRect(Ljava/lang/String;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v5

    .line 58
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v8}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/gallery/model/FaceAlbumCover;->coverPath:Ljava/lang/String;

    iget-wide v10, v6, Lcom/miui/gallery/model/FaceAlbumCover;->coverId:J

    iget v0, v6, Lcom/miui/gallery/model/FaceAlbumCover;->coverSyncState:I

    .line 59
    invoke-direct {p0, v10, v11, v0}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->getDownloadUri(JI)Landroid/net/Uri;

    move-result-object v3

    iget-wide v10, v6, Lcom/miui/gallery/model/FaceAlbumCover;->coverSize:J

    .line 60
    invoke-direct {p0, p2, v10, v11}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->buildDisplayFaceOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;)V

    .line 54
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 63
    .end local v5    # "rect":Landroid/graphics/RectF;
    .end local v6    # "cover":Lcom/miui/gallery/model/FaceAlbumCover;
    :cond_3
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 64
    move v9, v8

    .local v9, "j":I
    :goto_2
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->sAlbumCovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 65
    invoke-direct {p0, v9}, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 68
    .end local v9    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListFaceItem;->mAlbumPhotoCount:Landroid/widget/TextView;

    const-string v1, "face_album_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
