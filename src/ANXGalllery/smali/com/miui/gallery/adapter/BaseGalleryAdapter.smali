.class public abstract Lcom/miui/gallery/adapter/BaseGalleryAdapter;
.super Lcom/miui/gallery/adapter/BaseRecyclerAdapter;
.source "BaseGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/miui/gallery/widget/recyclerview/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/BaseRecyclerAdapter",
        "<TM;TVH;>;"
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
    .line 20
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->sMainMicroFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BaseRecyclerAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->initDisplayImageOptions()V

    .line 26
    return-void
.end method

.method protected static getDownloadUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "syncStatus"    # I
    .param p1, "id"    # J

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    invoke-static {p1, p2}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 81
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
    .line 85
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->getFileLength(I)J

    move-result-wide v0

    .line 37
    .local v0, "fileLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 43
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    goto :goto_0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileLength(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDisplayImageOptions()V
    .locals 2

    .prologue
    .line 29
    .local p0, "this":Lcom/miui/gallery/adapter/BaseGalleryAdapter;, "Lcom/miui/gallery/adapter/BaseGalleryAdapter<TM;TVH;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 30
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mDisplayImageOptionBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/BaseGalleryAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 33
    return-void
.end method
