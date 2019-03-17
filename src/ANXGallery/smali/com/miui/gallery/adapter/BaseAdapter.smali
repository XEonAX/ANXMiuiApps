.class public abstract Lcom/miui/gallery/adapter/BaseAdapter;
.super Landroid/widget/CursorAdapter;
.source "BaseAdapter.java"


# static fields
.field private static sMainMicroFolder:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/BaseAdapter;->sMainMicroFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAdapter;->initDisplayImageOptions()V

    .line 33
    return-void
.end method

.method protected static getDownloadUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "syncStatus"    # I
    .param p1, "id"    # J

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getDownloadUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 131
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static getDownloadUri(Landroid/database/Cursor;I)Landroid/net/Uri;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "idIndex"    # I

    .prologue
    .line 120
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/BaseAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "syncStateIndex"    # I
    .param p2, "idIndex"    # I

    .prologue
    .line 116
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/adapter/BaseAdapter;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "microIndex"    # I
    .param p2, "sha1Index"    # I

    .prologue
    .line 108
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "microThumb":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 110
    sget-object v1, Lcom/miui/gallery/adapter/BaseAdapter;->sMainMicroFolder:Ljava/lang/String;

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method private isValidPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCursorByPosition(I)Landroid/database/Cursor;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;->isValidPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong cursor position %d, total count %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;->getFileLength(I)J

    move-result-wide v0

    .line 44
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 50
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method protected getDisplayImageSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method protected getDisplayScaleType(I)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 37
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 40
    return-void
.end method

.method public isFavorite(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
