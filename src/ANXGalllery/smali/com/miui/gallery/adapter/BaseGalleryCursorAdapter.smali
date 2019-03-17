.class public abstract Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;
.super Lcom/miui/gallery/adapter/CursorRecyclerAdapter;
.source "BaseGalleryCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/CursorRecyclerAdapter",
        "<TVH;>;"
    }
.end annotation


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
    .line 24
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->sMainMicroFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    invoke-direct {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->initDisplayImageOptions()V

    .line 30
    return-void
.end method

.method protected static getDownloadUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "syncStatus"    # I
    .param p1, "id"    # J

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 101
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
    .line 105
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "syncStateIndex"    # I
    .param p2, "idIndex"    # I

    .prologue
    .line 90
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->getDownloadUri(IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "microIndex"    # I
    .param p2, "sha1Index"    # I

    .prologue
    .line 82
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "microThumb":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 84
    sget-object v1, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->sMainMicroFolder:Ljava/lang/String;

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailNameBySha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter<TVH;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 34
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryCursorAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 37
    return-void
.end method
